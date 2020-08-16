//
//  VisualEffectView.swift
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

#if canImport(UIKit)
import UIKit
#elseif os(macOS)
import AppKit
#endif

@available(macOS 10.16, iOS 14.0, tvOS 14.0, macCatalyst 14.0, *)
@available(watchOS, unavailable)
public struct VisualEffectView<Content: View>: View {
    
    // MARK: - Properties
    
    /// The visual effect to apply to the view.
    @State private var visualEffect: VisualEffect?
    
    /// Whether or not the view was created with a specific visual effect.
    private let createdWithSpecificEffect: Bool
    
    /// The content to place inside of the visual effect view.
    private let content: Content
    
    // MARK: - Initialization
    
    /**
     Creates a visual effect view that uses the effect specified by the environment.
    */
    public init() where Content == EmptyView {
        self.content = EmptyView()
        self.createdWithSpecificEffect = false
    }
    
    /**
     Creates a visual effect view that uses the preferred effect of the content, or the effect specified by the environment.
     - parameter content: The content of the visual effect view.
    */
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
        self.createdWithSpecificEffect = false
    }
    
    /**
     Creates a visual effect view that uses the specified visual effect.
     - parameter visualEffect: The visual effect to apply.
     - parameter content: The content of the visual effect view.
    */
    public init(_ visualEffect: VisualEffect?, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.createdWithSpecificEffect = true
        self.visualEffect = visualEffect
    }
    
    // MARK: - View
    
    public var body: some View {
        #if os(iOS) || os(tvOS) || os(macOS)
        PlatformView {
            content
                .environment(\.visualEffect, visualEffect)
                .onPreferenceChange(VisualEffectPreferenceKey.self) {
                    self.visualEffect = $0
                }
        }
        #else
        EmptyView()
        #endif
    }
    
}
