import { useRouter } from 'next/router'

export default function SubItem(){
    const router = useRouter()
    const id = router.query.id as string
    const subItem = router.query.subItem as string
    return(
        <>
            <div>{subItem} for item {id}</div>
        </>
    )
}