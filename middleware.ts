import { NextRequest, NextResponse } from 'next/server'
import { AccessHelper } from './helpers/AccessHelper'
const isPasswordEnabled = !(process.env.PORTFOLIO_ACCESS_PASSWORD == null)

export async function middleware(req: NextRequest): Promise<any> {
  const allowedToViewPortfolio = req.cookies.get(
    AccessHelper.CookieKeys.accessKey
  )
  if (isPasswordEnabled && allowedToViewPortfolio == null) {
    return NextResponse.redirect(
      new URL(AccessHelper.AccessPaths.redirectToCheck, req.url)
    )
  }
  return NextResponse.next()
}

export const config = {
  matcher: ['/portfolio/:path*']
}
