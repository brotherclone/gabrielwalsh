import layoutStyle from './layout-resume.module.scss'
import React from 'react'

export default function LayoutResume({
  children
}: {
  children: React.ReactNode
}) {
  return <div className={layoutStyle.container}>{children}</div>
}
