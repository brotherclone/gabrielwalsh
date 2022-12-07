import { test, expect } from '@playwright/test'
import getURL from './helpers/TestHelper'
test('homepage has title', async ({ page }) => {
  await page.goto(getURL())
  await expect(page).toHaveTitle(/Gabriel Walsh/)
})
