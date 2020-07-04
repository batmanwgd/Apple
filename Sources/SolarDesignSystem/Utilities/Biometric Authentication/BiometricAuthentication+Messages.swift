//
//  BiometricAuthentication+Messages.swift
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

#if canImport(LocalAuthentication) && !os(tvOS)

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
extension BiometricAuthentication {
    
    /// The messages to use when authenticating with biometrics.
    public struct Messages {
        
        // MARK: - Properties
        
        public var notAvailable: String = "Biometric authentication is not available on this device."
        
        public var authenticationFallbackButtonTitle: String? = nil
        public var authenticationCancelButtonTitle: String? = nil
        
        public var touchIdAuthenticationReason: String = "Confirm your fingerprint to authenticate."
        public var touchIdPasscodeAuthenticationReason: String = "Due to multiple failed attempts, Touch ID is now locked. Please enter your passcode to unlock Touch ID."
        public var touchIdSetPasscode: String = "Please set a device passcode to use Touch ID for authentication."
        public var touchIdNoFingerprintsEnrolled: String = "There are no fingerprints enrolled in Touch ID on this device. Please go to the Touch ID & Passcode settings and enroll a fingerprint."
        public var touchIdAuthenticationFailed: String = "Your fingerprint is not recognized. Please try again."
        
        public var faceIdAuthenticationReason: String = "Confirm your face to authenticate."
        public var faceIdPasscodeAuthenticationReason: String = "Due to multiple failed attempts, Face ID is now locked. Please enter your passcode to unlock Face ID."
        public var faceIdSetPasscode: String = "Please set a device passcode to use Face ID for authentication."
        public var faceIdNoFaceEnrolled: String = "There are no faces enrolled in Face ID on this device. Please go to the Face ID & Passcode settings and enroll a face."
        public var faceIdAuthenticationFailed: String = "Your face is not recognized. Please try again."
        
        // MARK: - Initialization
        
        public init() {
            
        }
        
        // MARK: - Error Handling
        
        public func message(for error: AuthenticationError) -> String? {
            switch error {
            case .canceledByUser, .canceledBySystem, .fallback:
                return nil
            case .notAvailable:
                return notAvailable
            case .noPasscodeSet:
                return BiometricAuthentication.shared.availableAuthenticationType() == .touchID ? touchIdSetPasscode : faceIdSetPasscode
            case .notEnrolled:
                return BiometricAuthentication.shared.availableAuthenticationType() == .touchID ? touchIdNoFingerprintsEnrolled : faceIdNoFaceEnrolled
            case .lockedOut:
                return BiometricAuthentication.shared.availableAuthenticationType() == .touchID ? touchIdPasscodeAuthenticationReason : faceIdPasscodeAuthenticationReason
            case .failed, .other:
                return BiometricAuthentication.shared.availableAuthenticationType() == .touchID ? touchIdAuthenticationFailed : faceIdAuthenticationFailed
            }
        }
        
    }
    
}

#endif
