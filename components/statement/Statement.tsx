import statementStyle from './statement.module.scss'
import { Statement as StatementType } from '.contentlayer/generated/types'
import { allStatements } from '.contentlayer/generated'

export default function Statement() {
  const statementGroup = allStatements.map(
    (statement: StatementType, index) => {
      return (
        <h1 className={statementStyle.statement} key={index}>
          {statement.statement}
        </h1>
      )
    }
  )
  return <>{statementGroup}</>
}
