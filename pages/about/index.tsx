import Head from 'next/head'
import LayoutAbout from '../../components/layouts/about/LayoutAbout'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import FooterMain from '../../components/footer/FooterMain'
import Biography from '../../components/layouts/about/Biography.mdx'
import Contact from '../../components/layouts/about/Contact.mdx'

export default function About() {
  const title = 'Gabriel Walsh: Creative Technologist, Experience Designer | About'
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <LayoutAbout>
        <Biography />
        <Contact />
      </LayoutAbout>
      <FooterMain />
    </>
  )
}
