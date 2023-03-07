import Head from 'next/head'
import LayoutMain from '../components/layouts/main/LayoutMain'
import NavigationMain from '../components/navigation/main/NavigationMain'
import BeginContent from '../components/navigation/univsersal/BeginContent'
import Statement from '../components/statement/Statement'
import FooterMain from '../components/footer/FooterMain'
import PortfolioCards from '../components/portfolioCards/PortfolioCards'
export default function Home() {
  const title = 'Gabriel Walsh: Creative Technologist, Experience Designer'
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <LayoutMain>
        <Statement />
        <PortfolioCards />
      </LayoutMain>
      <FooterMain />
    </>
  )
}
