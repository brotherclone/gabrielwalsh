import { Educational as EducationType } from '.contentlayer/generated'
import { ComponentHelper } from '../../helpers/ComponentHelper'
import { useEffect, useState } from 'react'
import educationalStyle from './educational.module.scss'

interface EducationalProps {
  education: EducationType
}

export default function EducationalDisplay({ education }: EducationalProps) {
  const [hasDegree, setHasDegree] = useState(false)
  const [hasDescription, setHasDescription] = useState(false)
  useEffect(() => {
    setHasDegree(education.degree !== '')
    setHasDescription(education.body !== null)
  }, [education])
  return (
    <div className={educationalStyle.educationalContainer}>
      <div className={educationalStyle.educationalInstitution}>{education.institution}</div>
      {hasDegree && <div className={educationalStyle.educationalDegree}>{education.degree}</div>}
      {hasDescription &&
        <div
          className={educationalStyle.educationalDescription}
          dangerouslySetInnerHTML={ComponentHelper.getHTML(education.body)}
        />
      }
    </div>
  )
}
