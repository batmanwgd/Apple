//
//  VisualEffectView+VisualEffect+VibrancyEffect.swift
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
    
    public enum VibrancyEffect: Hashable {
        
        // MARK: - Standard Styles
        
        /// The default vibrancy style used by iOS, macOS, and tvOS.
        case `default`
        
        // MARK: - Label Styles
        
        /// A style for labels containing primary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case label
        
        /// A style for labels containing secondary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case secondaryLabel
        
        /// A style for labels containing tertiary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case tertiaryLabel
        
        /// A style for labels containing quaternary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case quaternaryLabel
        
        // MARK: - Fill Styles
        
        /// A style for views with large filled areas containing primary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case fill
        
        /// A style for views with large filled areas containing secondary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case secondaryFill
        
        /// A style for views with large filled areas containing tertiary content.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case tertiaryFill
        
        // MARK: - Separator Style
        
        /// A style for separator lines.
        @available(iOS 14.0, *)
        @available(tvOS, unavailable)
        @available(macOS, unavailable)
        case separator
        
    }
    
}
