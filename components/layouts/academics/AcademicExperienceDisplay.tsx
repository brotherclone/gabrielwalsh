export default function AcademicExperienceDisplay({ academic }) {
  return (
    <>
      <div>{academic.institution}</div>
      <div>{academic.institutionLocation}</div>
      { academic.roleName !== '' ? <div>{academic.roleName}</div> : ''}
    </>
  )
}
