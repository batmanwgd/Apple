//
//  VisualEffectView+Environment.swift
//  Solar Design System
//
//  Created by Brandon McQuilkin on 7/5/20.
//  Copyright © 2020 Brandon McQuilkin (Marxon13).
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import SwiftUI

/// The key used to access into the `EnvironmentValues` data set.
@available(macOS 10.16, iOS 14.0, tvOS 14.0, *)
@available(watchOS, unavailable)
public struct VisualEffectKey: EnvironmentKey {
    
    public typealias Value = VisualEffect?
    
    #if os(iOS) || os(tvOS)
    public static var defaultValue: Value = VisualEffect.adaptive(.material, nil)
    #elseif os(macOS)
    public static var defaultValue: Value = VisualEffect.adaptive(.contentBackground(behindWindow: false), nil)
    #endif
}

extension EnvironmentValues {
    
    /// The visual effect applied to views tagged with the `.visualEffect(_:)` modifier, if any.
    @available(macOS 10.16, iOS 14.0, tvOS 14.0, *)
    @available(watchOS, unavailable)
    public var visualEffect: VisualEffect? {
        get {
            self[VisualEffectKey.self]
        }
        set {
            self[VisualEffectKey.self] = newValue
        }
    }
    
}
