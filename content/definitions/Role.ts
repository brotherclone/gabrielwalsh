import { defineDocumentType } from 'contentlayer/source-files'
export const Role = defineDocumentType(() => ({
  name: 'Role',
  filePathPattern: 'roles/*.mdx',
  bodyType: 'mdx',
  fields: {
    logoPath: {
      type: 'string',
      required: false
    },
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
    organization: {
      type: 'string',
      required: true
    },
    organizationLocations: {
      type: 'string',
      required: true
    },
    wasRemote: {
      type: 'boolean',
      required: false
    }
  }
}))
