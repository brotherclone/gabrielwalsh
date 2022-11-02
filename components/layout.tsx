import layoutStyle from "./layout.module.scss";


export default function Layout({
                                   children,
                               }: {
                                    children: React.ReactNode,
                                }) {
    return (
        <div className={layoutStyle.container}>
            {children}
        </div>
    )
}

