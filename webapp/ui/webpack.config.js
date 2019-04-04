const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const package = require('./package.json')

module.exports = {
    entry: package.main,
    output: {
        path: path.resolve(__dirname,"../../src/main/resources/static/public/"),
        filename: 'ui.js',
        publicPath: "/public"
    },
    module: {
        rules: [
            {
                test: /\.js?$/,
                exclude: /node_modules/,
                use: 'babel-loader'
            },
            {
                test: /\.s?css$/,
                use: [
                    "style-loader", "css-loader", "sass-loader"
                ]
            }
        ]
    },
    devServer: {
        port: 8084,
        inline: true,
        publicPath:"http://localhost:8080/public",
        historyApiFallback: true,
        overlay: true,
        proxy: {
            "*": {
                target: 'http://localhost:8080',
                ws: false, /// auto update
                onProxyReq: function (proxyReq) {
                    proxyReq.setHeader('Accept-Encoding', '') // disable gzip
                },
                bypass: function (req, res, proxyOptions) {
                    if (req.originalUrl === '/public/ui.js') {                 
                        return '/ui.js';
                    }                    
                }
            }
        }        
    }
}