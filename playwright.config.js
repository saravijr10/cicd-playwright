import { defineConfig } from '@playwright/test';

export default defineConfig({
    testDir: './tests',
    reporter: [
        ['list'],
        ['allure-playwright']
    ],

    workers: process.env.CI ? 3 : 1,

    projects: [
        {
            name: 'chromium',
            use: { browserName: 'chromium' },
        },
        {
            name: 'firefox',
            use: { browserName: 'firefox' },
        },
        {
            name: 'webkit',
            use: { browserName: 'webkit' },
        },
    ],
});