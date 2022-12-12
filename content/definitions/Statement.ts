import { defineDocumentType } from 'contentlayer/source-files'
export const Statement = defineDocumentType(() => ({
  name: 'Statement',
  filePathPattern: 'skills/*.mdx',
  bodyType: 'mdx',
  fields: {
    statement: { type: 'string', required: true }
  }
}))
