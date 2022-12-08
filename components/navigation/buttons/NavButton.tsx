import Link from 'next/link'
import navButtonStyle from './nav-buttons.module.scss'

export default function NavButton({ href, text }) {
  return (
    <Link href={href} className={navButtonStyle.navButton}>{text}</Link>
  )
}
