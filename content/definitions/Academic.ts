import { defineDocumentType } from 'contentlayer/source-files'
export const Academic = defineDocumentType(() => ({
  name: 'Academic',
  filePathPattern: 'academics/*.mdx',
  bodyType: 'mdx',
  fields: {
    logoPath: { type: 'string', required: false },
    institution: { type: 'string', required: true },
    institutionLocation: { type: 'string', required: true },
    roleName: { type: 'string', required: false },
    startYear: { type: 'number', required: true },
    endYear: { type: 'number', required: false }
  }
}))
