import layoutStyle from './layout-check.module.scss'
import React from 'react'

export default function LayoutCheck({
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
