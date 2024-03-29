import Head from 'next/head'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import BeginContent from '../../components/navigation/univsersal/BeginContent'
import FooterMain from '../../components/footer/FooterMain'
import {
  allProjects,
  Project as ProjectType
} from '../../.contentlayer/generated'
import { PageTitleHelper } from '../../helpers/PageTitleHelper'
import PortfolioCard from '../../components/portfolioCards/PortfolioCard'

export default function Portfolio() {
  const title = PageTitleHelper.pageTitle(true, true, 'Portfolio')
  const projects = allProjects.map((project: ProjectType, index) => {
    return <PortfolioCard project={project} key={index} />
  })

  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <>{projects}</>
      <FooterMain />
    </>
  )
}
