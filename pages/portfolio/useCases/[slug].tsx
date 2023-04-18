import { allUseCases } from '.contentlayer/generated'
import { UseCase as UseCaseType } from '.contentlayer/generated/types'
import LayoutUseCase from '../../../components/layouts/useCase/LayoutUseCase'

interface UseCaseProps {
  useCase: UseCaseType
}

export default function UseCaseDisplay({ useCase }: UseCaseProps) {
  function getHTML(useCase) {
    return {
      __html: useCase.body.html
    }
  }
  return (
    <LayoutUseCase {...useCase}>
      <div dangerouslySetInnerHTML={getHTML(useCase)} />
    </LayoutUseCase>
  )
}
export async function getStaticPaths() {
  return {
    paths: allUseCases.map((useCase) => ({ params: { slug: useCase.slug } })),
    fallback: false
  }
}

export async function getStaticProps({ params }) {
  const useCase = allUseCases.find((useCase) => useCase.slug === params.slug)
  return { props: { useCase } }
}
