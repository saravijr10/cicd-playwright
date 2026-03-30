import { test, expect } from '@playwright/test';

test('say hello1', async () => {
    console.log("Hello1");
    expect(1).toBe(1);
});