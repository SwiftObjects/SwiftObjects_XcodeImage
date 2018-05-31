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
      
        // Use this to expose your methods, only necessary until Swift gains
        // proper reflection :-)
        expose(handlePostAction, as: "handlePost")
    }
    
    
    // An action (which can be invoked from WOHyperlink, WOSubmitButton etc)
    // is just a method with no arguments and a result. It can return nil
    // if a component wants to stay on the same page (just rerender with the
    // same state).
    // If the request was something like a form-POST, the developer does NOT
    // have to extract variables manually! Before the action is called, the
    // template will have pushed the form values into the variables in the
    // .wod file!
    func handlePostAction() -> Any? {
      #if true // We can return nil to stay on the same page, 
        return nil
      #else     // or we can return a new page.
        let nextPage = pageWithName("CustomerList")
        // or just `let nextPage = CustomerList()`
        
        // you can push variables into the page, similar to what you would do
        // on iOS when transitioning to a new UIViewController.
        nextPage.message = "User blub was added sucessfully"        
        
        return nextPage
      #endif
    }
    
    override func sleep() {
        // this can be used to add tear down the component after the request
        // has been processed.
        super.sleep()
    }
}
