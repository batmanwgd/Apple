//
//  VisualEffectView+VisualEffect.swift
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

#if !os(watchOS) && canImport(UIKit)
import UIKit
#elseif os(macOS)
import AppKit
#endif

@available(macOS 11, iOS 14.0, tvOS 14.0, *)
@available(watchOS, unavailable)
public enum VisualEffect: Hashable {
    
    // MARK: - Cases
    
    /// A visual effect that adapts to the current environment.
    @available(macOS 11, iOS 14.0, tvOS 14.0, *)
    case adaptive(blurEffect: BlurEffect, vibrancyEffect: VibrancyEffect? = nil, blendingMode: BlendingMode = .withinWindow)
    
    /// A visual effect that uses light colors.
    @available(macOS 11, iOS 14.0, tvOS 14.0, *)
    case light(blurEffect: BlurEffect, vibrancyEffect: VibrancyEffect? = nil, blendingMode: BlendingMode = .withinWindow)
    
    /// A visual effect that uses dark colors.
    @available(macOS 11, iOS 14.0, tvOS 14.0, *)
    case dark(blurEffect: BlurEffect, vibrancyEffect: VibrancyEffect? = nil, blendingMode: BlendingMode = .withinWindow)
    
    // MARK: - Platform Conversion
    
    #if os(iOS)
    
    internal var platformBlurEffect: UIBlurEffect {
        switch self {
        case let .adaptive(blurEffect, _, _):
            switch blurEffect {
            case .ultraThinMaterial:
                return UIBlurEffect(style: .systemUltraThinMaterial)
            case .thinMaterial:
                return UIBlurEffect(style: .systemThinMaterial)
            case .material:
                return UIBlurEffect(style: .systemMaterial)
            case .thickMaterial:
                return UIBlurEffect(style: .systemThickMaterial)
            case .chromeMaterial:
                return UIBlurEffect(style: .systemChromeMaterial)
            }
        case let .light(blurEffect, _, _):
            switch blurEffect {
            case .ultraThinMaterial:
                return UIBlurEffect(style: .systemUltraThinMaterialLight)
            case .thinMaterial:
                return UIBlurEffect(style: .systemThinMaterialLight)
            case .material:
                return UIBlurEffect(style: .systemMaterialLight)
            case .thickMaterial:
                return UIBlurEffect(style: .systemThickMaterialLight)
            case .chromeMaterial:
                return UIBlurEffect(style: .systemChromeMaterialLight)
            }
        case let .dark(blurEffect, _, _):
            switch blurEffect {
            case .ultraThinMaterial:
                return UIBlurEffect(style: .systemUltraThinMaterialDark)
            case .thinMaterial:
                return UIBlurEffect(style: .systemThinMaterialDark)
            case .material:
                return UIBlurEffect(style: .systemMaterialDark)
            case .thickMaterial:
                return UIBlurEffect(style: .systemThickMaterialDark)
            case .chromeMaterial:
                return UIBlurEffect(style: .systemChromeMaterialDark)
            }
        }
    }
    
