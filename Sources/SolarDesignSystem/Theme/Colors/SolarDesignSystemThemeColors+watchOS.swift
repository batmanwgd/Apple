//
//  SoloarDesignSystemThemeColors+watchOS.swift
//  Solar Design System
//
//  Created by Brandon McQuilkin on 2/7/20.
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

#if os(watchOS)
import UIKit
import SwiftUI

extension UIColor {
    
    // These colors are from Apple's watchOS design resources. I'm not sure why these aren't actually available.
    
    public static var systemRed: UIColor {
        UIColor(red: 255.0 / 255.0, green: 59.0 / 255.0, blue: 48.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemOrange: UIColor {
        UIColor(red: 255.0 / 255.0, green: 149.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemYellow: UIColor {
        UIColor(red: 255.0 / 255.0, green: 230.0 / 255.0, blue: 32.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemGreen: UIColor {
        UIColor(red: 4.0 / 255.0, green: 222.0 / 255.0, blue: 113.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemMint: UIColor {
        UIColor(red: 0.0 / 255.0, green: 245.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)
    }
    
    public static var tealBlue: UIColor {
        UIColor(red: 90.0 / 255.0, green: 200.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemBlue: UIColor {
        UIColor(red: 32.0 / 255.0, green: 148.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemIndigo: UIColor {
        UIColor(red: 94.0 / 255.0, green: 92.0 / 255.0, blue: 230.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemPurple: UIColor {
        UIColor(red: 120.0 / 255.0, green: 122.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemPink: UIColor {
        UIColor(red: 250.0 / 255.0, green: 17.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemGrey: UIColor {
        UIColor(red: 155.0 / 255.0, green: 160.0 / 255.0, blue: 170.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemTextGrey: UIColor {
        UIColor(red: 174.0 / 255.0, green: 180.0 / 255.0, blue: 191.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemBackground: UIColor {
        UIColor(red: 242.0 / 255.0, green: 244.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
}

open class SolarDesignSystemThemeColors: ThemeColors {

    // MARK: - System Labels
    
    /// The color for text labels that contain primary content.
    public let label: Color
    
    /// The color for text labels that contain secondary content.
    public let secondaryLabel: Color
    
    /// The color for labels that contain primary content layered on top of a tint color.
    public let inverseLabel: Color
    
    
    // MARK: - System Backgrounds
    
    /// The color for the main background of your interface.
    public let background: Color
    
    /// The color for content layered on top of the main background.
    public let secondaryBackground: Color
    
    /// The tint color for branded elements in their normal state layered on top of the main background.
    public let secondaryBrandBackground: Color
    
    /// The tint color for positive elements in their normal state layered on top of the main background.
    public let secondaryPositiveBackground: Color
    
    /// The tint color for elements that need to grab the user's attention in their normal state layered on top of the main background.
    public let secondaryCalloutBackground: Color
    
    /// The color for elements that are associated with a neutral trend in their normal state layered on top of the main background.
    public let secondaryNeutralBackground: Color
    
    /// The color for elements that require the user's attention in their normal state layered on top of the main background.
    public let secondaryWarningBackground: Color
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state layered on top of the main background.
    public let secondaryNegativeBackground: Color
    
    
    // MARK: - Separator
    
    /// The color for the main background of your interface.
    public let separator: Color
    

    // MARK: - Tints
    
    /// The tint color for content associated with branding.
    public let brand: Color
    
    /// The tint color for content associated with a positive action or value.
    public let positive: Color
    
    /// The color for elements that need to grab the user's attention in their normal state.
    public let callout: Color
    
    /// The tint color for content associated with neither a positive or negative action or value.
    public let neutral: Color
    
    /// The tint color for content that requires the user's attention.
    public let warning: Color
    
    /// The tint color for content associated with a negative action or value.
    public let negative: Color


    // MARK: - Initialization
    
    public init(
        label: Color = Color(UIColor.white),
        secondaryLabel: Color = Color(UIColor.systemTextGrey),
        inverseLabel: Color = Color(UIColor.black),
        
        background: Color = Color(UIColor.black),
        secondaryBackground: Color = Color(UIColor.systemBackground.withAlphaComponent(0.14)),
        secondaryBrandBackground: Color = Color(UIColor.systemIndigo.withAlphaComponent(0.20)),
        secondaryPositiveBackground: Color = Color(UIColor.systemGreen.withAlphaComponent(0.14)),
        secondaryCalloutBackground: Color = Color(UIColor.systemPurple.withAlphaComponent(0.20)),
        secondaryNeutralBackground: Color = Color(UIColor.systemBlue.withAlphaComponent(0.17)),
        secondaryWarningBackground: Color = Color(UIColor.systemOrange.withAlphaComponent(0.15)),
        secondaryNegativeBackground: Color = Color(UIColor.systemRed.withAlphaComponent(0.17)),
        
        separator: Color = Color(UIColor.darkGray),
        
        brand: Color = Color(UIColor.systemIndigo),
        positive: Color = Color(UIColor.systemGreen),
        callout: Color = Color(UIColor.systemPurple),
        neutral: Color = Color(UIColor.systemBlue),
        warning: Color = Color(UIColor.systemOrange),
        negative: Color = Color(UIColor.systemRed)
    ) {
        self.label = label
        self.secondaryLabel = secondaryLabel
        self.inverseLabel = inverseLabel
        
        self.background = background
        self.secondaryBackground = secondaryBackground
        self.secondaryBrandBackground = secondaryBrandBackground
        self.secondaryPositiveBackground = secondaryPositiveBackground
        self.secondaryCalloutBackground = secondaryCalloutBackground
        self.secondaryNeutralBackground = secondaryNeutralBackground
        self.secondaryWarningBackground = secondaryWarningBackground
        self.secondaryNegativeBackground = secondaryNegativeBackground
        
        self.separator = separator
        
        self.brand = brand
        self.positive = positive
        self.callout = callout
        self.neutral = neutral
        self.warning = warning
        self.negative = negative
    }
    
}
#endif

