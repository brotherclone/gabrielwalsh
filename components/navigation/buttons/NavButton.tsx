import Link from 'next/link'
import navButtonStyle from './nav-buttons.module.scss'

export default function NavButton({ href, text }) {
  return (
    <Link tabIndex={0} href={href} className={navButtonStyle.navButton}>{text}</Link>
  )
}
