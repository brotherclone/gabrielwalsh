import { Role as RoleType } from '.contentlayer/generated'
import { ComponentHelper } from '../../helpers/ComponentHelper'
import { useEffect, useState } from 'react'
import roleStyle from './role.module.scss'

interface RoleProps {
  role: RoleType
}

export default function RoleDisplay({ role }: RoleProps) {
  const [wasRemote, setWasRemote] = useState(false)
  const [isNotCurrent, setIsNotCurrent] = useState(true)
  const [hasDescription, setHasDescription] = useState(false)

  useEffect(() => {
    setWasRemote(role.wasRemote as boolean)
    setIsNotCurrent((role.endYear !== undefined && role.endYear > 0))
    setHasDescription(role.body != null)
  }, [role])
  return (
    <div className={roleStyle.roleContainer}>
      <div className={'role-name'}>
        <h5>
          {role.roleName}
        </h5>
      </div>
      <div className={roleStyle.roleOrganization}>
        <h5>
          {role.organization}
        </h5>
      </div>
      <div className={roleStyle.roleOrganizationLocation}>
        {role.organizationLocations}
        { wasRemote && <span className={roleStyle.wasRemote}>(Remote)</span>}
      </div>
      <div className={roleStyle.roleDuration}>
        <span className={roleStyle.started}>{role.startYear}</span>
        {
          !isNotCurrent
            ? <span className={roleStyle.current}>Current</span>
            : <span className={roleStyle.ended}>{role.endYear}</span>
        }
      </div>
      {hasDescription &&
        <div className={roleStyle.roleDescription} dangerouslySetInnerHTML={ComponentHelper.getHTML(role)}></div>
      }
    </div>
  )
}
