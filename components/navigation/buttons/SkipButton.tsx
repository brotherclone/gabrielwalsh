import Link from 'next/link'
import skipButtonStyle from './skip-button.module.scss'

export default function SkipButton() {
  return (
    <Link tabIndex={0} href="#BeginContent" className={skipButtonStyle.navButton}>Skip to Navigation</Link>
  )
}
