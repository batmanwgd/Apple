//
//  VisualEffectView+VisualEffect+BlurEffect.swift
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

extension VisualEffect {
    
    /**
     The material types available for the visual effect view.
     On iOS and tvOS, this uses material types to specify the desired effect, while on macOS the materials are specified semantically based on their expected use case.
    */
    public enum BlurEffect: Hashable {
        
        // MARK: - General Materials

        /// An adaptable blur effect that creates the appearance of an ultra-thin material.
        @available(iOS 14.0, tvOS 14.0, *)
        @available(macOS, unavailable)
        case ultraThinMaterial

        /// An adaptable blur effect that creates the appearance of a thin material.
        @available(iOS 14.0, tvOS 14.0, *)
        @available(macOS, unavailable)
        case thinMaterial
        
        /// An adaptable blur effect that creates the appearance of a material with normal thickness.
        @available(macOS 10.16, iOS 14.0, tvOS 14.0, *)
        case material

        /// An adaptable blur effect that creates the appearance of a material that is thicker than normal.
        @available(iOS 14.0, tvOS 14.0, *)
        @available(macOS, unavailable)
        case thickMaterial

        /// An adaptable blur effect that creates the appearance of the system chrome.
        @available(iOS 14.0, tvOS 14.0, *)
        @available(macOS, unavailable)
        case chromeMaterial
        
        // MARK: - Semantic Materials
        
        /// The material for a window’s titlebar.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case titlebar
        
        /// The material used to indicate a selection.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case selection
        
        /// The material for menus.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case menu
        
        /// The material for the background of popover windows.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case popover
        
        /**
         The material for in-line header or footer views.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case headerView(behindWindow: Bool)
        
        /// The material for the background of sheet windows.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case sheet
        
        /// The material for the background of opaque windows.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case windowBackground

        /// The material for the background of heads-up display (HUD) windows.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case hudWindow

        /// The material for the background of a full-screen modal interface.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case fullScreenUI
        
        /// The material for the background of a tool tip.
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case toolTip

        /**
         The material for the background of opaque content.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case contentBackground(behindWindow: Bool)
        
        /**
         The material for under a window's background.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case underWindowBackground(behindWindow: Bool)

        /**
         The material for the area behind the pages of a document.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(macOS 10.16, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case underPageBackground(behindWindow: Bool)
        
    }
    
}
