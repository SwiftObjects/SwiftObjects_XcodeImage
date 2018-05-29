//___FILEHEADER___

import SwiftObjects

// The code below starts the NIO HTTP server and runs our application.

let WOApp  = Application()
let server = WONIOAdaptor(application: WOApp)
server.listenAndWait()
