//
//  CustomizeForOperatingSystem.swift
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

/// The various operating systems supported by the Solar Design Systems.
public enum OperatingSystem {
    
    // MARK: - Cases
    
    case iOS
    case macOS
    case tvOS
    case watchOS
    
    // MARK: - Properties
    
    #if os(iOS)
    static let current = iOS
    #elseif os(macOS)
    static let current = macOS
    #elseif os(tvOS)
    static let current = tvOS
    #elseif os(watchOS)
    static let current = watchOS
    #endif
    
}

extension View {
    
    /**
     Conditionally apply modifiers based on a target operating system..
     
     ```
     Text("Hello World!")
        .font(Font.system(size: 12.0))
        .customize(for: .tvOS, modifier: {
            $0.font(Font.system(size: 20.0))
        })
     ```
    */
    @ViewBuilder
    public func customize<Content: View>(for operatingSystems: OperatingSystem..., modifier: @escaping (Self) -> Content) -> some View {
        if operatingSystems.contains(OperatingSystem.current) {
            modifier(self)
        } else {
            self
        }
    }
    
}

struct CustomizeForOperatingSystem_Library: LibraryContentProvider {
    
    @LibraryContentBuilder
    func modifiers(base: Text) -> [LibraryItem] {
        LibraryItem(
            base
                .font(Font.system(size: 12.0))
                .customize(for: .tvOS, modifier: {
                    $0.font(Font.system(size: 20.0))
                }),
            visible: true,
            title: "Customize for Operating System",
            category: .other,
            matchingSignature: nil
        )
    }
    
}
