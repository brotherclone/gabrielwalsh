import portfolioCardsStyle from './portfolio-cards.module.scss'
import React from 'react'

export default function PortfolioCards ({ children }: { children: React.ReactNode }) {
  return <div className={portfolioCardsStyle.cardOuter}>{children}</div>
}
