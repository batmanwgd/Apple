//
//  Style+Prominent.swift
//  Solar Design System
//
//  Created by Brandon McQuilkin on 8/22/20.
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

extension Style {
    
    /// A style for components that are a "call to action".
    public struct Prominent {
        
        // MARK: - Presets
        
        public static let Brand = BasicStyle(
            backgroundColor: \Theme.color.brand,
            foregroundColor: \Theme.systemColor.inverseLabel
        )
        
        public static let Positive = BasicStyle(
            backgroundColor: \Theme.color.positive,
            foregroundColor: \Theme.systemColor.inverseLabel
        )
        
        public static let Callout = BasicStyle(
            backgroundColor: \Theme.color.callout,
            foregroundColor: \Theme.systemColor.inverseLabel
        )
        
        public static let Neutral = BasicStyle(
            backgroundColor: \Theme.color.neutral,
            foregroundColor: \Theme.systemColor.inverseLabel
        )
        
        public static let Warning = BasicStyle(
            backgroundColor: \Theme.color.warning,
            foregroundColor: \Theme.systemColor.inverseLabel
        )
        
        public static let Negative = BasicStyle(
            backgroundColor: \Theme.color.negative,
            foregroundColor: \Theme.systemColor.inverseLabel
        )
        
    }
    
}
