//___FILEHEADER___

import SwiftObjects

/**
 * A direct action is a lower level request handler in SwiftObjects. It does
 * less magic than a `WOComponent`.
 *
 * Though unlike in WO, in SwiftObjects any `WOComponent` can *also* act as
 * a direct action (if it exposes action methods).
 *
 * *Important*: Unlike in WO, in Swift you have to register your actions
 * (missing reflection in Swift).
 * For example:
 *
 *     expose(doItAction, as: "doIt")
 *
 * Will trigger when the user calls /MyApp/wa/doIt
 */
final class ___FILEBASENAME___ : WODirectAction {
  
    required init(context: WOContext) {
        super.init(context: context)
    
        // Expose your methods in here, or setup other state you want
        
        expose(defaultAction, as: "default")
        
        // expose(handlePost, as: "handlePost")
    }
    
    override func defaultAction() -> WOActionResults? {
        // This is already defined in WODirectAction, but you may chose
        // to do something else.
        return pageWithName("Main")
    }
  
  #if false // example for form processing
    var age : String? = nil
    
    func handlePost() -> WOActionResults? {
        // you can use `takeFormValuesForKeys` to fill direct action
        // instance variables from the request. Unlike w/ WOComponent's,
        // this is not automagic for direct actions.
        takeFormValuesForKeys("age")
        
        // do something
        
        return pageWithName("FormResults")
    }
  #endif
}
