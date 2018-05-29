//___FILEHEADER___

import SwiftObjects

/**
 * The `Main` component - it usually is the first component displayed. The
 * HomePage, if you like.
 *
 * Consider a `WOComponent` similar to a `UIViewController`. It coordinates
 * the state, and it can have actions which are invoked when a link or button
 * is clicked.
 * The `Main.html` is similar to your view hierarchy or XIB/storyboard. It
 * contains the actual UI. Which is bound to the component using the Main.wod
 * file.
 */
final class Main : WOComponent {
  
    /// Variables can be accessed using KVC. Check out the `Main.wod` file
    /// to see how this is bound to the UI.
    var title = "Homepage"
  
    override func awake() {
        super.awake()
      
        // Use this to expose your methods
      #if false
        expose(handlePostAction, as: "handlePost")
      #endif
    }
    
    override func sleep() {
        // this can be used to add tear down the component after the request
        // has been processed.
        super.sleep()
    }
}
