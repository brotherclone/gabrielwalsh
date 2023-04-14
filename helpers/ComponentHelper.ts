import DOMPurify from 'isomorphic-dompurify'

function getHML(mdx: any): any {
  if (mdx.body) {
    return {
      __html: DOMPurify.sanitize(mdx.body.html)
    }
  }
}

export const ComponentHelper = {
  getHTML: getHML
}
