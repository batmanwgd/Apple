//
//  SystemColors.swift
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

public struct SystemColor {
    
    // MARK: - Properties
    
    private var colorStorage: [String: Color] = [:]
    private var arrayColorStorage: [String: [Color]] = [:]
    
    // MARK: - Labels
    
    /// The color for text labels that contain primary content.
    @available(iOS 13.0, watchOS 6.0, tvOS 13.0, macOS 10.15, *)
    public var label: Color {
        return colorStorage["label"]!
    }
    
    /// The color for text labels that contain secondary content.
    @available(iOS 13.0, watchOS 6.0, tvOS 13.0, macOS 10.15, *)
    public var secondaryLabel: Color {
        return colorStorage["secondaryLabel"]!
    }
    
    /// The color for text labels that contain tertiary content.
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    @available(watchOS, unavailable)
    public var tertiaryLabel: Color {
        return colorStorage["tertiaryLabel"]!
    }
    
    /// The color for text labels that contain quaternary content.
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    @available(watchOS, unavailable)
    public var quaternaryLabel: Color {
        return colorStorage["quaternaryLabel"]!
    }
    
    /// The color for labels that contain primary content layered on top of a tint color.
    @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
    public var inverseLabel: Color {
        return colorStorage["inverseLabel"]!
    }
    
    // MARK: - Fills
    
