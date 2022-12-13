import { Skill as SkillType } from '.contentlayer/generated/types'
import { ComponentHelper } from '../../helpers/ComponentHelper'
interface SkillProps {
  skill: SkillType
}
export default function SkillDisplay({ skill }: SkillProps) {
  return (
    <>
      <div>{skill.skillName}</div>
      {skill.body !== null
        ? (
        <div dangerouslySetInnerHTML={ComponentHelper.getHTML(skill)}></div>
          )
        : (
            ''
          )}
    </>
  )
}