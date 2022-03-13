//
//  Dirs.swift
//  Commands
//
//  Copyright © 2022 Dunegrass, LLC. All rights reserved.
//

import Foundation
import ArgumentParser

import portfolios

extension Command {
    struct Dirs: ParsableCommand {
        static var configuration: CommandConfiguration {
            .init(
                commandName: "dirs",
                abstract: "List Directories"
            )
        }

        @Argument(help: "The root directory")
        var root: String

        func run() throws {
            let dirs = Directory()
            // print("\(Directory().run(args: root))")
            print("looking at the root: '\(root)'")
        }
    }
}