    /// An overlay fill color for thin and small shapes.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var fill: Color {
        return colorStorage["fill"]!
    }
    
    /// An overlay fill color for medium-size shapes.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var secondaryFill: Color {
        return colorStorage["secondaryFill"]!
    }
    
    /// An overlay fill color for large shapes.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var tertiaryFill: Color {
        return colorStorage["tertiaryFill"]!
    }
    
    /// An overlay fill color for large areas that contain complex content.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var quaternaryFill: Color {
        return colorStorage["quaternaryFill"]!
    }
    
    // MARK: - Text
    
    /// The color to use for text.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var text: Color {
        return colorStorage["text"]!
    }
    
    /// The color for placeholder text in controls or text views.
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    @available(watchOS, unavailable)
    public var placeholderText: Color {
        return colorStorage["placeholderText"]!
    }
    
    /// The color to use for selected text.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var selectedText: Color {
        return colorStorage["selectedText"]!
    }
    
    /// The color to use for the background area behind text.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var textBackground: Color {
        return colorStorage["textBackground"]!
    }
    
    /// The color to use for the background of selected text.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var selectedTextBackground: Color {
        return colorStorage["selectedTextBackground"]!
    }
    
    /// The color to use for the keyboard focus ring around controls.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var keyboardFocusIndicator: Color {
        return colorStorage["keyboardFocusIndicator"]!
    }
    
    /// The color to use for selected text in an unemphasized context.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var unemphasizedSelectedText: Color {
        return colorStorage["unemphasizedSelectedText"]!
    }
    
    /// The color to use for the text background in an unemphasized context.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var unemphasizedSelectedTextBackground: Color {
        return colorStorage["unemphasizedSelectedTextBackground"]!
    }
    
    // MARK: - Content
    
    /// The color to use for links.
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    @available(watchOS, unavailable)
    public var link: Color {
        return colorStorage["link"]!
    }
    
    /// The color to use for the background of selected and emphasized content.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var selectedContentBackground: Color {
        return colorStorage["selectedContentBackground"]!
    }
    
    /// The color to use for selected and unemphasized content.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var unemphasizedSelectedContentBackground: Color {
        return colorStorage["unemphasizedSelectedContentBackground"]!
    }
    
    // MARK: - Menu
    
    /// The color to use for the text in menu items.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var selectedMenuItemText: Color {
        return colorStorage["selectedMenuItemText"]!
    }
    
    // MARK: - Table Colors
    
    /// The color to use for the optional gridlines, such as those in a table view.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var grid: Color {
        return colorStorage["grid"]!
    }
    
    /// The color to use for text in header cells in table views and outline views.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var headerText: Color {
        return colorStorage["headerText"]!
    }
    
    /// The colors to use for alternating content, typically found in table views and collection views.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var alternatingContentBackgrounds: [Color] {
        return arrayColorStorage["alternatingContentBackgrounds"]!
    }
    
    // MARK: - Controls
    
    /// The user's current accent color preference.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var controlAccent: Color {
        return colorStorage["controlAccent"]!
    }
    
    /// The color to use for the flat surfaces of a control.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var control: Color {
        return colorStorage["control"]!
    }
    
    /// The color to use for the background of large controls, such as scroll views or table views.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var controlBackground: Color {
        return colorStorage["controlBackground"]!
    }
    
    /// The color to use for text on enabled controls.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var controlText: Color {
        return colorStorage["controlText"]!
    }
    
    /// The color to use for text on disabled controls.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var disabledControlText: Color {
        return colorStorage["disabledControlText"]!
    }
    
    /// The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var selectedControl: Color {
        return colorStorage["selectedControl"]!
    }
    
    /// The color to use for text in a selected control—that is, a control being clicked or dragged.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var selectedControlText: Color {
        return colorStorage["selectedControlText"]!
    }
    
    /// The color to use for text in a selected control.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var alternateSelectedControlText: Color {
        return colorStorage["alternateSelectedControlText"]!
    }
    
    /// The patterned color to use for the background of a scrubber control.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var scrubberTexturedBackground: Color {
        return colorStorage["scrubberTexturedBackground"]!
    }
    
    // MARK: - Window Colors
    
    /// The color to use for the window background.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var windowBackground: Color {
        return colorStorage["windowBackground"]!
    }
    
    /// The color to use for text in a window's frame.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var windowFrameText: Color {
        return colorStorage["windowFrameText"]!
    }
    
    /// The color to use in the area beneath your window's views.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var underPageBackground: Color {
        return colorStorage["underPageBackground"]!
    }
    
    
    // MARK: - Highlights and Shadows
    
    /// The highlight color to use for the bubble that shows inline search result values.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var findHighlight: Color {
        return colorStorage["findHighlight"]!
    }
    
    /// The color to use as a virtual light source on the screen.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var highlight: Color {
        return colorStorage["highlight"]!
    }
    
    /// The color to use for virtual shadows cast by raised objects on the screen.
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public var shadow: Color {
        return colorStorage["shadow"]!
    }
    
    // MARK: - Backgrounds
    
    /// The color for the main background of your interface.
    @available(iOS 13.0, watchOS 6.0, *)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public var background: Color {
        return colorStorage["background"]!
    }
    
    /// The color for content layered on top of the main background.
    @available(iOS 13.0, watchOS 6.0, *)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public var secondaryBackground: Color {
        return colorStorage["secondaryBackground"]!
    }
    
    /// The color for content layered on top of secondary backgrounds.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public var tertiaryBackground: Color {
        return colorStorage["tertiaryBackground"]!
    }
    
    /// The color for the main background of your grouped interface.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public var groupedBackground: Color {
        return colorStorage["groupedBackground"]!
    }
    
    /// The color for content layered on top of the main background of your grouped interface.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public var secondaryGroupedBackground: Color {
        return colorStorage[""]!
    }
    
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public var tertiaryGroupedBackground: Color {
        return colorStorage["tertiaryGroupedBackground"]!
    }
    
    // MARK: - Separators
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    @available(iOS 13.0, watchOS 6.0, tvOS 13.0, macOS 10.15, *)
    public var separator: Color {
        return colorStorage["separator"]!
    }
    
    /// The color for borders or divider lines that hides any underlying content.
    @available(iOS 13.0, tvOS 13.0, *)
    @available(watchOS, unavailable)
    @available(macOS, unavailable)
    public var opaqueSeparator: Color {
        return colorStorage["opaqueSeparator"]!
    }
    
    // MARK: - Initialization
    
    @available(iOS 13.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public init(
        label: Color? = nil,
        secondaryLabel: Color? = nil,
        tertiaryLabel: Color? = nil,
        quaternaryLabel: Color? = nil,
        inverseLabel: Color? = nil,
        
        fill: Color? = nil,
        secondaryFill: Color? = nil,
        tertiaryFill: Color? = nil,
        quaternaryFill: Color? = nil,
        
        placeholderText: Color? = nil,
        
        link: Color? = nil,
        
        background: Color? = nil,
        secondaryBackground: Color? = nil,
        tertiaryBackground: Color? = nil,
        groupedBackground: Color? = nil,
        secondaryGroupedBackground: Color? = nil,
        tertiaryGroupedBackground: Color? = nil,
        
        separator: Color? = nil,
        opaqueSeparator: Color? = nil
    ) {
        #if os(iOS)
        colorStorage["label"] = label ?? Color(UIColor.label)
        colorStorage["secondaryLabel"] = secondaryLabel ?? Color(UIColor.secondaryLabel)
        colorStorage["tertiaryLabel"] = tertiaryLabel ?? Color(UIColor.tertiaryLabel)
        colorStorage["quaternaryLabel"] = quaternaryLabel ?? Color(UIColor.quaternaryLabel)
        colorStorage["inverseLabel"] = inverseLabel ?? Color(UIColor(dynamicProvider: { (traits) -> UIColor in
            switch traits.userInterfaceStyle {
            case .light, .unspecified:
                return .white
            case .dark:
                return .black
            @unknown default:
                return .white
            }
        }))
        
        colorStorage["fill"] = fill ?? Color(UIColor.systemFill)
        colorStorage["secondaryFill"] = secondaryFill ?? Color(UIColor.secondarySystemFill)
        colorStorage["tertiaryFill"] = tertiaryFill ?? Color(UIColor.tertiarySystemFill)
        colorStorage["quaternaryFill"] = quaternaryFill ?? Color(UIColor.quaternarySystemFill)
        
        colorStorage["placeholderText"] = placeholderText ?? Color(UIColor.placeholderText)
        
        colorStorage["link"] = link ?? Color(UIColor.link)
        
        colorStorage["background"] = background ?? Color(UIColor.systemBackground)
        colorStorage["secondaryBackground"] = secondaryBackground ?? Color(UIColor.secondarySystemBackground)
        colorStorage["tertiaryBackground"] = tertiaryBackground ?? Color(UIColor.tertiarySystemBackground)
        colorStorage["groupedBackground"] = groupedBackground ?? Color(UIColor.systemGroupedBackground)
        colorStorage["secondaryGroupedBackground"] = secondaryGroupedBackground ?? Color(UIColor.secondarySystemGroupedBackground)
        colorStorage["tertiaryGroupedBackground"] = tertiaryGroupedBackground ?? Color(UIColor.tertiarySystemGroupedBackground)
        
        colorStorage["separator"] = separator ?? Color(UIColor.separator)
        colorStorage["opaqueSeparator"] = opaqueSeparator ?? Color(UIColor.opaqueSeparator)
        #endif
    }
    
    @available(tvOS 13.0, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(macOS, unavailable)
    public init(
        label: Color? = nil,
        secondaryLabel: Color? = nil,
        tertiaryLabel: Color? = nil,
        quaternaryLabel: Color? = nil,
        inverseLabel: Color? = nil,
        
        placeholderText: Color? = nil,
        
        link: Color? = nil,
        
        separator: Color? = nil,
        opaqueSeparator: Color? = nil
    ) {
        #if os(tvOS)
        colorStorage["label"] = label ?? Color(UIColor.label)
        colorStorage["secondaryLabel"] = secondaryLabel ?? Color(UIColor.secondaryLabel)
        colorStorage["tertiaryLabel"] = tertiaryLabel ?? Color(UIColor.tertiaryLabel)
        colorStorage["quaternaryLabel"] = quaternaryLabel ?? Color(UIColor.quaternaryLabel)
        colorStorage["inverseLabel"] = inverseLabel ?? Color(UIColor(dynamicProvider: { (traits) -> UIColor in
            switch traits.userInterfaceStyle {
            case .light, .unspecified:
                return .white
            case .dark:
                return .black
            @unknown default:
                return .white
            }
        }))
        
        colorStorage["placeholderText"] = placeholderText ?? Color(UIColor.placeholderText)
        
        colorStorage["link"] = link ?? Color(UIColor.link)
        
        colorStorage["separator"] = separator ?? Color(UIColor.separator)
        colorStorage["opaqueSeparator"] = opaqueSeparator ?? Color(UIColor.opaqueSeparator)
        #endif
    }
    
    @available(watchOS 6.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(macOS, unavailable)
    public init(
        label: Color? = nil,
        secondaryLabel: Color? = nil,
        inverseLabel: Color? = nil,
        
        background: Color? = nil,
        secondaryBackground: Color? = nil,
        
        separator: Color? = nil
    ) {
        #if os(watchOS)
        colorStorage["label"] = label ?? Color(UIColor.white)
        colorStorage["secondaryLabel"] = secondaryLabel ?? Color(UIColor.systemTextGrey)
        colorStorage["inverseLabel"] = inverseLabel ?? Color(UIColor.black)

        colorStorage["background"] = background ?? Color(UIColor.black)
        colorStorage["secondaryBackground"] = secondaryBackground ?? Color(UIColor.systemBackground.withAlphaComponent(0.14))
        
        colorStorage["separator"] = separator ?? Color(UIColor.darkGray)
        #endif
    }
    
    @available(macOS 10.15, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public init(
        label: Color? = nil,
        secondaryLabel: Color? = nil,
        tertiaryLabel: Color? = nil,
        quaternaryLabel: Color? = nil,
        inverseLabel: Color? = nil,

        text: Color? = nil,
        placeholderText: Color? = nil,
        selectedText: Color? = nil,
        textBackground: Color? = nil,
        selectedTextBackground: Color? = nil,
        keyboardFocusIndicator: Color? = nil,
        unemphasizedSelectedText: Color? = nil,
        unemphasizedSelectedTextBackground: Color? = nil,
        
        link: Color? = nil,
        separator: Color? = nil,
        selectedContentBackground: Color? = nil,
        unemphasizedSelectedContentBackground: Color? = nil,
        
        selectedMenuItemText: Color? = nil,
        
        grid: Color? = nil,
        headerText: Color? = nil,
        alternatingContentBackgrounds: [Color]? = nil,
        
        controlAccent: Color? = nil,
        control: Color? = nil,
        controlBackground: Color? = nil,
        controlText: Color? = nil,
        disabledControlText: Color? = nil,
        selectedControl: Color? = nil,
        selectedControlText: Color? = nil,
        alternateSelectedControlText: Color? = nil,
        scrubberTexturedBackground: Color? = nil,
        
        windowBackground: Color? = nil,
        windowFrameText: Color? = nil,
        underPageBackground: Color? = nil,
        
        findHighlight: Color? = nil,
        highlight: Color? = nil,
        shadow: Color? = nil
    ) {
        #if os(macOS)
        colorStorage["label"] = label ?? Color(NSColor.labelColor)
        colorStorage["secondaryLabel"] = secondaryLabel ?? Color(NSColor.secondaryLabelColor)
        colorStorage["tertiaryLabel"] = tertiaryLabel ?? Color(NSColor.tertiaryLabelColor)
        colorStorage["quaternaryLabel"] = quaternaryLabel ?? Color(NSColor.quaternaryLabelColor)
        colorStorage["inverseLabel"] = inverseLabel ?? Color(NSColor(name: "Inverse Label", dynamicProvider: { (appearance) -> NSColor in
            let appearanceName = appearance.bestMatch(from: [NSAppearance.Name.aqua, NSAppearance.Name.darkAqua])!
                switch appearanceName {
                case .aqua, .vibrantLight, .accessibilityHighContrastAqua, .accessibilityHighContrastVibrantLight:
                    return .white
                case .darkAqua, .vibrantDark, .accessibilityHighContrastDarkAqua, .accessibilityHighContrastVibrantDark:
                    return .black
                default:
                    return .white
                }
            }))
        
        colorStorage["text"] = text ?? Color(NSColor.textColor)
        colorStorage["placeholderText"] = placeholderText ?? Color(NSColor.placeholderTextColor)
        colorStorage["selectedText"] = selectedText ?? Color(NSColor.selectedTextColor)
        colorStorage["textBackground"] = textBackground ?? Color(NSColor.textBackgroundColor)
        colorStorage["selectedTextBackground"] = selectedTextBackground ?? Color(NSColor.selectedTextBackgroundColor)
        colorStorage["keyboardFocusIndicator"] = keyboardFocusIndicator ?? Color(NSColor.keyboardFocusIndicatorColor)
        colorStorage["unemphasizedSelectedText"] = unemphasizedSelectedText ?? Color(NSColor.unemphasizedSelectedTextColor)
        colorStorage["unemphasizedSelectedTextBackground"] = unemphasizedSelectedTextBackground ?? Color(NSColor.unemphasizedSelectedTextBackgroundColor)
        
        colorStorage["link"] = link ?? Color(NSColor.linkColor)
        colorStorage["separator"] = separator ?? Color(NSColor.separatorColor)
        colorStorage["selectedContentBackground"] = selectedContentBackground ?? Color(NSColor.selectedContentBackgroundColor)
        colorStorage["unemphasizedSelectedContentBackground"] = unemphasizedSelectedContentBackground ?? Color(NSColor.unemphasizedSelectedContentBackgroundColor)
        
        colorStorage["selectedMenuItemText"] = selectedMenuItemText ?? Color(NSColor.selectedMenuItemTextColor)
        
        colorStorage["grid"] = grid ?? Color(NSColor.gridColor)
        colorStorage["headerText"] = headerText ?? Color(NSColor.headerTextColor)
        arrayColorStorage["alternatingContentBackgrounds"] = alternatingContentBackgrounds ?? NSColor.alternatingContentBackgroundColors.map({ Color($0) })
        
        colorStorage["controlAccent"] = controlAccent ?? Color(NSColor.controlAccentColor)
        colorStorage["control"] = control ?? Color(NSColor.controlColor)
        colorStorage["controlBackground"] = controlBackground ?? Color(NSColor.controlBackgroundColor)
        colorStorage["controlText"] = controlText ?? Color(NSColor.controlTextColor)
        colorStorage["disabledControlText"] = disabledControlText ?? Color(NSColor.disabledControlTextColor)
        colorStorage["selectedControl"] = selectedControl ?? Color(NSColor.selectedControlColor)
        colorStorage["selectedControlText"] = selectedControlText ?? Color(NSColor.selectedControlTextColor)
        colorStorage["alternateSelectedControlText"] = alternateSelectedControlText ?? Color(NSColor.alternateSelectedControlTextColor)
        colorStorage["scrubberTexturedBackground"] = scrubberTexturedBackground ?? Color(NSColor.scrubberTexturedBackground)
        
        colorStorage["windowBackground"] = windowBackground ?? Color(NSColor.windowBackgroundColor)
        colorStorage["windowFrameText"] = windowFrameText ?? Color(NSColor.windowFrameTextColor)
        colorStorage["underPageBackground"] = underPageBackground ?? Color(NSColor.underPageBackgroundColor)
        
        colorStorage["findHighlight"] = findHighlight ?? Color(NSColor.findHighlightColor)
        colorStorage["highlight"] = highlight ?? Color(NSColor.highlightColor)
        colorStorage["shadow"] = shadow ?? Color(NSColor.shadowColor)
        #endif
    }
    
}

//    /// The tint color for branded elements in their normal state.
//    public var brand: Color
//
//    /// The color for elements that are associated a positive trend or additive action in their normal state.
//    public var positive: Color
//
//    /// The color for elements that need to grab the user's attention in their normal state.
//    public var callout: Color
//
//    /// The color for elements that are associated with a neutral trend in their normal state.
//    public var neutral: Color
//
//    /// The color for elements that need to grab the user's attention in their normal state.
//    public var warning: Color
//
//    /// The color for elements that are associated a negative trend or destructive action in their normal state.
//    public var negative: Color
//

//extension ThemeColors {
//
//    public func `for`(_ keyPath: KeyPath<ThemeColors, Color>?) -> Color {
//        return keyPath != nil ? self[keyPath: keyPath!] : colorStorage[""]!
//    }
//
//}

//secondaryBrandBackground: Color = Color(UIColor.systemIndigo.withAlphaComponent(0.20)),
//secondaryPositiveBackground: Color = Color(UIColor.systemGreen.withAlphaComponent(0.14)),
//secondaryCalloutBackground: Color = Color(UIColor.systemPurple.withAlphaComponent(0.20)),
//secondaryNeutralBackground: Color = Color(UIColor.systemBlue.withAlphaComponent(0.17)),
//secondaryWarningBackground: Color = Color(UIColor.systemOrange.withAlphaComponent(0.15)),
//secondaryNegativeBackground: Color = Color(UIColor.systemRed.withAlphaComponent(0.17)),
