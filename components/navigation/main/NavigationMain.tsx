import mainNavigationStyle from './main-nav.module.scss'
import NavButton from '../buttons/NavButton'
import NavButtonGroup from '../buttons/NavButtonGroup'

export default function NavigationMain() {
  return (
    <nav className={mainNavigationStyle.outer}>
      <div className={mainNavigationStyle.title}>Gabriel Walsh</div>
      <NavButtonGroup>
        <NavButton text={'Home'} href={'/'} />
        <NavButton text={'Portfolio'} href={'/portfolio'} />
        <NavButton text={'About'} href={'/about'} />
        <NavButton text={'Résumé'} href={'/resume'} />
      </NavButtonGroup>
    </nav>
  )
}
