import layoutStyle from './layout-use-case.module.scss'
import React from 'react'

export default function LayoutUseCase({
  children
}: {
  children: React.ReactNode
}) {
  return <div className={layoutStyle.container}>{children}</div>
}
