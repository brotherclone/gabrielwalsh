import { NextApiRequest, NextApiResponse } from 'next'
import { serialize } from 'cookie'
import { AccessHelper } from '../../helpers/AccessHelper'

// eslint-disable-next-line @typescript-eslint/explicit-function-return-type
export default async function portfolioAccessor(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method !== 'POST') {
    res.status(405).send('Invalid Method')
  }
  const accessPassword = req.body.password
  if (process.env.PORTFOLIO_ACCESS_PASSWORD === accessPassword) {
    const cookie = serialize(AccessHelper.CookieKeys.accessKey, 'true', {
      path: '/',
      httpOnly: true
    })
    res.setHeader('Set-Cookie', cookie)
    res.redirect(302, '/')
  } else {
    const url = new URL(
      AccessHelper.AccessPaths.accessAPIPath,
      req.headers.origin
    )
    url.searchParams.append('error', 'Invalid Access')
    res.redirect(url.toString())
  }
}
