import { UseCase as UseCaseType } from '.contentlayer/generated'
import useCaseCardStyle from './use-case-cards.module.scss'
import Link from 'next/link'

interface UseCaseCardProps {
  useCase: UseCaseType
}

export default function UseCaseCard({ useCase }: UseCaseCardProps) {
  return (
    <div className={useCaseCardStyle.cardOuter}>
      <Link href={`/portfolio/useCases/${useCase.slug}`} key={useCase._id}>
        {useCase.title}
      </Link>
    </div>
  )
}
