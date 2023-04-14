import { Skill as SkillType } from '.contentlayer/generated/types'
import { ComponentHelper } from '../../helpers/ComponentHelper'
import { useEffect, useState } from 'react'
import skillStyle from './skill.module.scss'

interface SkillProps {
  skill: SkillType
}

export default function SkillDisplay({ skill }: SkillProps) {
  const [hasDescription, setHasDescription] = useState(false)
  useEffect(() => {
    setHasDescription(skill.body !== null)
  }, [skill])
  return (
    <div className={skillStyle.skillContainer}>
      <div className={skillStyle.skillName}>{skill.skillName}</div>
      <div className={skillStyle.skillYears}>{skill.yearsInPractice}</div>
      <div className={skillStyle.skillCategory}>{skill.skillCategoryName}</div>
      {hasDescription &&
        <div className={skillStyle.skillDescription} dangerouslySetInnerHTML={ComponentHelper.getHTML(skill)}></div>
      }
    </div>
  )
}
