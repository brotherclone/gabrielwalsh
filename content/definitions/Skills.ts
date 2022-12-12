import { defineDocumentType } from 'contentlayer/source-files'
export const Skill = defineDocumentType(() => ({
  name: 'Skill',
  filePathPattern: 'skills/*.mdx',
  bodyType: 'mdx',
  fields: {
    skillName: { type: 'string', required: true },
    startDate: { type: 'number', required: true },
    endDate: { type: 'number', required: false }
  }
}))
