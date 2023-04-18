import layoutStyle from './layout-etc.module.scss'
import React from 'react'

export default function LayoutEtc({ children }: { children: React.ReactNode }) {
  return (
    <main className={layoutStyle.container}>
      <article className={layoutStyle.reading}>{children}</article>
    </main>
  )
}
