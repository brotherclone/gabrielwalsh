import React from 'react'
import checkStyle from './check-form.module.scss'

export default function CheckForm() {
  return (
    <div className={checkStyle.formContainer}>
      <form action={'/api/portfolio-access'} method={'post'}>
        <div>
          <div>
            <input type={'text'} name={'password'} />
            <button>Log In</button>
          </div>
        </div>
      </form>
    </div>
  )
}
