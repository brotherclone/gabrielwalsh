import { defineDocumentType } from 'contentlayer/source-files'
export const Education = defineDocumentType(() => ({
  name: 'Educational',
  filePathPattern: 'education/*.mdx',
  bodyType: 'mdx',
  fields: {
    institution: { type: 'string', required: true },
    degree: { type: 'string', required: false },
    honorariums: { type: 'string', required: false },
    startYear: { type: 'number', required: true },
    endYear: { type: 'number', required: false }
  }
}))
