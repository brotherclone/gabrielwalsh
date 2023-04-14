import Link from 'next/link'
import footerStyle from './footer.module.scss'

export default function NavigationFooter() {
  return (
    <footer className={footerStyle.footerNav}>
      <div className={footerStyle.inner}>
        <ul>
          <li>
            <Link href={'/'} tabIndex={0}>Home</Link>
          </li>
          <li>
            <Link href={'/portfolio'}>Portfolio</Link>
          </li>
          <li>
            <Link href={'/about'}>About</Link>
          </li>
          <li>
            <Link href={'/resume'}>Résumé</Link>
          </li>
          <li>
            <Link href={'/etc'}>Etc.</Link>
          </li>
        </ul>
      </div>
    </footer>
  )
}
