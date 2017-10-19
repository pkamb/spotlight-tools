//
//  AppDelegate.swift
//  Empty Trash
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import AppKit

@NSApplicationMain final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		let source = "tell application \"Finder\"\nif length of (items in the trash as string) is 0 then return\nempty trash\nrepeat until (count items of trash) = 0\ndelay 1\nend repeat\nend tell"
		let script = NSAppleScript(source: source)
		script?.executeAndReturnError(nil)

		NSApplication.shared.terminate(nil)
	}
}
