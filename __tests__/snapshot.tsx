import { render } from '@testing-library/react'
import Home from "../pages";

it('renders the unchanged home page', ()=>{
    const {container} = render(<Home data={`msg:test`}/>)
    expect(container).toMatchSnapshot()
})