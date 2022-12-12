import { defineDocumentType } from 'contentlayer/source-files'
export const Eductation = defineDocumentType(() => ({
  name: 'Educational',
  filePathPattern: 'education/*.mdx',
  bodyType: 'mdx',
  fields: {
    institution: { type: 'string', required: true },
    degree: { type: 'string', required: false },
    honorariums: { type: 'number', required: true },
    startDate: { type: 'number', required: true },
    endDate: { type: 'number', required: false }
  }
}))
