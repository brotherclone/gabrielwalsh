import Head from 'next/head'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import BeginContent from '../../components/navigation/univsersal/BeginContent'
import FooterMain from '../../components/footer/FooterMain'
import { PageTitleHelper } from '../../helpers/PageTitleHelper'
import LayoutEtc from '../../components/layouts/etc/LayoutEtc'
import Legal from '../../components/layouts/etc/Legal.mdx'
import ThisSite from '../../components/layouts/etc/ThisSite.mdx'

export default function About() {
  const title = PageTitleHelper.pageTitle(true, true, 'Etc.')
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <LayoutEtc>
        <Legal />
        <ThisSite />
      </LayoutEtc>
      <FooterMain />
    </>
  )
}
