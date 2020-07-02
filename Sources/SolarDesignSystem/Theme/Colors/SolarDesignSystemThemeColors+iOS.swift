//
//  SoloarDesignSystemThemeColors+iOS.swift
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

#if os(iOS)
import UIKit
import SwiftUI

open class SolarDesignSystemThemeColors: ThemeColors {

    // MARK: - System Labels
    
    /// The color for text labels that contain primary content.
    public let label: Color
    
    /// The color for text labels that contain secondary content.
    public let secondaryLabel: Color
    
    /// The color for text labels that contain tertiary content.
    public let tertiaryLabel: Color
    
    /// The color for text labels that contain quaternary content.
    public let quaternaryLabel: Color
    
    /// The color for labels that contain primary content layered on top of a tint color.
    public let inverseLabel: Color
    
    
    // MARK: - System Fills
    
    /// An overlay fill color for thin and small shapes.
    public let fill: Color
    
    /// An overlay fill color for medium-size shapes.
    public let secondaryFill: Color
    
    /// An overlay fill color for large shapes.
    public let tertiaryFill: Color
    
    /// An overlay fill color for large areas that contain complex content.
    public let quaternaryFill: Color
    
    
    
    // MARK: - System Text Colors
    
    /// The color for placeholder text in controls or text views.
    public let placeholderText: Color
    
    
    // MARK: - Content Colors
    
    /// The color to use for links.
    public var link: Color
    
    
    // MARK: - System Backgrounds
    
    /// The color for the main background of your interface.
    public let background: Color
    
    /// The color for content layered on top of the main background.
    public let secondaryBackground: Color
    
    /// The color for content layered on top of secondary backgrounds.
    public let tertiaryBackground: Color
    
    /// The color for the main background of your grouped interface.
    public let groupedBackground: Color
    
    /// The color for content layered on top of the main background of your grouped interface.
    public let secondaryGroupedBackground: Color
    
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    public let tertiaryGroupedBackground: Color
    
    
    
    // MARK: - System Separators
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    public let separator: Color
    
    /// The color for borders or divider lines that hides any underlying content.
    public let opaqueSeparator: Color
    
    
    
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
        label: Color = Color(UIColor.label),
        secondaryLabel: Color = Color(UIColor.secondaryLabel),
        tertiaryLabel: Color = Color(UIColor.tertiaryLabel),
        quaternaryLabel: Color = Color(UIColor.quaternaryLabel),
        inverseLabel: Color = Color(UIColor(dynamicProvider: { (traits) -> UIColor in
            switch traits.userInterfaceStyle {
            case .light, .unspecified:
                return .white
            case .dark:
                return .black
            @unknown default:
                return .white
            }
        })),
        
        fill: Color = Color(UIColor.systemFill),
        secondaryFill: Color = Color(UIColor.secondarySystemFill),
        tertiaryFill: Color = Color(UIColor.tertiarySystemFill),
        quaternaryFill: Color = Color(UIColor.quaternarySystemFill),
        
        placeholderText: Color = Color(UIColor.placeholderText),
        
        link: Color = Color(UIColor.link),
        
        background: Color = Color(UIColor.systemBackground),
        secondaryBackground: Color = Color(UIColor.secondarySystemBackground),
        tertiaryBackground: Color = Color(UIColor.tertiarySystemBackground),
        groupedBackground: Color = Color(UIColor.systemGroupedBackground),
        secondaryGroupedBackground: Color = Color(UIColor.secondarySystemGroupedBackground),
        tertiaryGroupedBackground: Color = Color(UIColor.tertiarySystemGroupedBackground),
        
        separator: Color = Color(UIColor.separator),
        opaqueSeparator: Color = Color(UIColor.opaqueSeparator),
        
        brand: Color = Color(UIColor.systemIndigo),
        positive: Color = Color(UIColor.systemGreen),
        callout: Color = Color(UIColor.systemPurple),
        neutral: Color = Color(UIColor.systemBlue),
        warning: Color = Color(UIColor.systemOrange),
        negative: Color = Color(UIColor.systemRed)
    ) {
        self.label = label
        self.secondaryLabel = secondaryLabel
        self.tertiaryLabel = tertiaryLabel
        self.quaternaryLabel = quaternaryLabel
        self.inverseLabel = inverseLabel
        
        self.fill = fill
        self.secondaryFill = secondaryFill
        self.tertiaryFill = tertiaryFill
        self.quaternaryFill = quaternaryFill
        
        self.placeholderText = placeholderText
        
        self.link = link
        
        self.background = background
        self.secondaryBackground = secondaryBackground
        self.tertiaryBackground = tertiaryBackground
        self.groupedBackground = groupedBackground
        self.secondaryGroupedBackground = secondaryGroupedBackground
        self.tertiaryGroupedBackground = tertiaryGroupedBackground
        
        self.separator = separator
        self.opaqueSeparator = opaqueSeparator
        
        self.brand = brand
        self.positive = positive
        self.callout = callout
        self.neutral = neutral
        self.warning = warning
        self.negative = negative
    }
    
    
}
#endif
