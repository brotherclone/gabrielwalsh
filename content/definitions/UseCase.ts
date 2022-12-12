import { defineDocumentType } from 'contentlayer/source-files'
export const UseCase = defineDocumentType(() => ({
  name: 'UseCase',
  filePathPattern: 'useCases/*.mdx',
  bodyType: 'mdx',
  fields: {
    title: { type: 'string', required: true }
  }
}))
