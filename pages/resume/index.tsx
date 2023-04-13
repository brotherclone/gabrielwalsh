import Head from 'next/head'
import NavigationMain from '../../components/navigation/main/NavigationMain'
import BeginContent from '../../components/navigation/univsersal/BeginContent'
import FooterMain from '../../components/footer/FooterMain'
import LayoutResume from '../../components/layouts/resume/LayoutResume'
import {
  allRoles,
  allSkills,
  allEducationals,
  allAcademics
} from '.contentlayer/generated'
import {
  Role as RoleType,
  Skill as SkillType,
  Educational as EducationalType,
  Academic as AcademicType
} from '.contentlayer/generated/types'
import RoleDisplay from '../../components/roles/RoleDisplay'
import SkillDisplay from '../../components/skills/SkillDisplay'
import AcademicDisplay from '../../components/academicExperiences/AcademicDisplay'
import EducationalDisplay from '../../components/educationalExperiences/EducationDisplay'
import { PageTitleHelper } from '../../helpers/PageTitleHelper'
import resumePageStyle from './resume.module.scss'

export default function Resume() {
  const title = PageTitleHelper.pageTitle(true, true, 'Résumé')
  allRoles.sort((b, a) => a.startYear.toString().localeCompare(b.startYear.toString()))
  allAcademics.sort((b, a) => a.startYear.toString().localeCompare(b.startYear.toString()))
  const roles = allRoles.map((role: RoleType, index) => {
    return <RoleDisplay role={role} key={index}/>
  })
  const academics = allAcademics.map((academic: AcademicType, index) => {
    return (
      <AcademicDisplay academic={academic} key={index}/>
    )
  })
  const skills = allSkills.map((skill: SkillType, index) => {
    return (
      <SkillDisplay skill={skill} key={index}/>
    )
  })
  const educationals = allEducationals.map((educational: EducationalType, index) => {
    return (
      <EducationalDisplay education={educational} key={index}/>
    )
  })
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <NavigationMain />
      <BeginContent />
      <LayoutResume>
        <h2 className={resumePageStyle.sectionTitles}>Experience</h2>
        {roles}
        <h2 className={resumePageStyle.sectionTitles}>Academic</h2>
        {academics}
        <h2 className={resumePageStyle.sectionTitles}>Skills</h2>
        {skills}
        <h2 className={resumePageStyle.sectionTitles}>Education</h2>
        {educationals}
      </LayoutResume>
      <FooterMain />
    </>
  )
}
