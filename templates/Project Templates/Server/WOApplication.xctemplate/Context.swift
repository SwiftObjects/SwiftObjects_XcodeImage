//___FILEHEADER___

import SwiftObjects

/**
 * A context is created for each request/response cycle. It can be used to
 * attach additional state to such a cycle, state which goes away after
 * the cycle is complete.
 *
 * If you want to keep state between requests, use a `Session`.
 */
final class Context : WOAppContext {
}
