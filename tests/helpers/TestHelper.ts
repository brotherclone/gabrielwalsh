export enum routesForTesting {
  'home' = 0,
  'about' = 1,
  'resume' = 2,
  'potfolio' = 3,
  'etc' = 4
}

export default function getURL(route: routesForTesting): string {
  let url: string = process.env.BASE_URL ?? 'http://localhost:3000'
  switch (route) {
    case 1:
      url += '/about'
      break
    case 2:
      url += '/resume'
      break
    case 3:
      url += '/portfolio'
      break
    case 4:
      url += '/etc'
      break
    default:
      break
  }
  return url
}
