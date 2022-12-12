import { defineDocumentType } from 'contentlayer/source-files'
export const Role = defineDocumentType(() => ({
  name: 'Role',
  filePathPattern: 'roles/*.mdx',
  bodyType: 'mdx',
  fields: {
    roleName: {
      type: 'string',
      required: true
    },
    startYear: {
      type: 'number',
      required: true
    },
    endYear: {
      type: 'number',
      required: false
    },
    company: {
      type: 'string',
      required: true
    },
    companyLocations: {
      type: 'string',
      required: true
    },
    wasRemote: {
      type: 'boolean',
      required: false
    }
  }
}))
