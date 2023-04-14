import statementStyle from './statement.module.scss'
import { allStatements } from '.contentlayer/generated'

export default function Statement() {
  const aStatement = allStatements[Math.floor(Math.random() * allStatements.length)]
  return (
    <div className={statementStyle.statementContainer}>
      <h1 className={statementStyle.statement}>{aStatement.statement}</h1>
    </div>
  )
}
