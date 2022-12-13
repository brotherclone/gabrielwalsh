import { Educational as EducationType } from '.contentlayer/generated'
import { ComponentHelper } from '../../helpers/ComponentHelper'
interface EducationalProps {
  education: EducationType
}

export default function EducationalDisplay({ education }: EducationalProps) {
  return (
    <>
      <div>{education.institution}</div>
      {education.degree !== '' ? <div>{education.degree}</div> : ''}
      {education.body !== null
        ? (
        <div
          dangerouslySetInnerHTML={ComponentHelper.getHTML(education.body)}
        />
          )
        : (
            ''
          )}
    </>
  )
}
