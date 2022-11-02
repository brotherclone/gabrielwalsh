import {useRouter} from "next/router"
import Link from "next/link";
import Layout from "../../../components/layout";
import {GetServerSideProps} from "next";

export default function ItemPage({data}){
    const router = useRouter()
    const id = router.query.id as string
    console.log("data", data);
    return(
        <Layout>
            <h1>Item {id}</h1>
            <ul>
                <li>
                    <Link href={`/item/${id}/one`}>One</Link>
                </li>
                <li>
                    <Link href={`/item/${id}/and-two`}>Two</Link>
                </li>
            </ul>
        </Layout>
    )
}

export const getServerSideProps: GetServerSideProps = async ()=>{
    const res = await fetch(`https://www.earthlyframes.com/albums.json`)
    const data = await res.json()
    console.log("data", data)
    return {
        props:{data}
    }
}