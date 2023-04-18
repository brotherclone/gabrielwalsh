import { allUseCases } from '../../.contentlayer/generated'
import useCardStyle from './use-case-cards.module.scss'
import { UseCase as UseCaseType } from '.contentlayer/generated'
import UseCaseCard from './UseCaseCard'
import React from 'react'

export default function UseCaseCards() {
  const useCasePromos = allUseCases.map((useCasePromo: UseCaseType, index) => {
    return <UseCaseCard useCase={useCasePromo} key={index} />
  })
  return <div className={useCardStyle.cardsOuter}>{useCasePromos}</div>
}
