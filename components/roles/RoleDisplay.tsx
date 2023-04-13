import { Role as RoleType } from '.contentlayer/generated'
import { ComponentHelper } from '../../helpers/ComponentHelper'
import { useEffect, useState } from 'react'
import roleStyle from './role.module.scss'
import Image from 'next/image'

interface RoleProps {
  role: RoleType
}

export default function RoleDisplay({ role }: RoleProps) {
  const [wasRemote, setWasRemote] = useState(false)
  const [isNotCurrent, setIsNotCurrent] = useState(true)
  const [hasDescription, setHasDescription] = useState(false)
  const [hasLogo, setHasLogo] = useState(false)
  useEffect(() => {
    setWasRemote(role.wasRemote as boolean)
    setIsNotCurrent((role.endYear !== undefined && role.endYear > 0))
    setHasDescription(role.body != null)
    setHasLogo(role.logoPath !== undefined)
  }, [role])
  return (
    <div className={roleStyle.roleContainer} vocab={'https://schema.org/'} typeof={'Organization'}>
      {hasLogo &&
        <Image
          src={role.logoPath !== undefined ? role.logoPath : 'images/placeholder.png'}
          alt={role.organization}
          width={200}
          height={200}
          className={roleStyle.roleOrganizationLogo}
        />
      }
      <div className={'role-name'}>
        <h5 property={'roleName'}>
          {role.roleName}
        </h5>
      </div>
      <div className={roleStyle.roleOrganization}>
        <h5 property={'name'}>
          {role.organization}
        </h5>
        <div className={roleStyle.roleOrganizationLocation} property={'address'}>
          {role.organizationLocations}
          { wasRemote && <span className={roleStyle.wasRemote}>(Remote)</span>}
        </div>
      </div>
      <div className={roleStyle.roleDuration}>
        <span className={roleStyle.started} property={'startDate'}>{role.startYear}</span>
        {
          !isNotCurrent
            ? <span className={roleStyle.current}>Current</span>
            : <span className={roleStyle.ended} property={'endDate'}>{role.endYear}</span>
        }
      </div>
      {hasDescription &&
        <div property={'description'} className={roleStyle.roleDescription} dangerouslySetInnerHTML={ComponentHelper.getHTML(role)}></div>
      }
    </div>
  )
}
