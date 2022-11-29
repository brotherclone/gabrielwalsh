/**
 * @type {import('next').NextConfig}
 */

module.exports = {
    images:{
        formats:['image/webp'],
        remotePatterns:[
            {
                protocol:'https',
                hostname:'res.cloudinary.com'
            }
        ]
    }
}