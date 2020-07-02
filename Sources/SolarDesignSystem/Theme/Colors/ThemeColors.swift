//
//  ThemeColors.swift
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

// MARK: - iOS
#if os(iOS)

public protocol PhoneThemeColors {
    
    // MARK: - Labels
    
    /// The color for text labels that contain primary content.
    var label: Color { get }
    
    /// The color for text labels that contain secondary content.
    var secondaryLabel: Color { get }
    
    /// The color for text labels that contain tertiary content.
    var tertiaryLabel: Color { get }
    
    /// The color for text labels that contain quaternary content.
    var quaternaryLabel: Color { get }
    
    /// The color for labels that contain primary content layered on top of a tint color.
    var inverseLabel: Color { get }

    // MARK: - Fills
    
    /// An overlay fill color for thin and small shapes.
    var fill: Color { get }
    
    /// An overlay fill color for medium-size shapes.
    var secondaryFill: Color { get }
    
    /// An overlay fill color for large shapes.
    var tertiaryFill: Color { get }
    
    /// An overlay fill color for large areas that contain complex content.
    var quaternaryFill: Color { get }
    
    
    // MARK: - Text Colors
    
    /// The color for placeholder text in controls or text views.
    var placeholderText: Color { get }
    
    
    // MARK: - Content Colors
    
    /// The color to use for links.
    var link: Color { get }
    
    
    // MARK: - Backgrounds
    
    /// The color for the main background of your interface.
    var background: Color { get }
    
    /// The color for content layered on top of the main background.
    var secondaryBackground: Color { get }
    
    /// The color for content layered on top of secondary backgrounds.
    var tertiaryBackground: Color { get }
    
    /// The color for the main background of your grouped interface.
    var groupedBackground: Color { get }
    
    /// The color for content layered on top of the main background of your grouped interface.
    var secondaryGroupedBackground: Color { get }
    
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    var tertiaryGroupedBackground: Color { get }
    
    
    // MARK: - Separators
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    var separator: Color { get }
    
    /// The color for borders or divider lines that hides any underlying content.
    var opaqueSeparator: Color { get }
    
    
    // MARK: - Tints
    
    /// The tint color for branded elements in their normal state.
    var brand: Color { get }
    
    /// The color for elements that are associated a positive trend or additive action in their normal state.
    var positive: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var callout: Color { get }
    
    /// The color for elements that are associated with a neutral trend in their normal state.
    var neutral: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var warning: Color { get }
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state.
    var negative: Color { get }
    
}

public typealias ThemeColors = PhoneThemeColors

#elseif os(watchOS)

public protocol WatchThemeColors {
    
    // MARK: - Labels
    
    /// The color for text labels that contain primary content.
    var label: Color { get }
    
    /// The color for text labels that contain secondary content.
    var secondaryLabel: Color { get }
    
    /// The color for labels that contain primary content layered on top of a tint color.
    var inverseLabel: Color { get }
    
    
    // MARK: - Backgrounds
    
    /// The color for the main background of your interface.
    var background: Color { get }
    
    /// The color for content layered on top of the main background.
    var secondaryBackground: Color { get }
    
    /// The tint color for branded elements in their normal state layered on top of the main background.
    var secondaryBrandBackground: Color { get }
    
    /// The tint color for positive elements in their normal state layered on top of the main background.
    var secondaryPositiveBackground: Color { get }
    
    /// The tint color for elements that need to grab the user's attention in their normal state layered on top of the main background.
    var secondaryCalloutBackground: Color { get }
    
    /// The color for elements that are associated with a neutral trend in their normal state layered on top of the main background. This color is only to be used when paired with an element that is tinted with the `positive` or `negative` colors. For all other use cases, use `action`
    var secondaryNeutralBackground: Color { get }
    
    /// The color for elements that require the user's attention in their normal state layered on top of the main background.
    var secondaryWarningBackground: Color { get }
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state layered on top of the main background.
    var secondaryNegativeBackground: Color { get }
    

    // MARK: - Separators
    
    /// The color for thin borders or divider lines.
    var separator: Color { get }
    
    
    // MARK: - Tints
    
    /// The tint color for branded elements in their normal state.
    var brand: Color { get }
    
    /// The color for elements that are associated a positive trend or additive action in their normal state.
    var positive: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var callout: Color { get }
    
    /// The color for elements that are associated with a neutral trend in their normal state.
    var neutral: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var warning: Color { get }
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state.
    var negative: Color { get }
    
}

public typealias ThemeColors = WatchThemeColors

#elseif os(tvOS)

public protocol TvThemeColors {
    
    // MARK: - Labels
    
    /// The color for text labels that contain primary content.
    var label: Color { get }
    
    /// The color for text labels that contain secondary content.
    var secondaryLabel: Color { get }
    
    /// The color for text labels that contain tertiary content.
    var tertiaryLabel: Color { get }
    
    /// The color for text labels that contain quaternary content.
    var quaternaryLabel: Color { get }
    
    /// The color for labels that contain primary content layered on top of a tint color.
    var inverseLabel: Color { get }
    
    
    // MARK: - Text Colors
    
    /// The color for placeholder text in controls or text views.
    var placeholderText: Color { get }
    
    
    // MARK: - Content Colors
    
