//
//  Directory.swift
//  portfolios
//
//  Copyright © 2022 Dunegrass, LLC. All rights reserved.
//

import Combine

public struct Directory {
    public init() {}

    public func run(args: String) throws -> Bool {
        print("run the directory listing on '\(args)' form here")
        return true
    }
}
