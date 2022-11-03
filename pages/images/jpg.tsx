import Image from "next/image"
import imgStyles from "./img.module.scss"

export default function JPGExample(){
    return(
        <div className={imgStyles.main}>
            <div className={imgStyles.example}>
                <h2>CDN</h2>
                <Image
                    alt="CDN Example"
                    src="https://res.cloudinary.com/hobvqx95l/image/upload/v1492199069/agffxxdn3xqxqztjejv5.jpg"
                    width={500}
                    height={500}
                    style={{maxWidth:'100%'}}
                    className={imgStyles.exampleImage}
                />
            </div>
        </div>
    )
}