    /// The color to use for links.
    var link: Color { get }
    
    
    // MARK: - Separators
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    var separator: Color { get }
    
    /// The color for borders or divider lines that hides any underlying content.
    var opaqueSeparator: Color { get }
    
    
    // MARK: - Tints
    
    /// The tint color for branded elements in their normal state.
    var brand: Color { get }
    
    /// The color for elements that are associated a positive trend or additive action in their normal state.
    var positive: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var callout: Color { get }
    
    /// The color for elements that are associated with a neutral trend in their normal state.
    var neutral: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var warning: Color { get }
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state.
    var negative: Color { get }
    
}

public typealias ThemeColors = TvThemeColors

#elseif os(macOS)

// MARK: - macOS

public protocol MacThemeColors {
    
    // MARK: - Labels
    
    /// The color for text labels that contain primary content.
    var label: Color { get }
    
    /// The color for text labels that contain secondary content.
    var secondaryLabel: Color { get }
    
    /// The color for text labels that contain tertiary content.
    var tertiaryLabel: Color { get }
    
    /// The color for text labels that contain quaternary content.
    var quaternaryLabel: Color { get }
    
    /// The color for labels that contain primary content layered on top of a tint color.
    var inverseLabel: Color { get }
    
    
    // MARK: - Text Colors

    /// The color to use for text.
    var text: Color { get }
    
    /// The color for placeholder text in controls or text views.
    var placeholderText: Color { get }
    
    /// The color to use for selected text.
    var selectedText: Color { get }
    
    /// The color to use for the background area behind text.
    var textBackground: Color { get }
    
    /// The color to use for the background of selected text.
    var selectedTextBackground: Color { get }
    
    /// The color to use for the keyboard focus ring around controls.
    var keyboardFocusIndicator: Color { get }
    
    /// The color to use for selected text in an unemphasized context.
    var unemphasizedSelectedText: Color { get }
    
    /// The color to use for the text background in an unemphasized context.
    var unemphasizedSelectedTextBackground: Color { get }

    
    // MARK: - Content Colors
    
    /// The color to use for links.
    var link: Color { get }
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    var separator: Color { get }
    
    /// The color to use for the background of selected and emphasized content.
    var selectedContentBackground: Color { get }
    
    /// The color to use for selected and unemphasized content.
    var unemphasizedSelectedContentBackground: Color { get }

    
    // MARK: - Menu Colors
    
    /// The color to use for the text in menu items.
    var selectedMenuItemText: Color { get }
    
    
    // MARK: - Table Colors
    
    /// The color to use for the optional gridlines, such as those in a table view.
    var grid: Color { get }
    
    /// The color to use for text in header cells in table views and outline views.
    var headerText: Color { get }
    
    /// The colors to use for alternating content, typically found in table views and collection views.
    var alternatingContentBackgrounds: [Color] { get }
    
    
    // MARK: - Control Colors
    
    /// The user's current accent color preference.
    var controlAccent: Color { get }
    
    /// The color to use for the flat surfaces of a control.
    var control: Color { get }
    
    /// The color to use for the background of large controls, such as scroll views or table views.
    var controlBackground: Color { get }
    
    /// The color to use for text on enabled controls.
    var controlText: Color { get }
    
    /// The color to use for text on disabled controls.
    var disabledControlText: Color { get }
    
    /// The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged.
    var selectedControl: Color { get }
    
    /// The color to use for text in a selected control—that is, a control being clicked or dragged.
    var selectedControlText: Color { get }
    
    /// The color to use for text in a selected control.
    var alternateSelectedControlText: Color { get }

    /// The patterned color to use for the background of a scrubber control.
    var scrubberTexturedBackground: Color { get }
    
    
    // MARK: - Window Colors
    
    /// The color to use for the window background.
    var windowBackground: Color { get }
    
    /// The color to use for text in a window's frame.
    var windowFrameText: Color { get }
    
    /// The color to use in the area beneath your window's views.
    var underPageBackground: Color { get }
    
    
    // MARK: - Highlights and Shadows
    
    /// The highlight color to use for the bubble that shows inline search result values.
    var findHighlight: Color { get }
    
    /// The color to use as a virtual light source on the screen.
    var highlight: Color { get }
    
    /// The color to use for virtual shadows cast by raised objects on the screen.
    var shadow: Color { get }
    
    
    // MARK: - Tints
    
    /// The tint color for branded elements in their normal state.
    var brand: Color { get }
    
    /// The color for elements that are associated a positive trend or additive action in their normal state.
    var positive: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var callout: Color { get }
    
    /// The color for elements that are associated with a neutral trend in their normal state.
    var neutral: Color { get }
    
    /// The color for elements that need to grab the user's attention in their normal state.
    var warning: Color { get }
    
    /// The color for elements that are associated a negative trend or destructive action in their normal state.
    var negative: Color { get }
    
}

public typealias ThemeColors = MacThemeColors

#endif

extension ThemeColors {
    
    public func `for`(_ keyPath: KeyPath<ThemeColors, Color>?) -> Color {
        return keyPath != nil ? self[keyPath: keyPath!] : .clear
    }
    
}
