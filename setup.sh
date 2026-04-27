#!/usr/bin/env bash

###############################################################################
#                            Minimal E-commerce Setup                         #
###############################################################################

# Colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m" # No Color

echo -e "${BLUE}=================================================================${NC}"
echo -e "${BLUE}        Minimal E-commerce - Automatic Project Setup             ${NC}"
echo -e "${BLUE}=================================================================${NC}"

set -e

echo -e "${YELLOW}Step 1/6:${NC} Installing/updating PHP dependencies with composer..."
if command -v composer >/dev/null 2>&1; then
  composer update
  echo -e "${GREEN}Composer dependencies installed/updated successfully.${NC}"
else
  echo -e "${RED}Error:${NC} composer is not installed or not in PATH."
  echo -e "Please install Composer and run this script again."
  exit 1
fi

echo -e "${YELLOW}Step 2/6:${NC} Preparing environment file..."
if [ -f ".env" ]; then
  echo -e "${GREEN}.env already exists. Skipping copy from .env.example.${NC}"
else
  if [ -f ".env.example" ]; then
    cp .env.example .env
    echo -e "${GREEN}Copied .env.example to .env.${NC}"
  else
    echo -e "${RED}Error:${NC} .env.example not found. Cannot create .env."
    exit 1
  fi
fi

echo -e "${YELLOW}Step 3/6:${NC} Generating application key..."
if command -v php >/dev/null 2>&1; then
  php artisan key:generate --force
  echo -e "${GREEN}Application key generated successfully.${NC}"
else
  echo -e "${RED}Error:${NC} php is not installed or not in PATH."
  exit 1
fi

echo -e "${YELLOW}Step 4/6:${NC} Creating storage symlink..."
php artisan storage:link || {
  echo -e "${RED}Failed to create storage link. Please check permissions manually.${NC}"
}

echo -e "${YELLOW}Step 5/6:${NC} Database configuration.${NC}"
read -rp "Enter database host [localhost]: " DB_HOST
DB_HOST=${DB_HOST:-localhost}

read -rp "Enter database name: " DB_NAME
if [ -z "$DB_NAME" ]; then
  echo -e "${RED}Database name cannot be empty.${NC}"
  exit 1
fi

read -rp "Enter database username [root]: " DB_USER
DB_USER=${DB_USER:-root}

read -srp "Enter database password (leave empty for no password): " DB_PASS
echo ""

echo -e "${YELLOW}Updating .env with provided database credentials...${NC}"

update_env_var() {
  local key="$1"
  local value="$2"
  if grep -q "^${key}=" .env; then
    # Escape forward slashes in value for sed
    local escaped_value
    escaped_value=$(printf '%s\n' "$value" | sed 's/[\/&]/\\&/g')
    sed -i "s/^${key}=.*/${key}=${escaped_value}/" .env
  else
    echo "${key}=${value}" >> .env
  fi
}

update_env_var "DB_HOST" "$DB_HOST"
update_env_var "DB_DATABASE" "$DB_NAME"
update_env_var "DB_USERNAME" "$DB_USER"
update_env_var "DB_PASSWORD" "$DB_PASS"

echo -e "${GREEN}.env database configuration updated.${NC}"

echo -e "${YELLOW}Step 6/6:${NC} Importing dummy database (dummy-database.sql)..."

SQL_FILE="dummy-database.sql"
if [ ! -f "$SQL_FILE" ]; then
  echo -e "${RED}Error:${NC} ${SQL_FILE} not found in the project root."
  echo -e "Place the SQL dump in the project root as ${SQL_FILE} and run this step manually:"
  echo -e "  mysql -h ${DB_HOST} -u ${DB_USER} -p${DB_PASS} ${DB_NAME} < ${SQL_FILE}"
else
  # Build mysql command
  if [ -z "$DB_PASS" ]; then
    MYSQL_CMD=(mysql -h "$DB_HOST" -u "$DB_USER" "$DB_NAME")
  else
    MYSQL_CMD=(mysql -h "$DB_HOST" -u "$DB_USER" "-p${DB_PASS}" "$DB_NAME")
  fi

  if "${MYSQL_CMD[@]}" < "$SQL_FILE"; then
    echo -e "${GREEN}Dummy database imported successfully.${NC}"
  else
    echo -e "${RED}Failed to import dummy database.${NC}"
    echo -e "You can try manually with:"
    echo -e "  mysql -h ${DB_HOST} -u ${DB_USER} -p${DB_PASS} ${DB_NAME} < ${SQL_FILE}"
  fi
fi

echo -e "${GREEN}All done! Your Minimal E-commerce project is now set up.${NC}"