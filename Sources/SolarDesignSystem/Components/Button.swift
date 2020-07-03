//
//  Button.swift
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

/// A button that has a rounded rectangle as a background.
public struct RoundedRectangleButtonStyle: ButtonStyle {
    
    // MARK: - Properties
    
    @Environment(\.theme) var theme: Theme
    
    public var compact: Bool
    
    // MARK: - Initialization
    
    public init(compact: Bool = false) {
        self.compact = compact
    }
    
    // MARK: - View

    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minHeight: compact ? 28 : 40)
            .font(.body)
            .background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(Color.accentColor))
            .opacity(configuration.isPressed ? 0.3 : 1.0)
            .foregroundColor(theme.systemColor.inverseLabel)
            .animation(.easeInOut(duration: configuration.isPressed ? 0.05 : 0.2))
    }
    
}

