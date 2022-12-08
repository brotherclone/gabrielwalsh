import Head from 'next/head'
export default function Resume() {
  const title =
    'Gabriel Walsh: Creative Technologist, Experience Designer | Résumé'
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
    </>
  )
}
