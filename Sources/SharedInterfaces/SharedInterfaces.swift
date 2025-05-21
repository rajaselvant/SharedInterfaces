// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

// Protocol for feature modules
public protocol FeatureModule {
    associatedtype Content
    var featureName: String { get }
    var featureIcon: String { get }
    var featureView: Content { get }
}

// Protocol for communication: host -> feature
public protocol FeatureInput {
    associatedtype Input
    func configure(with input: Input)
}

// Protocol for communication: feature -> host via callbacks
public protocol FeatureActionHandler {
    associatedtype Action
    func handle(action: Action)
}
