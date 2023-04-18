import portfolioCardsStyle from './portfolio-cards.module.scss'
import React from 'react'
import { allProjects } from '.contentlayer/generated'
import { Project as ProjectType } from '.contentlayer/generated/types'
import PortfolioCard from './PortfolioCard'

export default function PortfolioCards() {
  const projectPromos = allProjects.map((projectPromo: ProjectType, index) => {
    return <PortfolioCard project={projectPromo} key={index} />
  })
  return <div className={portfolioCardsStyle.cardOuter}>{projectPromos}</div>
}
