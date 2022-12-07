import layoutStyle from './layout-main.module.scss'
import React from 'react'
import { useLax } from 'use-lax'
import { scrollDrivers as drivers } from '../scrollDrivers/scrollDrivers'
import { layoutMainScrollingElements as elements } from './layoutMainScrollingElements'
export default function LayoutMain ({
  children
}: {
  children: React.ReactNode
}) {
  useLax({ drivers, elements })
  return <div className={layoutStyle.container}>{children}</div>
}
