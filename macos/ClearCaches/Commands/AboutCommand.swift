//
//  AboutCommand.swift
//  clear-caches
//
//  Created by Alfakynz Nyxaeris on 06/04/2025.
//

import Foundation
import ArgumentParser

struct AboutCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "about",
        abstract: "Displays the version of the clear-caches tool."
    )

    func run() {
        CacheManager.about()
    }
}
