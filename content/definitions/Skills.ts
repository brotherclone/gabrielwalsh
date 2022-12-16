import { defineDocumentType } from 'contentlayer/source-files'
export enum SkillCategories {
  Development,
  Design,
  Strategy
}

export enum SkillLevels {
  Basic,
  Intermediate,
  Skilled,
  Advanced,
  Expert
}

export const Skill = defineDocumentType(() => ({
  name: 'Skill',
  filePathPattern: 'skills/*.mdx',
  bodyType: 'mdx',
  fields: {
    skillName: { type: 'string', required: true },
    startDate: { type: 'number', required: true },
    skillCategory: { type: 'number', required: true },
    skillLevel: { type: 'number', required: true }
  },
  computedFields: {
    yearsInPractice: {
      type: 'number',
      resolve: (doc) => new Date().getFullYear() - doc.startDate
    },
    skillCategoryName: {
      type: 'string',
      resolve: (doc) => SkillCategories[doc.skillCategory]
    },
    skillLevelName: {
      type: 'string',
      resolve: (doc) => SkillLevels[doc.skillLevel]
    }
  }
}))
