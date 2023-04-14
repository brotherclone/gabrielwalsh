import layoutStyle from './layout-about.module.scss'
import React from 'react'

export default function LayoutAbout({
  children
}: {
  children: React.ReactNode
}) {
  return (
    <main className={layoutStyle.container}>
      <article className={layoutStyle.reading}>{children}</article>
    </main>
  )
}
