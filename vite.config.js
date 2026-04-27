import { defineConfig } from 'vite';
import laravelPlugin from 'laravel-vite-plugin';

const laravel = laravelPlugin.default ?? laravelPlugin;

export default defineConfig({
    plugins: [
        laravel({
            input: [
                // Tailwind FIRST — Bootstrap loads after it in HTML, so Bootstrap
                // always wins on any conflicting class names (CSS cascade rule).
                'resources/css/tailwind.css',
                'resources/sass/app.scss',
                'resources/js/app.js',
            ],
            refresh: true,
        }),
    ],
});
