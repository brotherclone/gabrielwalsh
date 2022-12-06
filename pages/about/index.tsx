import Head from 'next/head'
import LayoutAbout from '../../components/layouts/about/LayoutAbout'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import FooterMain from '../../components/footer/FooterMain'
import Biography from './../../content/about/Biography.mdx'
import Contact from './../../content/about/Contact.mdx'

export default function About () {
  return (
    <>
      <Head>
        <title>Gabriel Walsh: Creative Technologist, Experience Designer | About </title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain/>
      <LayoutAbout>
        <Biography/>
        <Contact/>
      </LayoutAbout>
      <FooterMain/>
    </>
  )
}
