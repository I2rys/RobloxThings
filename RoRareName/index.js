//Dependencies
const Puppeteer = require("puppeteer")
const Chalk = require("chalk")
const Delay = require("delay")
const Fs = require("fs")

//Variables
const Self_Args = process.argv.slice(2)

//Main
if(!Self_Args){
    console.log(`node index.js <dictionary>\nExample: node index.js long_example.txt`)
    process.exit()
}

if(!Self_Args[0]){
    console.log("Invalid dictionary.")
    process.exit()
}

if(!Fs.existsSync(Self_Args[0])){
    console.log("Invalid dictionary.")
    process.exit()
}

const Names = Fs.readFileSync(Self_Args[0], "utf8").split("\n")

var in_name = 0

Main()
async function Main(){
    const browser = await Puppeteer.launch({ headless: false, args: ["--no-sandbox", "--disable-setuid-sandbox"] })
    const page = await browser.newPage()

    await page.goto("https://www.roblox.com/", { waitUntil: "domcontentloaded" })
    await page.select("#MonthDropdown", "May")
    await page.select("#DayDropdown", "07")
    await page.select("#YearDropdown", "1996")

    looper()
    async function looper(){
        if(in_name == Names.length){
            console.log("Finished checking.")
            process.exit()
        }

        await Delay(100)

        await page.evaluate(()=>{
            document.querySelector("#signup-username").value = ""
        })

        await Delay(1000)
        await page.type("#signup-username", Names[in_name])

        await Delay(1000)
        await page.waitForSelector("#signup-usernameInputValidation").then(async()=>{
            const content = await page.content()

            if(content.indexOf("This username is already in use.") != -1 && context.indexOf("Username not appropriate for Roblox.") != -1){
                // More readable outputs
                console.log(`[${Chalk.redBright("-")}] '${Names[in_name]}' is not available.`)
            }else{
                console.log(`[${Chalk.greenBright("+")}] '${Names[in_name]}' is available.`)
            }

            in_name += 1
            looper()
            return
        }).catch(()=>{
            console.log("Something went wrong, retrying...")

            looper()
            return
        })
    }
}
