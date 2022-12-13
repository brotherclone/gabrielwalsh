import DOMPurify from 'isomorphic-dompurify'

function getHML(mdx: any): any {
  return {
    __html: DOMPurify.sanitize(mdx.body.html)
  }
}

export const ComponentHelper = {
  getHTML: getHML
}
