import statementStyle from './statement.module.scss'
// ToDo: There's a directory of statements in markdown. Crawl this directory and display a random one.
export default function Statement() {
  return (
    <h1 className={statementStyle.statement}>
      Introduction statement goes here
    </h1>
  )
}
