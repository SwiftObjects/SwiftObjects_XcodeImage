//___FILEHEADER___

import SwiftObjects
import jQuery
import SemanticUI

/**
 * The application object is what the name suggests, it represents the
 * application :-)
 *
 * It isn't the actual HTTP server (that is handled by the `WOAdaptor`),
 * but it performs a variety of tasks, including request path handling,
 * some session management, etc.
 *
 * *Important*: Due to missing reflection capabilities in Swift, you need
 *              to explicitly expose the component classes you want to use!
 *              As shown below in the init method.
 */
final class Application : WOApplication {

    override init() {
        super.init()
    
        // Make SwiftObjects use our own subclasses.
        contextClass = Context.self
        sessionClass = Session.self
    
        // The resource manager maintains all resources, that is, templates,
        // components, images, etc.
        let rm = WODevResourceManager(sourceType: Application.self,
                                      defaultFramework: "___PACKAGENAMEASIDENTIFIER___")

        // Here we need to tell the resource manager about our classes.
        // Note: `Frame` is missing here, because it is a component w/o an 
        //       explicit class.
        rm.register(Session.self,
                    Context.self,
                    DirectAction.self,
                    Main.self)
    
        // We also expose some useful SwiftWebResources
        rm.expose(.init("jQuery.min.js",    jQuery.data_jquery_min_js),
                  .init("semantic.min.js",  SemanticUI.data_semantic_min_js),
                  .init("semantic.min.css", SemanticUI.data_semantic_min_css))

        // Tell SwiftObjects to use the resource manager we just created.    
        resourceManager = rm
    }
}
