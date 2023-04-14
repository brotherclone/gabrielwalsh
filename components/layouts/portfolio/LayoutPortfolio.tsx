import layoutStyle from './layout-portfolio.module.scss'
import React from 'react'

export default function LayoutAbout({
  children
}: {
  children: React.ReactNode
}) {
  return <div className={layoutStyle.container}>{children}</div>
}
