import Head from 'next/head'
import LayoutMain from '../components/layouts/main/LayoutMain'
import NavigationMain from '../components/navigation/main/NavigationMain'
import Statement from '../components/statement/Statement'
import FooterMain from '../components/footer/FooterMain'
import homeStyle from './index.module.scss'

export default function Home () {
  return (
    <div className={homeStyle.gabrielWalsh}>
      <Head>
        <title>Gabriel Walsh: Creative Technologist, Experience Designer</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <LayoutMain>
        <NavigationMain/>
        <Statement/>
      </LayoutMain>
      <FooterMain/>
    </div>
  )
}
