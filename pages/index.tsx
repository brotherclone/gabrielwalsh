import Layout from "../components/layout";
import { GetStaticProps } from "next";

export default function Home({data}){
    console.log("data", data)
    return(
        <Layout>
            <div>gabriel walsh</div>
        </Layout>
    )
}

export const getStaticProps: GetStaticProps = async ()=>{
    return{
        props:{
            data: {
                msg: "hi mom"
            }
        }
    }
}