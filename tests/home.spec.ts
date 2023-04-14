import { expect, test } from '@playwright/test'
import getURL, { routesForTesting } from './helpers/TestHelper'

test.beforeEach(async ({ page }) => {
  await page.goto(getURL(routesForTesting.home))
})

test('homepage has title', async ({ page }) => {
  await expect(page).toHaveTitle(/Gabriel Walsh: Creative Technologist/)
})

test('it has a card display', async ({ page }) => {
  throw new Error('no test written')
})

test('it has a global nav with the correct location', async ({ page }) => {
  throw new Error('no test written')
})

test('it has a global footer', async ({ page }) => {
  throw new Error('no test written')
})

test('it has a portfolio with only featured items', async ({ page }) => {
  throw new Error('no test written')
})
