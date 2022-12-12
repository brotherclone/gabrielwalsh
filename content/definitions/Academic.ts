import { defineDocumentType } from 'contentlayer/source-files'
export const Academic = defineDocumentType(() => ({
  name: 'Academic',
  filePathPattern: 'academics/*.mdx',
  bodyType: 'mdx',
  fields: {
    institution: { type: 'string', required: true },
    institutionLocation: { type: 'string', required: true },
    roleName: { type: 'string', required: false },
    startDate: { type: 'number', required: true },
    endDate: { type: 'number', required: false }
  }
}))
