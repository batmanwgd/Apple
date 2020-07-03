//
//  VisualEffectView+VisualEffect.swift
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

/// Describes a visual effect to be applied to the background of a view, typically to provide a blurred rendition of the content below the view in z-order.
@available(OSX 10.15, iOS 13.0, tvOS 13.0, *)
@available(watchOS, unavailable)
public enum VisualEffect: Equatable, Hashable {
    
    // MARK: - Constants
    
    /**
     The material types available for the effect.
     On iOS and tvOS, this uses material types to specify the desired effect, while on macOS the materials are specified semantically based on their expected use case.
    */
    public enum Material: Equatable, Hashable {
        
        // MARK: - General Materials

        /// An adaptable blur effect that creates the appearance of an ultra-thin material.
        @available(iOS 13.0, tvOS 13.0, *)
        @available(OSX, unavailable)
        case ultraThin

        /// An adaptable blur effect that creates the appearance of a thin material.
        @available(iOS 13.0, tvOS 13.0, *)
        @available(OSX, unavailable)
        case thin
        
        /// An adaptable blur effect that creates the appearance of a material with normal thickness.
        @available(OSX 10.15, iOS 13.0, tvOS 13.0, *)
        case `default`

        /// An adaptable blur effect that creates the appearance of a material that is thicker than normal.
        @available(iOS 13.0, tvOS 13.0, *)
        @available(OSX, unavailable)
        case thick

        /// An adaptable blur effect that creates the appearance of the system chrome.
        @available(iOS 13.0, tvOS 13.0, *)
        @available(OSX, unavailable)
        case chrome
        
        // MARK: - Semantic Materials
        
        /// The material for a window’s titlebar.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case titlebar
        
        /// The material used to indicate a selection.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case selection
        
        /// The material for menus.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case menu
        
        /// The material for the background of popover windows.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case popover
        
        /**
         The material for in-line header or footer views.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case headerView(behindWindow: Bool)
        
        /// The material for the background of sheet windows.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case sheet
        
        /// The material for the background of opaque windows.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case windowBackground

        /// The material for the background of heads-up display (HUD) windows.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case hudWindow

        /// The material for the background of a full-screen modal interface.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case fullScreenUI
        
        /// The material for the background of a tool tip.
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case toolTip

        /**
         The material for the background of opaque content.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case contentBackground(behindWindow: Bool)
        
        /**
         The material for under a window's background.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case underWindowBackground(behindWindow: Bool)

        /**
         The material for the area behind the pages of a document.
         - parameter behindWindow: `true` if the effect should use the content behind the window, `false` to use content within the window at a lower z-order.
        */
        @available(OSX 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(macCatalyst, unavailable)
        case underPageBackground(behindWindow: Bool)
    }
    
    // MARK: - Cases

    /// An adaptive effect with the given material that changes to match
    /// the current `ColorScheme`.
    case adaptive(Material)
    /// An effect that uses the given material with the system light appearance.
    case light(Material)
    /// An effect that uses the given material with the system dark appearance.
    case dark(Material)
}

// MARK: - Kit Conversion

#if os(iOS) || targetEnvironment(macCatalyst)

extension VisualEffect {
    
    /// Creates a matching `UIVisualEffect`.
    var visualEffect: UIVisualEffect {
        UIBlurEffect(style: self.blurStyle)
    }

    private var blurStyle: UIBlurEffect.Style {
        switch self {
        case .adaptive(let material):
            switch material {
            case .ultraThin:
                return .systemUltraThinMaterial
            case .thin:
                return .systemThinMaterial
            case .default:
                return .systemMaterial
            case .thick:
                return .systemThickMaterial
            case .chrome:
                return .systemChromeMaterial
            }
        case .light(let material):
            switch material {
            case .ultraThin:
                return .systemUltraThinMaterialLight
            case .thin:
                return .systemThinMaterialLight
            case .default:
                return .systemMaterialLight
            case .thick:
                return .systemThickMaterialLight
            case .chrome:
                return .systemChromeMaterialLight
            }
        case .dark(let material):
            switch material {
            case .ultraThin:
                return .systemUltraThinMaterialDark
            case .thin:
                return .systemThinMaterialDark
            case .default:
                return .systemMaterialDark
            case .thick:
                return .systemThickMaterialDark
            case .chrome:
                return .systemChromeMaterialDark
            }
        }
    }
    
}

#elseif os(tvOS)

extension VisualEffect {
    
    /// Creates a matching `UIVisualEffect`.
    var visualEffect: UIVisualEffect {
        switch self {
        case .adaptive(let material):
            switch material {
            case .thick:
                return UIBlurEffect(style: .prominent)
            case .thin, .ultraThin, .chrome, .default:
                return UIBlurEffect(style: .regular)
            }
        case .light(let material):
            switch material {
            case .thick:
                return UIBlurEffect(style: .extraLight)
            case .thin, .ultraThin, .chrome, .default:
                return UIBlurEffect(style: .light)
            }
        case .dark(let material):
            switch material {
            case .thick:
                return UIBlurEffect(style: .extraDark)
            case .thin, .ultraThin, .chrome, .default:
                return UIBlurEffect(style: .dark)
            }
        }
    }
    
}

#elseif os(macOS)

extension VisualEffect {
    
    /// A type describing the values passed to an `NSVisualEffectView`.
    struct NSEffectParameters {
        var material: NSVisualEffectView.Material = .contentBackground
        var blendingMode: NSVisualEffectView.BlendingMode = .behindWindow
        var appearance: NSAppearance? = nil
    }
    
    /// Creates a matching `NSEffectParameters`.
    var parameters: NSEffectParameters {
        switch self {
        case .adaptive:
            return NSEffectParameters(material: self.material, blendingMode: self.blendingMode)
        case .light:
            return NSEffectParameters(material: self.material, blendingMode: self.blendingMode, appearance: NSAppearance(named: .aqua))
        case .dark:
            return NSEffectParameters(material: self.material, blendingMode: self.blendingMode,  appearance: NSAppearance(named: .darkAqua))
        }
    }

    private var material: NSVisualEffectView.Material {
        switch self {
        case .adaptive(let material), .light(let material), .dark(let material):
            switch material {
            case .default, .contentBackground:
                return .contentBackground
            case .titlebar:
                return .titlebar
            case .headerView:
                return .headerView
            case .underPageBackground:
                return .underPageBackground
            case .windowBackground:
                return .windowBackground
            case .selection:
                return .selection
            case .menu:
                return .menu
            case .popover:
                return .popover
            case .sheet:
                return .sheet
            case .hudWindow:
                return .hudWindow
            case .fullScreenUI:
                return .fullScreenUI
            case .toolTip:
                return .toolTip
            case .underWindowBackground:
                return .underWindowBackground
            }
        }
    }

    private var blendingMode: NSVisualEffectView.BlendingMode {
        switch self {
        case .adaptive(let material), .light(let material), .dark(let material):
            switch material {
            case .default, .windowBackground, .selection:
                return .behindWindow
            case .titlebar, .menu, .popover, .sheet, .hudWindow, .fullScreenUI, .toolTip:
                return .withinWindow
            case .contentBackground(let b), .headerView(let b), .underPageBackground(let b), .underWindowBackground(let b):
                return b ? .behindWindow : .withinWindow
            }
        }
    }
    
}

#endif
