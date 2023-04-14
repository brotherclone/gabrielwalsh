import { allProjects } from '.contentlayer/generated'
import { Project as ProjectType } from '.contentlayer/generated/types'
import LayoutProject from '../../../components/layouts/portfolio/LayoutProject'
interface ProjectProps {
  project: ProjectType
}

export default function ProjectDisplay({ project }: ProjectProps) {
  function getHTML(project) {
    return {
      __html: project.body.html
    }
  }
  return (
    <LayoutProject {...project}>
      <div dangerouslySetInnerHTML={getHTML(project)}/>
    </LayoutProject>
  )
}
export async function getStaticPaths() {
  return {
    paths: allProjects.map((project) => ({ params: { slug: project.slug } })),
    fallback: false
  }
}

export async function getStaticProps({ params }) {
  const project = allProjects.find((project) => project.slug === params.slug)
  return { props: { project } }
}
