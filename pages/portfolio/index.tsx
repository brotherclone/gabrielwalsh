import Head from 'next/head'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import BeginContent from '../../components/navigation/univsersal/BeginContent'
import FooterMain from '../../components/footer/FooterMain'
import { PageTitleHelper } from '../../helpers/PageTitleHelper'

export default function Portfolio() {
  const title = PageTitleHelper.pageTitle(true, true, 'Portfolio')
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <form action={'/api/portfolio-access'} method={'post'}>
        <div>
          <div>
            <input type={'text'} name={'password'} />
            <button>Log In</button>
          </div>
        </div>
      </form>
      <FooterMain />
    </>
  )
}
