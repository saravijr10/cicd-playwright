import { defineConfig } from '@playwright/test';

module.exports = defineConfig({
    testDir: './tests',
    reporter: [['list']],
});