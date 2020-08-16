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
#endif

public enum VisualEffect: Hashable {
    
    // MARK: - Cases
    
    /// A visual effect that adapts to the current environment.
    case adaptive(BlurEffect, VibrancyEffect? = nil)
    
    /// A visual effect that uses light colors.
    case light(BlurEffect, VibrancyEffect? = nil)
    
    /// A visual effect that uses dark colors.
    case dark(BlurEffect, VibrancyEffect? = nil)
    
    // MARK: - Platform Conversion
    
    #if !os(watchOS) && canImport(UIKit)
    
    internal var platformBlurEffect: UIBlurEffect {
        switch self {
        case let .adaptive(blurEffect, _):
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
        case let .light(blurEffect, _):
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
        case let .dark(blurEffect, _):
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
        case let .adaptive(_, vibrancyEffect), let .light(_, vibrancyEffect), let .dark(_, vibrancyEffect):
            guard let vibrancyEffect = vibrancyEffect else {
                return nil
            }
            
            #if os(tvOS)
            return UIVibrancyEffect(blur: platformBlurEffect)
            #else
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
            #endif
        }
    }
    
    #endif
    
}
