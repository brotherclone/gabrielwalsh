import mainNavigationStyle from './main-nav.module.scss'
import NavButton from '../buttons/NavButton'
import NavButtonGroup from '../buttons/NavButtonGroup'

export default function NavigationMain() {
  return (
    <nav className={mainNavigationStyle.outer}>
      <div>
        <div>Gabriel Walsh</div>
        <NavButtonGroup>
          <NavButton />
          <NavButton />
          <NavButton />
        </NavButtonGroup>
      </div>
    </nav>
  )
}
