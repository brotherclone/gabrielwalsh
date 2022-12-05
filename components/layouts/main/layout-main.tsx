import layoutStyle from './layout-main.module.scss'
import React from 'react'

export default function LayoutMain ({ children }: { children: React.ReactNode }) {
  return <div className={layoutStyle.container}>{children}</div>
}
