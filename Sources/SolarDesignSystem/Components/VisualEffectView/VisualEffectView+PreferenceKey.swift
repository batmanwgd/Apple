//
//  VisualEffectView+Preference.swift
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

@available(macOS 10.16, iOS 14.0, tvOS 14.0, *)
@available(watchOS, unavailable)
public struct VisualEffectPreferenceKey: PreferenceKey {
    
    // MARK: - Properties
    
    public static var defaultValue: VisualEffect? = nil
    
    #if os(iOS)
    private static let vibrancyEffectOrder: [VisualEffect.VibrancyEffect] = [
        .default,
        .label,
        .fill,
        .secondaryLabel,
        .secondaryFill,
        .tertiaryLabel,
        .tertiaryFill,
        .quaternaryLabel,
        .separator
    ]
    #elseif os(tvOS) || os(macOS)
    private static let vibrancyEffectOrder: [VisualEffect.VibrancyEffect] = [
        .default
    ]
    #endif
    
    #if os(iOS)
    private static let blurEffectOrder: [VisualEffect.BlurEffect] = [
        .chromeMaterial,
        .thickMaterial,
        .material,
        .thinMaterial,
        .ultraThinMaterial
    ]
    #elseif os(tvOS)
    private static let blurEffectOrder: [VisualEffect.BlurEffect] = [
        .prominent,
        .regular
    ]
    #elseif os(macOS)
    private static let blurEffectOrder: [VisualEffect.BlurEffect] = [
        .titlebar,
        .menu,
        .popover,
        .selection,
        .headerView(behindWindow: false),
        .headerView(behindWindow: true),
        .sheet,
        .windowBackground,
        .hudWindow,
        .fullScreenUI,
        .toolTip,
        .contentBackground(behindWindow: false),
        .underPageBackground(behindWindow: false),
        .underPageBackground(behindWindow: false),
        .contentBackground(behindWindow: true),
        .underPageBackground(behindWindow: true),
        .underPageBackground(behindWindow: true),
    ]
    #endif
    
    // MARK: - Reduce
    
    public static func reduce(value: inout VisualEffect?, nextValue: () -> VisualEffect?) {
        #if os(iOS) || os(tvOS) || os(macOS)
        guard let effectA = value else {
            value = nextValue()
            return
        }
        
        guard let effectB = nextValue() else {
            return
        }
        
        // Try to find the most adaptable visual effect with the highest contrast.
        let blurEffectA: VisualEffect.BlurEffect
        let vibrancyEffectA: VisualEffect.VibrancyEffect?
        let blurEffectB: VisualEffect.BlurEffect
        let vibrancyEffectB: VisualEffect.VibrancyEffect?
        
        switch effectA {
            case let .adaptive(blurEffect, vibrancyEffect), let .light(blurEffect, vibrancyEffect), let .dark(blurEffect, vibrancyEffect):
                blurEffectA = blurEffect
                vibrancyEffectA = vibrancyEffect
        }
        switch effectB {
            case let .adaptive(blurEffect, vibrancyEffect), let .light(blurEffect, vibrancyEffect), let .dark(blurEffect, vibrancyEffect):
                blurEffectB = blurEffect
                vibrancyEffectB = vibrancyEffect
        }
        
        let blurEffectIndexA = blurEffectOrder.firstIndex(of: blurEffectA)!
        let blurEffectIndexB = blurEffectOrder.firstIndex(of: blurEffectB)!
        let finalBlurEffect = blurEffectIndexA < blurEffectIndexB ? blurEffectA : blurEffectB

        let finalVibrancyEffect: VisualEffect.VibrancyEffect?
        if let vibrancyEffectA = vibrancyEffectA, let vibrancyEffectB = vibrancyEffectB {
            let vibrancyEffectIndexA = vibrancyEffectOrder.firstIndex(of: vibrancyEffectA)!
            let vibrancyEffectIndexB = vibrancyEffectOrder.firstIndex(of: vibrancyEffectB)!
            finalVibrancyEffect = vibrancyEffectIndexA < vibrancyEffectIndexB ? vibrancyEffectA : vibrancyEffectB
        } else {
            finalVibrancyEffect = vibrancyEffectA ?? vibrancyEffectB
        }
        
        switch (effectA, effectB) {
        case (.adaptive(_, _), _), (_, .adaptive(_, _)):
            value = .adaptive(finalBlurEffect, finalVibrancyEffect)
            break
        case (.light(_, _), _), (_, .light(_, _)):
            value = .light(finalBlurEffect, finalVibrancyEffect)
            break
        case (.dark(_, _), _), (_, .dark(_, _)):
            value = .dark(finalBlurEffect, finalVibrancyEffect)
            break
        }
        #endif
    }
    
}
