//
//  _SceneModifier.swift
//  OpenSwiftUI
//
//  Created by Kyle on 2023/9/24.
//  Lastest Version: iOS 15.5
//  Status: WIP

public protocol _SceneModifier {
    associatedtype Body: Scene
    
    @SceneBuilder
    func body(content: SceneContent) -> Body

    typealias SceneContent = _SceneModifier_Content<Self>
//    static func _makeScene(modifier: _GraphValue<Self>, inputs: _SceneInputs, body: @escaping (_Graph, _SceneInputs) -> _SceneOutputs) -> _SceneOutputs
}

extension _SceneModifier {
    //  public static func _makeScene(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._SceneInputs, body: @escaping (SwiftUI._Graph, SwiftUI._SceneInputs) -> SwiftUI._SceneOutputs) -> SwiftUI._SceneOutputs
}

extension _SceneModifier where Body == Never {
    @inline(__always)
    public func body(content _: SceneContent) -> Body {
        fatalError("body() should not be called on \(Self.self)")
    }
}
