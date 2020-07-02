//
//  SoloarDesignSystemThemeColors+macOS.swift
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

#if os(macOS)
import Cocoa
import SwiftUI

open class SolarDesignSystemThemeColors: ThemeColors {
    // MARK: - Labels
    
    /// The color for text labels that contain primary content.
    public var label: Color
    
    /// The color for text labels that contain secondary content.
    public var secondaryLabel: Color
    
    /// The color for text labels that contain tertiary content.
    public var tertiaryLabel: Color
    
    /// The color for text labels that contain quaternary content.
    public var quaternaryLabel: Color
    
    /// The color for labels that contain primary content layered on top of a tint color.
    public let inverseLabel: Color
    
    
    // MARK: - Text Colors

    /// The color to use for text.
    public var text: Color
    
    /// The color for placeholder text in controls or text views.
    public var placeholderText: Color
    
    /// The color to use for selected text.
    public var selectedText: Color
    
    /// The color to use for the background area behind text.
    public var textBackground: Color
    
    /// The color to use for the background of selected text.
    public var selectedTextBackground: Color
    
    /// The color to use for the keyboard focus ring around controls.
    public var keyboardFocusIndicator: Color
    
    /// The color to use for selected text in an unemphasized context.
    public var unemphasizedSelectedText: Color
    
    /// The color to use for the text background in an unemphasized context.
    public var unemphasizedSelectedTextBackground: Color

    
    // MARK: - Content Colors
    
    /// The color to use for links.
    public var link: Color
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    public var separator: Color
    
    /// The color to use for the background of selected and emphasized content.
    public var selectedContentBackground: Color
    
    /// The color to use for selected and unemphasized content.
    public var unemphasizedSelectedContentBackground: Color

    
    // MARK: - Menu Colors
    
    /// The color to use for the text in menu items.
    public var selectedMenuItemText: Color
    
    
    // MARK: - Table Colors
    
    /// The color to use for the optional gridlines, such as those in a table view.
    public var grid: Color
    
    /// The color to use for text in header cells in table views and outline views.
    public var headerText: Color
    
    /// The colors to use for alternating content, typically found in table views and collection views.
    public var alternatingContentBackgrounds: [Color]
    
    
    // MARK: - Control Colors
    
    /// The user's current accent color preference.
    public var controlAccent: Color
    
    /// The color to use for the flat surfaces of a control.
    public var control: Color
    
    /// The color to use for the background of large controls, such as scroll views or table views.
    public var controlBackground: Color
    
    /// The color to use for text on enabled controls.
    public var controlText: Color
    
    /// The color to use for text on disabled controls.
    public var disabledControlText: Color
    
    /// The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged.
    public var selectedControl: Color
    
    /// The color to use for text in a selected control—that is, a control being clicked or dragged.
    public var selectedControlText: Color
    
    /// The color to use for text in a selected control.
    public var alternateSelectedControlText: Color

    /// The patterned color to use for the background of a scrubber control.
    public var scrubberTexturedBackground: Color
    
    
    // MARK: - Window Colors
    
    /// The color to use for the window background.
    public var windowBackground: Color
    
    /// The color to use for text in a window's frame.
    public var windowFrameText: Color
    
    /// The color to use in the area beneath your window's views.
    public var underPageBackground: Color
    
    
    // MARK: - Highlights and Shadows
    
    /// The highlight color to use for the bubble that shows inline search result values.
    public var findHighlight: Color
    
    /// The color to use as a virtual light source on the screen.
    public var highlight: Color
    
    /// The color to use for virtual shadows cast by raised objects on the screen.
    public var shadow: Color
    
    
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
        label: Color = Color(NSColor.labelColor),
        secondaryLabel: Color = Color(NSColor.secondaryLabelColor),
        tertiaryLabel: Color = Color(NSColor.tertiaryLabelColor),
        quaternaryLabel: Color = Color(NSColor.quaternaryLabelColor),
        inverseLabel: Color = Color(NSColor(name: "Inverse Label", dynamicProvider: { (appearance) -> NSColor in
        let appearanceName = appearance.bestMatch(from: [NSAppearance.Name.aqua, NSAppearance.Name.darkAqua])!
            switch appearanceName {
            case .aqua, .vibrantLight, .accessibilityHighContrastAqua, .accessibilityHighContrastVibrantLight:
                return .white
            case .darkAqua, .vibrantDark, .accessibilityHighContrastDarkAqua, .accessibilityHighContrastVibrantDark:
                return .black
            default:
                return .white
            }
        })),

