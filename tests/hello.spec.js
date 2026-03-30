import { test, expect } from '@playwright/test';

test('say hello', async () => {
    console.log("Hello");
    expect(1).toBe(1);
});