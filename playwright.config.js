import { defineConfig } from '@playwright/test';

export default defineConfig({
    testDir: './tests',
    reporter: [['list']],

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