import navButtonStyle from './nav-buttons.module.scss'
import React from 'react'

export default function NavButtonGroup ({ children }: { children: React.ReactNode }) {
  return <div className={navButtonStyle.groupContainer}>{children}</div>
}
