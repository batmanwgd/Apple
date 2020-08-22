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

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
@available(watchOS, unavailable)
extension VisualEffect {
    
    /**
     The material types available for the visual effect view.
     On iOS and tvOS, this uses material types to specify the desired effect, while on macOS the materials are specified semantically based on their expected use case.
    */
    public enum BlurEffect: Hashable {
        
        // MARK: - General Materials

        /// An adaptable blur effect that creates the appearance of an ultra-thin material.
        @available(iOS 14.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        case ultraThinMaterial

        /// An adaptable blur effect that creates the appearance of a thin material.
        @available(iOS 14.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        case thinMaterial
        
        /// An adaptable blur effect that creates the appearance of a material with normal thickness.
        @available(iOS 14.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        case material

        /// An adaptable blur effect that creates the appearance of a material that is thicker than normal.
        @available(iOS 14.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        case thickMaterial

        /// An adaptable blur effect that creates the appearance of the system chrome.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case chromeMaterial
        
        /// A regular blur style that adapts to the user interface style.
        @available(tvOS 14.0, *)
        @available(iOS, unavailable)
        @available(macOS, unavailable)
        case regular
        
        /// A blur style for making content more prominent that adapts to the user interface style.
        @available(tvOS 14.0, *)
        @available(iOS, unavailable)
        @available(macOS, unavailable)
        case prominent
        
        // MARK: - Semantic Materials
        
        /// The material for a window’s titlebar.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case titlebar
        
        /// The material used to indicate a selection.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case selection
        
        /// The material for menus.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case menu
        
        /// The material for the background of popover windows.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case popover
        
        /// The material for the background of window sidebars.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case sidebar
        
        /// The material for in-line header or footer views.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case headerView
        
        /// The material for the background of sheet windows.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case sheet
        
        /// The material for the background of opaque windows.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case windowBackground

        /// The material for the background of heads-up display (HUD) windows.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case hudWindow

        /// The material for the background of a full-screen modal interface.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case fullScreenUI
        
        /// The material for the background of a tool tip.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case toolTip

        /// The material for the background of opaque content.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case contentBackground
        
        /// The material for under a window's background.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case underWindowBackground

        /// The material for the area behind the pages of a document.
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case underPageBackground
        
    }
    
}
