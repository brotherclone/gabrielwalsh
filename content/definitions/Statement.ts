import { defineDocumentType } from 'contentlayer/source-files'
export const Statement = defineDocumentType(() => ({
  name: 'Statement',
  filePathPattern: 'statements/*.mdx',
  bodyType: 'mdx',
  fields: {
    statement: { type: 'string', required: true }
  }
}))
