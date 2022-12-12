import { defineDocumentType } from 'contentlayer/source-files'
export const Subject = defineDocumentType(() => ({
  name: 'Subject',
  filePathPattern: 'subjects/*.mdx',
  bodyType: 'mdx',
  fields: {
    subjectName: { type: 'string', required: true }
  }
}))
