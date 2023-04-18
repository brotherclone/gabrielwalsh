import { Project as ProjectType } from '.contentlayer/generated'
import portfolioCardStyle from './portfolio-cards.module.scss'
import Link from 'next/link'

interface PortfolioCardProps {
  project: ProjectType
}

export default function PortfolioCard({ project }: PortfolioCardProps) {
  return (
    <div className={portfolioCardStyle.cardOuter}>
      <Link href={`/portfolio/projects/${project.slug}`} key={project._id}>
        {project.title}
      </Link>
    </div>
  )
}
