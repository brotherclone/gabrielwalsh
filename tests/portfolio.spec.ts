import { expect, test } from '@playwright/test'
import getURL, { routesForTesting } from './helpers/TestHelper'

test.beforeEach(async ({ page }) => {
  await page.goto(getURL(routesForTesting.potfolio))
})

test('homepage has title', async ({ page }) => {
  await expect(page).toHaveTitle(
    /Gabriel Walsh: Creative Technologist - Portfolio/
  )
})
