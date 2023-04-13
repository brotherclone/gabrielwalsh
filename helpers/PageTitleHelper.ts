function pageTitle(
  showMain: boolean,
  showTitle: boolean,
  pageName?: string
): string {
  const title: string[] = [
    'Gabriel Walsh',
    'Creative Technologist, Experience Designer'
  ]
  if (pageName !== undefined && (showMain || showTitle)) {
    title.push(` | ${pageName}`)
  }
  if (showMain && showTitle) {
    title[0] = title[0] + ': '
  }
  if (!showMain) {
    delete title[0]
  } else if (!showTitle) {
    delete title[1]
  } else if (pageName === undefined) {
    delete title[2]
  }
  return title.join('')
}

export const PageTitleHelper = {
  pageTitle
}
