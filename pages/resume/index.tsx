import Head from 'next/head'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import FooterMain from '../../components/footer/FooterMain'
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
      <NavigationMain/>
      <FooterMain/>
    </>
  )
}
