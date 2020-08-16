//
//  VisualEffectView+PlatformView.swift
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
#if os(iOS) || os(tvOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

extension VisualEffectView {
    
    #if os(iOS) || os(tvOS)
    struct PlatformView<Content: View>: UIViewRepresentable {
        
        // MARK: - Properties
        
        private let hostingController: UIHostingController<Content>
        
        // MARK: - Initialization
        
        init(@ViewBuilder content: () -> Content) {
            hostingController = UIHostingController(rootView: content())
            hostingController.view.backgroundColor = .clear
        }
        
        // MARK: - View
        
        func makeUIView(context: Context) -> UIVisualEffectView {
            let effect = context.environment.visualEffect
            let baseEffectView =  UIVisualEffectView(effect: effect?.platformBlurEffect)
            baseEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            if let vibrancyEffect = effect?.platformVibrancyEffect {
                addVibrancyView(to: baseEffectView, vibrancyEffect: vibrancyEffect)
                (baseEffectView.contentView.subviews.first as! UIVisualEffectView).contentView.addSubview(hostingController.view)
            } else {
                baseEffectView.contentView.addSubview(hostingController.view)
            }
            
            return baseEffectView
        }
        
        func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
            guard let effect = context.environment.visualEffect else {
                removeVibrancyView(from: uiView)
                uiView.effect = nil
                return
            }
            
            uiView.effect = effect.platformBlurEffect
            
            if let vibrancyEffect = effect.platformVibrancyEffect {
                if let subEffectView = uiView.contentView.subviews.first as? UIVisualEffectView {
                    subEffectView.effect = vibrancyEffect
                } else {
                    addVibrancyView(to: uiView, vibrancyEffect: vibrancyEffect)
                }
            } else if let _ = uiView.contentView.subviews.first as? UIVisualEffectView {
                removeVibrancyView(from: uiView)
            }
        }
        
        private func removeVibrancyView(from baseEffectView: UIVisualEffectView) {
            if let subEffectView = baseEffectView.contentView.subviews.first as? UIVisualEffectView{
                subEffectView.removeFromSuperview()
                if let contentView = subEffectView.subviews.first {
                    contentView.removeFromSuperview()
                    baseEffectView.contentView.addSubview(contentView)
                }
            }
        }
        
        private func addVibrancyView(to baseEffectView: UIVisualEffectView, vibrancyEffect: UIVibrancyEffect) {
            let contentView = baseEffectView.contentView.subviews.first
            contentView?.removeFromSuperview()
            
            let subEffectView = UIVisualEffectView(effect: vibrancyEffect)
            subEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            baseEffectView.contentView.addSubview(subEffectView)
            
            if let contentView = contentView {
                subEffectView.contentView.addSubview(contentView)
            }
        }
        
    }
    #elseif os(macOS)
    
    #endif
    
}
