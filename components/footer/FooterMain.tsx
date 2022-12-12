import React from 'react'
import NavigationFooter from '../navigation/footer/NavigationFooter'
import footerStyle from './footer.module.scss'

export default function FooterMain() {
  return (
    <footer className={footerStyle.footer}>
      <NavigationFooter />
    </footer>
  )
}
