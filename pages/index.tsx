import Head from 'next/head'
import LayoutMain from '../components/layouts/main/layout-main'
import NavigationMain from '../components/navigation/main/navigation-main'
import Footer from '../components/footer/footer'

export default function Home () {
  return (
    <>
      <Head>
        <title>Gabriel Walsh: Creative Technologist, Experience Designer</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <LayoutMain>
        <NavigationMain/>
      </LayoutMain>
      <Footer/>
    </>
  )
}
