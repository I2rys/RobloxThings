//Dependencies
const Fs = require("fs")
const Os = require("os")

//Main
if(Fs.existsSync(`C:\\Users\\${Os.userInfo().username}\\AppData\\Local\\Roblox`)){
    const versions = Fs.readdirSync(`C:\\Users\\${Os.userInfo().username}\\AppData\\Local\\Roblox\\Versions`)
    const version = `C:\\Users\\${Os.userInfo().username}\\AppData\\Local\\Roblox\\Versions\\${versions[versions.length-1]}\\PlatformContent\\pc\\textures`
    const folders = Fs.readdirSync(version, { withFileTypes: true },"utf8").filter(result =>{
        return result.isDirectory()
    })

    for( i in folders ){
        if(folders[i] != ""){
            Fs.rmdirSync(`C:\\Users\\${Os.userInfo().username}\\AppData\\Local\\Roblox\\Versions\\${versions[versions.length-1]}\\PlatformContent\\pc\\textures\\${folders[i].name}`, { recursive: true })
        }
    }

    process.exit()
}else{
    process.exit()
}
