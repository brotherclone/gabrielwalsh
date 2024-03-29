import Head from 'next/head'
import LayoutAbout from '../../components/layouts/about/LayoutAbout'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import BeginContent from '../../components/navigation/univsersal/BeginContent'
import FooterMain from '../../components/footer/FooterMain'
import Biography from '../../components/layouts/about/Biography.mdx'
import Contact from '../../components/layouts/about/Contact.mdx'
import { PageTitleHelper } from '../../helpers/PageTitleHelper'

export default function About() {
  const title = PageTitleHelper.pageTitle(true, true, 'About')
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <LayoutAbout>
        <Biography />
        <Contact />
      </LayoutAbout>
      <FooterMain />
    </>
  )
}
