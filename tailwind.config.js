/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './resources/**/*.blade.php',
        './resources/**/*.js',
        './resources/**/*.vue',
    ],

    // -------------------------------------------------------
    // IMPORTANT: corePlugins.preflight = false
    // Bootstrap ships its own normalize/base reset. We disable
    // Tailwind's preflight so the two resets don't fight and
    // Bootstrap's base styles remain untouched.
    // -------------------------------------------------------
    corePlugins: {
        preflight: false,
    },

    theme: {
        extend: {},
    },

    plugins: [],
};
