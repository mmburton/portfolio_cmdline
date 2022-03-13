//
//  Dirs.swift
//  Runnables
//
//  Copyright © 2022 Dunegrass, LLC. All rights reserved.
//

import Foundation
import ArgumentParser

import Portfolio

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
            let dirs = try? Portfolio.Directory().run(args: root)
            print("got the directory result: '\(String(describing: dirs))'")
        }
    }
}
