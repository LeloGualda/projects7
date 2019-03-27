var path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

console.log(__dirname)
module.exports = {
    entry: './src/index.js',
    devtool: 'sourcemaps',
    cache: true,
    mode: 'development',
    output: {
        path: __dirname,
        filename: '../../src/main/resources/static/built/bundle.js'
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
    }
}