    internal var platformVibrancyEffect: UIVibrancyEffect? {
        switch self {
        case let .adaptive(_, vibrancyEffect, _), let .light(_, vibrancyEffect, _), let .dark(_, vibrancyEffect, _):
            guard let vibrancyEffect = vibrancyEffect else {
                return nil
            }
            
            switch vibrancyEffect {
            case .default:
                return UIVibrancyEffect(blurEffect: platformBlurEffect)
            case .label:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .label)
            case .secondaryLabel:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .secondaryLabel)
            case .tertiaryLabel:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .tertiaryLabel)
            case .quaternaryLabel:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .quaternaryLabel)
            case .fill:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .fill)
            case .secondaryFill:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .secondaryFill)
            case .tertiaryFill:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .tertiaryFill)
            case .separator:
                return UIVibrancyEffect(blurEffect: platformBlurEffect, style: .separator)
            }
        }
    }
    
    #elseif os(tvOS)
    
    internal var platformBlurEffect: UIBlurEffect {
        switch self {
        case let .adaptive(blurEffect, _, _):
            switch blurEffect {
            case .regular:
                return UIBlurEffect(style: .regular)
            case .prominent:
                return UIBlurEffect(style: .prominent)
            }
        case let .light(blurEffect, _, _):
            switch blurEffect {
            case .regular:
                return UIBlurEffect(style: .light)
            case .prominent:
                return UIBlurEffect(style: .extraLight)
            }
        case let .dark(blurEffect, _, _):
            switch blurEffect {
            case .regular:
                return UIBlurEffect(style: .dark)
            case .prominent:
                return UIBlurEffect(style: .extraDark)
            }
        }
    }
    
    internal var platformVibrancyEffect: UIVibrancyEffect? {
        switch self {
        case let .adaptive(_, vibrancyEffect, _), let .light(_, vibrancyEffect, _), let .dark(_, vibrancyEffect, _):
            guard let _ = vibrancyEffect else {
                return nil
            }
            
            return UIVibrancyEffect(blurEffect: platformBlurEffect)
        }
    }
    
    #elseif os(macOS)
    
    internal var platformMaterial: NSVisualEffectView.Material {
        switch self {
        case let .adaptive(blurEffect, _, _), let .light(blurEffect, _, _), let .dark(blurEffect, _, _):
            switch blurEffect {
            case .titlebar:
                return .titlebar
            case .selection:
                return .selection
            case .menu:
                return .menu
            case .popover:
                return .popover
            case .sidebar:
                return .sidebar
            case .headerView:
                return .headerView
            case .sheet:
                return .sheet
            case .windowBackground:
                return .windowBackground
            case .hudWindow:
                return .hudWindow
            case .fullScreenUI:
                return .fullScreenUI
            case .toolTip:
                return .toolTip
            case .contentBackground:
                return .contentBackground
            case .underWindowBackground:
                return .underWindowBackground
            case .underPageBackground:
                return .underPageBackground
            }
        }
    }
    
    internal var platformAppearance: NSAppearance {
        switch self {
        case let .adaptive(_, vibrancy, _):
            if let _ = vibrancy {
                if isHighContrast {
                    return NSAppearance(named: isDark ? .accessibilityHighContrastVibrantDark: .accessibilityHighContrastVibrantLight)!
                }
                return NSAppearance(named: isDark ? .vibrantDark : .vibrantLight)!
            } else {
                if isHighContrast {
                    return NSAppearance(named: isDark ? .accessibilityHighContrastDarkAqua : .accessibilityHighContrastAqua)!
                }
                return NSAppearance(named: isDark ? .darkAqua : .aqua)!
            }
        case let .light(_, vibrancy, _):
            if let _ = vibrancy {
                if isHighContrast {
                    return NSAppearance(named: .accessibilityHighContrastVibrantLight)!
                }
                return NSAppearance(named: .vibrantLight)!
            } else {
                if isHighContrast {
                    return NSAppearance(named: .accessibilityHighContrastAqua)!
                }
                return NSAppearance(named: .aqua)!
            }
        case let .dark(_, vibrancy, _):
            if let _ = vibrancy {
                if isHighContrast {
                    return NSAppearance(named: .accessibilityHighContrastVibrantDark)!
                }
                return NSAppearance(named: .vibrantDark)!
            } else {
                if isHighContrast {
                    return NSAppearance(named: .accessibilityHighContrastDarkAqua)!
                }
                return NSAppearance(named: .darkAqua)!
            }
        }
    }
    
    internal var platformBlendingMode: NSVisualEffectView.BlendingMode {
        switch self {
        case let .adaptive(_, _, blendingMode), let .light(_, _, blendingMode), let .dark(_, _, blendingMode):
            switch blendingMode {
            case .withinWindow:
                return .withinWindow
            case .behindWindow:
                return .behindWindow
            }
        }
    }
    
    private var isHighContrast: Bool {
        let highContrastAppearances: [NSAppearance.Name] = [
            .accessibilityHighContrastAqua,
            .accessibilityHighContrastDarkAqua,
            .accessibilityHighContrastVibrantLight,
            .accessibilityHighContrastVibrantDark
        ]
        
        return highContrastAppearances.contains(NSAppearance.current.name)
    }
    
    private var isDark: Bool {
        let darkAppearances: [NSAppearance.Name] = [
            .darkAqua,
            .accessibilityHighContrastDarkAqua,
            .vibrantDark,
            .accessibilityHighContrastVibrantDark
        ]
        
        return darkAppearances.contains(NSAppearance.current.name)
    }
    
    #endif
}

