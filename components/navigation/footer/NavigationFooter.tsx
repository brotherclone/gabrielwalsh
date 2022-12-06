import Link from 'next/link'
import footerStyle from './footer.module.scss'
export default function NavigationFooter () {
  return (
    <footer className={footerStyle.outer}>
      <div className={footerStyle.inner}>
        <ul>
          <li>
            <Link href={'/'}>Home</Link>
          </li>
        </ul>
      </div>
    </footer>
  )
}
