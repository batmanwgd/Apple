//
//  VisualEffectView.swift
//  Solar Design System
//
//  Created by Brandon McQuilkin on 6/27/20.
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

// MARK: - Visual Effect View

@available(macOS 10.15, iOS 13.0, tvOS 13.0, macCatalyst 13.0, *)
@available(watchOS, unavailable)
struct VisualEffectView: View {
    
    // MARK: - Properties
    
    /// The visual effect to apply to the view.
    @State private var effect: VisualEffect?
    
    /// The visual effect view for the platform.
    private let content: PlatformVisualEffectView
    
    // MARK: - Initialization
    
    fileprivate init(effect: VisualEffect) {
        self._effect = State(wrappedValue: effect)
        self.content = PlatformVisualEffectView()
    }
    
    // MARK: - View
    
    var body: some View {
        content
            .environment(\.visualEffect, effect)
            .onPreferenceChange(VisualEffectPreferenceKey.self) {
                self.effect = $0
            }
    }
    
    // MARK: - Platform Visual Effect View
    
    #if os(macOS)
    private struct PlatformVisualEffectView: NSViewRepresentable {
        
        func makeNSView(context: Context) -> NSVisualEffectView {
            let view = NSVisualEffectView()
            view.autoresizingMask = [.width, .height]
            return view
        }
        
        func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
            guard let params = context.environment.visualEffect?.parameters else {
                // disable the effect
                nsView.isHidden = true
                return
            }
            nsView.isHidden = false
            nsView.material = params.material
            nsView.blendingMode = params.blendingMode
            nsView.appearance = params.appearance
            
            // mark emphasized if it contains the first responder
            if let resp = nsView.window?.firstResponder as? NSView {
                nsView.isEmphasized = resp === nsView || resp.isDescendant(of: nsView)
            }
            else {
                nsView.isEmphasized = false
            }
        }
        
    }
    #elseif canImport(UIKit) && !os(watchOS)
    private struct PlatformVisualEffectView: UIViewRepresentable {
        
        func makeUIView(context: Context) -> UIVisualEffectView {
            let effect = context.environment.visualEffect ?? .adaptive(.default)
            
            let view = UIVisualEffectView(effect: effect.visualEffect)
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            return view
        }
        
        func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
            guard let effect = context.environment.visualEffect else {
                // disable the effect
                // uiView.isHidden = true
                return
            }
            
            uiView.isHidden = false
            uiView.effect = effect.visualEffect
        }
        
    }
    #elseif os(watchOS)
    public typealias PlatformVisualEffectView = EmptyView
    #endif
}

extension View {
    
    /**
     Applies a `VisualEffect` to the background of this view.
     - parameter effect: The effect to use. If unspecified, uses `.adaptive(.default)`.
    */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, macCatalyst 13.0, *)
    @available(watchOS, unavailable)
    public func visualEffect(_ effect: VisualEffect = .adaptive(.default)) -> some View {
        background(VisualEffectView(effect: effect))
    }
    
    /// Advertises a view's preference for the `VisualEffect` to be applied to its nearest
    /// ancestor that has the `.visualEffect(_:)` modifier.
    /// - Parameter effect: The requested effect.
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, macCatalyst 13.0, *)
    @available(watchOS, unavailable)
    public func visualEffectPreference(_ effect: VisualEffect) -> some View {
        preference(key: VisualEffectPreferenceKey.self, value: effect)
    }
    
}
