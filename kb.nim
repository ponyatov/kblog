
import asynchttpserver, asyncdispatch

let http = AsyncHttpServer()

var n = 0
proc callback(req: Request) {.async.} = 
    await req.respond(Http200,"Hello " & $n)
    n += 1

waitFor http.serve(Port(8888),callback)

