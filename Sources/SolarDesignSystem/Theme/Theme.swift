//
//  Theme.swift
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

/// The base theme for the Solar Design System.
public struct Theme {
    
    // MARK: - Properties
    
    /// The semantic colors provided by the operating system.
    public var systemColor: SystemColor
    
    /// The semantic colos provided by the Solar Design System.
    public var color: ThemeColor
    
    // MARK: - Initalization
    
    public init(color: ThemeColor, systemColor: SystemColor) {
        self.color = color
        self.systemColor = systemColor
    }
    
}


extension Theme {

    public func `for`(_ keyPath: KeyPath<Theme, Color>?) -> Color {
        guard let keyPath = keyPath else {
            return .clear
        }
        return self[keyPath: keyPath]
    }

}
