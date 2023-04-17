import Head from 'next/head'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import BeginContent from '../../components/navigation/univsersal/BeginContent'
import FooterMain from '../../components/footer/FooterMain'
import { PageTitleHelper } from '../../helpers/PageTitleHelper'
import LayoutCheck from '../../components/layouts/check/LayoutCheck'
import WhyTheLogIn from '../../components/layouts/check/WhyTheLogIn.mdx'
import CheckForm from '../../components/checkForm/CheckForm'

export default function Check() {
  const title = PageTitleHelper.pageTitle(false, true, 'Checking Access')
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <LayoutCheck>
        <WhyTheLogIn />
        <CheckForm />
      </LayoutCheck>
      <FooterMain />
    </>
  )
}
