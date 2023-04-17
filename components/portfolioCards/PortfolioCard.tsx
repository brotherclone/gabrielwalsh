import { Project as ProjectType } from '.contentlayer/generated'
import portfolioCardStyle from './portfolio-cards.module.scss'
import Link from 'next/link'

interface PortfolioCardProps {
  project: ProjectType
}

export default function EducationalDisplay({ project }: PortfolioCardProps) {
  return (
    <div className={portfolioCardStyle.cardOuter}>
      <Link href={`/portfolio/use-cases/${project.slug}`} key={project._id}>
        {project.title}
      </Link>
    </div>
  )
}