        text: Color = Color(NSColor.textColor),
        placeholderText: Color = Color(NSColor.placeholderTextColor),
        selectedText: Color = Color(NSColor.selectedTextColor),
        textBackground: Color = Color(NSColor.textBackgroundColor),
        selectedTextBackground: Color = Color(NSColor.selectedTextBackgroundColor),
        keyboardFocusIndicator: Color = Color(NSColor.keyboardFocusIndicatorColor),
        unemphasizedSelectedText: Color = Color(NSColor.unemphasizedSelectedTextColor),
        unemphasizedSelectedTextBackground: Color = Color(NSColor.unemphasizedSelectedTextBackgroundColor),
        
        link: Color = Color(NSColor.linkColor),
        separator: Color = Color(NSColor.separatorColor),
        selectedContentBackground: Color = Color(NSColor.selectedContentBackgroundColor),
        unemphasizedSelectedContentBackground: Color = Color(NSColor.unemphasizedSelectedContentBackgroundColor),
        
        selectedMenuItemText: Color = Color(NSColor.selectedMenuItemTextColor),
        
        grid: Color = Color(NSColor.gridColor),
        headerText: Color = Color(NSColor.headerTextColor),
        alternatingContentBackgrounds: [Color] = NSColor.alternatingContentBackgroundColors.map({ Color($0) }),
        
        controlAccent: Color = Color(NSColor.controlAccentColor),
        control: Color = Color(NSColor.controlColor),
        controlBackground: Color = Color(NSColor.controlBackgroundColor),
        controlText: Color = Color(NSColor.controlTextColor),
        disabledControlText: Color = Color(NSColor.disabledControlTextColor),
        selectedControl: Color = Color(NSColor.selectedControlColor),
        selectedControlText: Color = Color(NSColor.selectedControlTextColor),
        alternateSelectedControlText: Color = Color(NSColor.alternateSelectedControlTextColor),
        scrubberTexturedBackground: Color = Color(NSColor.scrubberTexturedBackground),
        
        windowBackground: Color = Color(NSColor.windowBackgroundColor),
        windowFrameText: Color = Color(NSColor.windowFrameTextColor),
        underPageBackground: Color = Color(NSColor.underPageBackgroundColor),
        
        findHighlight: Color = Color(NSColor.findHighlightColor),
        highlight: Color = Color(NSColor.highlightColor),
        shadow: Color = Color(NSColor.shadowColor),
        
        brand: Color = Color(NSColor.systemIndigo),
        positive: Color = Color(NSColor.systemGreen),
        callout: Color = Color(NSColor.systemPurple),
        neutral: Color = Color(NSColor.systemBlue),
        warning: Color = Color(NSColor.systemOrange),
        negative: Color = Color(NSColor.systemRed)
    ) {
        self.label = label
        self.secondaryLabel = secondaryLabel
        self.tertiaryLabel = tertiaryLabel
        self.quaternaryLabel = quaternaryLabel
        self.inverseLabel = inverseLabel
        
        self.text = text
        self.placeholderText = placeholderText
        self.selectedText = selectedText
        self.textBackground = textBackground
        self.selectedTextBackground = selectedTextBackground
        self.keyboardFocusIndicator = keyboardFocusIndicator
        self.unemphasizedSelectedText = unemphasizedSelectedText
        self.unemphasizedSelectedTextBackground = unemphasizedSelectedTextBackground
        
        self.link = link
        self.separator = separator
        self.selectedContentBackground = selectedContentBackground
        self.unemphasizedSelectedContentBackground = unemphasizedSelectedContentBackground
        
        self.selectedMenuItemText = selectedMenuItemText
        
        self.grid = grid
        self.headerText = headerText
        self.alternatingContentBackgrounds = alternatingContentBackgrounds
        
        self.controlAccent = controlAccent
        self.control = control
        self.controlBackground = controlBackground
        self.controlText = controlText
        self.disabledControlText = disabledControlText
        self.selectedControl = selectedControl
        self.selectedControlText = selectedControlText
        self.alternateSelectedControlText = alternateSelectedControlText
        self.scrubberTexturedBackground = scrubberTexturedBackground
        
        self.windowBackground = windowBackground
        self.windowFrameText = windowFrameText
        self.underPageBackground = underPageBackground
        
        self.findHighlight = findHighlight
        self.highlight = highlight
        self.shadow = shadow
        
        self.brand = brand
        self.positive = positive
        self.callout = callout
        self.neutral = neutral
        self.warning = warning
        self.negative = negative
    }
    
}
#endif
