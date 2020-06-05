//
//  LocalStorage+Injected.swift
//  CoronaContact
//

import Foundation
import Resolver

extension Resolver {
    public static func registerLocalStorageServices() {
        register { LocalStorage() }.scope(application)
    }
}
