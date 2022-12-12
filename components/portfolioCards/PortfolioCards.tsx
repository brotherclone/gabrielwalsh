import portfolioCardsStyle from './portfolio-cards.module.scss'
import React from 'react'
import { allProjects } from '.contentlayer/generated'
import PortfolioCard from './PortfolioCard'

export default function PortfolioCards() {
  const projectPromos = allProjects.map((projectPromo, index) => {
    return (
    <PortfolioCard/>
    )
  })
  return (
    <div className={portfolioCardsStyle.cardOuter}>
      {projectPromos}
    </div>
  )
}
