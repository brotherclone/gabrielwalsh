import { NextRequest, NextResponse } from 'next/server'
import { AccessHelper } from './helpers/AccessHelper'
const isPasswordEnabled = !(process.env.PORTFOLIO_ACCESS_PASSWORD == null)
// eslint-disable-next-line @typescript-eslint/explicit-function-return-type
export async function middleware(req: NextRequest) {
  const allowedToViewPortfolio = req.cookies.has(
    AccessHelper.CookieKeys.accessKey
  )
  const isPasswordProtected = req.nextUrl.pathname.startsWith(
    AccessHelper.AccessPaths.accessAPIPath
  )
  if (isPasswordEnabled && !allowedToViewPortfolio && !isPasswordProtected) {
    return NextResponse.redirect(
      new URL(AccessHelper.AccessPaths.accessAPIPath, req.url)
    )
  }
  return NextResponse.next()
}

export const config = {
  matcher: [AccessHelper.AccessPaths.requiresAccessPath]
}
