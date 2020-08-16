# Changelog

## [Unreleased]

### Added
- No Additions
### Changes
- No Changes
### Deprecated
- No Deprecations
### Removed
- No removals
### Fixed
- No fixes

## [0.0.6] - 2020-08-15

### Fixed
- A compile issue on tvOS due to unsupported `VisualEffect`s
- A compile issue on macOS due to a duplicated system color name.

## [0.0.5] - 2020-08-15

### Changes
- Visual effect views now accept a content view.
- Updated button padding to use the padding determined by the system.
- Updated the minimum supported versions to:
    - iOS 14
    - tvOS 14
    - watchOS 7
    - macOS 11

## [0.0.4] - 2020-07-03

### Fixed

- Fixed a crash when accessing `theme.systemColor.separator` on macOS. 

## [0.0.3] - 2020-07-03

### Fixed

- Fixed a crash when accessing `theme.systemColor.secondaryGroupedBackground`. 

## [0.0.2] - 2020-07-03

### Added

#### Customize For Operating System Modifier

A modifier that allows adding additional modifiers or customizations to a view based on the current operating system. This allows us to avoid splitting up view builders to be able to use  `#if os(tvOS)`.

```
Text("Hello World!")
   .font(Font.system(size: 12.0))
   .customize(for: .tvOS, modifier: {
       $0.font(Font.system(size: 20.0))
   })
```

## [0.0.1] - 2020-07-03

### Added

#### Theme
- A theme system based on `@Environment` that can be accessed from SwiftUI views. [@Marxon13](https://marxon13.com)
- System colors for iOS, macOS, tvOS, and watchOS to `Theme`. [@Marxon13](https://marxon13.com)
- Standardized semantic colors defined by the design system to `Theme`. [@Marxon13](https://marxon13.com)

