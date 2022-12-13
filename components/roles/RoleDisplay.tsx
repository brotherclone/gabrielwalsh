import { Role as RoleType } from '.contentlayer/generated'
import { ComponentHelper } from '../../helpers/ComponentHelper'
interface RoleProps {
  role: RoleType
}

export default function RoleDisplay({ role }: RoleProps) {
  return (
    <>
      <div>{role.roleName}</div>
      <div>{role.company}</div>
      <div>{role.startYear}</div>
      { role.endYear !== 0 && role.endYear !== null ? <div>{role.endYear}</div> : ''}
      <div>{role.companyLocations} {role.wasRemote === true ? <span>(Remote)</span> : ''}</div>
      <div dangerouslySetInnerHTML={ComponentHelper.getHTML(role)}></div>
    </>
  )
}
