//
//  ThemeColor.swift
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

import SwiftUI
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

/// The collection of customizable colors provided by the Solar Design System.
public struct ThemeColor {
    
    // MARK: - Main Colors
    
    /// The color for branded elements in their normal state.
    public var brand: Color
    
    /// The color for elements that are associated a positive trend or additive action in their normal state.
    public var positive: Color
    
    /// The color for elements that need to grab the user's attention in their normal state.
    public var callout: Color
    
    /// The color for elements that are associated with a neutral trend in their normal state.
    public var neutral: Color
    
    /// The color for elements that need to grab the user's attention in their normal state.
    public var warning: Color
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state.
    public var negative: Color
    
    // MARK: - Background Colors
    
    /// The background color for branded elements in their normal state.
    public var brandBackground: Color
    
    /// The background color for elements that are associated a positive trend or additive action in their normal state.
    public var positiveBackground: Color
    
    /// The background color for elements that need to grab the user's attention in their normal state.
    public var calloutBackground: Color
    
    /// The background color for elements that are associated with a neutral trend in their normal state.
    public var neutralBackground: Color
    
    /// The background color for elements that need to grab the user's attention in their normal state.
    public var warningBackground: Color
    
    /// The background color for elements that are associated a negative trend or destructive action in their normal state.
    public var negativeBackground: Color
    
    // MARK: - Initialization
    
    public init(
        brand: Color? = nil,
        positive: Color? = nil,
        callout: Color? = nil,
        neutral: Color? = nil,
        warning: Color? = nil,
        negative: Color? = nil,
        
        brandBackground: Color? = nil,
        positiveBackground: Color? = nil,
        calloutBackground: Color? = nil,
        neutralBackground: Color? = nil,
        warningBackground: Color? = nil,
        negativeBackground: Color? = nil
    ) {
        #if canImport(UIKit)
        
        self.brand = brand ?? Color(UIColor.systemIndigo)
        self.positive = positive ?? Color(UIColor.systemGreen)
        self.callout = callout ?? Color(UIColor.systemPurple)
        self.neutral = neutral ?? Color(UIColor.systemBlue)
        self.warning = warning ?? Color(UIColor.systemOrange)
        self.negative = negative ?? Color(UIColor.systemRed)
        
        self.brandBackground = brandBackground ?? Color(UIColor.systemIndigo.withAlphaComponent(0.20))
        self.positiveBackground = positiveBackground ?? Color(UIColor.systemGreen.withAlphaComponent(0.14))
        self.calloutBackground = calloutBackground ?? Color(UIColor.systemPurple.withAlphaComponent(0.20))
        self.neutralBackground = neutralBackground ?? Color(UIColor.systemBlue.withAlphaComponent(0.17))
        self.warningBackground = warningBackground ?? Color(UIColor.systemOrange.withAlphaComponent(0.15))
        self.negativeBackground = negativeBackground ?? Color(UIColor.systemRed.withAlphaComponent(0.17))
        
        #elseif canImport(AppKit)
        
        self.brand = brand ?? Color(NSColor.systemIndigo)
        self.positive = positive ?? Color(NSColor.systemGreen)
        self.callout = callout ?? Color(NSColor.systemPurple)
        self.neutral = neutral ?? Color(NSColor.systemBlue)
        self.warning = warning ?? Color(NSColor.systemOrange)
        self.negative = negative ?? Color(NSColor.systemRed)
        
        self.brandBackground = brandBackground ?? Color(NSColor.systemIndigo.withAlphaComponent(0.20))
        self.positiveBackground = positiveBackground ?? Color(NSColor.systemGreen.withAlphaComponent(0.14))
        self.calloutBackground = calloutBackground ?? Color(NSColor.systemPurple.withAlphaComponent(0.20))
        self.neutralBackground = neutralBackground ?? Color(NSColor.systemBlue.withAlphaComponent(0.17))
        self.warningBackground = warningBackground ?? Color(NSColor.systemOrange.withAlphaComponent(0.15))
        self.negativeBackground = negativeBackground ?? Color(NSColor.systemRed.withAlphaComponent(0.17))
        
        #endif
    }
}
