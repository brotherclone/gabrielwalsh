import { Academic as AcademicType } from '../../.contentlayer/generated'
import { ComponentHelper } from '../../helpers/ComponentHelper'
import { useEffect, useState } from 'react'
import academicStyle from './academic.module.scss'

interface AcademicProps {
  academic: AcademicType
}

export default function AcademicDisplay({ academic }: AcademicProps) {
  const [hasDescription, setHasDescription] = useState(false)
  const [isNotCurrent, setIsNotCurrent] = useState(true)
  useEffect(() => {
    setHasDescription(academic.body !== null)
    setIsNotCurrent((academic.endYear !== undefined && academic.endYear > 0))
  }, [academic])
  return (
    <div className={academicStyle.academicContainer}>
      <div className={academicStyle.academicInstitution}>{academic.institution}</div>
      <div className={academicStyle.academicInstitutionLocation}>{academic.institutionLocation}</div>
      <div className={academicStyle.academicRoleName}>{academic.roleName}</div>
      <div className={academicStyle.academicDuration}>
        <span className={academicStyle.startYear}>{academic.startYear}</span>
        {!isNotCurrent && <span className={academicStyle.endYear}>{academic.endYear}</span>}
      </div>
      {hasDescription &&
        <div
          className={academicStyle.academicDescription}
          dangerouslySetInnerHTML={ComponentHelper.getHTML(academic.body)}
        />
      }
    </div>
  )
}
