import { defineDocumentType, makeSource } from 'contentlayer/source-files'
import remarkGfm from 'remark-gfm'
import rehypeCodeTitles from 'rehype-code-titles'
export const Project = defineDocumentType(() => ({
  name: 'Project',
  filePathPattern: 'projects/*.mdx',
  bodyType: 'mdx',
  fields: {
    title: { type: 'string', required: true }
  },
  computedFields: {
    slug: {
      type: 'string',
      resolve: (doc) => doc._raw.sourceFileName.replace(/\.mdx/, '')
    }
  }
}))

export default makeSource({
  contentDirPath: 'content',
  documentTypes: [Project],
  mdx: {
    remarkPlugins: [remarkGfm],
    rehypePlugins: [rehypeCodeTitles]
  }
})
