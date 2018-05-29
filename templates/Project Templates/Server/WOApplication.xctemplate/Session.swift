//___FILEHEADER___

import SwiftObjects

/**
 * A session *can* be created to persist data between HTTP requests.
 */
final class Session : WOSession {

  override func awake() {
    super.awake()
    
    // in here code can be added when a session is activated.
  }
  
  override func sleep() {
    // in here code can be added that should run before a session persists.
    
    super.sleep()
  }
}
