//Dependencies
const Request = require("request")
const Fs = require("fs")

//Variables
const Self_Args = process.argv.slice(2)

//Main
if(!Self_Args.length){
    console.log("node index.js <game_id> <output>")
    process.exit()
}

if(!Self_Args[0]){
    console.log("Invalid game_id.")
    process.exit()
}

if(!Self_Args[1]){
    console.log("Invalid output.")
    process.exit()
}

Request(`http://web.archive.org/cdx/search/cdx?url=https://web.roblox.com/games/${Self_Args[0]}/*&output=txt&fl=original&collapse=urlkey&page=/`, function(err, res, body){
    if(!body){
        console.log("No game private servers link found.")
        process.exit()
    }

    if(err){
        console.log("Something went wrong, make sure the game_id is valid.")
        process.exit()
    }

    const private_servers_link = body.match(/.*privateServerLinkCode=.*/g)

    if(!private_servers_link){
        console.log("No game private servers link found.")
        process.exit()
    }

    console.log(`${private_servers_link.length} game private servers link found.`)

    var results = ""

    for( i in private_servers_link ){
        if(!results.length){
            results = private_servers_link[i]
        }else{
            results += `\n${private_servers_link[i]}`
        }
    }

    console.log(`Saving the results to ${Self_Args[1]}`)
    Fs.writeFileSync(Self_Args[1], results, "utf8")
    console.log(`Results successfully saved to ${Self_Args[1]}`)
    process.exit()
})
