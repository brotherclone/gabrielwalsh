import layoutStyle from './layout.module.scss'
import React from 'react'

export default function Layout ({ children }: { children: React.ReactNode }) {
  return <div className={layoutStyle.container}>{children}</div>
}
