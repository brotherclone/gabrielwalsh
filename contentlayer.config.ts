import { makeSource } from 'contentlayer/source-files'
import remarkGfm from 'remark-gfm'
import rehypeCodeTitles from 'rehype-code-titles'
import { Academic } from './content/definitions/Academic'
import { Eductation } from './content/definitions/Eductation'
import { Project } from './content/definitions/Project'
import { Role } from './content/definitions/Role'
import { Skill } from './content/definitions/Skills'
import { Statement } from './content/definitions/Statement'
import { Subject } from './content/definitions/Subject'
import { UseCase } from './content/definitions/UseCase'

export default makeSource({
  contentDirPath: 'content',
  documentTypes: [
    Academic,
    Eductation,
    Project,
    Role,
    Skill,
    Statement,
    Subject,
    UseCase
  ],
  mdx: {
    remarkPlugins: [remarkGfm],
    rehypePlugins: [rehypeCodeTitles]
  }
})
