//
//  WhatsApp_MessengerApp.swift
//  WhatsApp Messenger
//
//  Created by Anshumali Karna on 28/12/22.
//

import SwiftUI

@main
struct WhatsApp_MessengerApp: App {
    var body: some Scene {
        WindowGroup {
            Home()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}


extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get {.none}
        set {}
    }
}
