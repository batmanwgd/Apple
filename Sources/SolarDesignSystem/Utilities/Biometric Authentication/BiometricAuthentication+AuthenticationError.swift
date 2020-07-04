//
//  BiometricAuthentication+AuthenticationError.swift
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
import LocalAuthentication

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
extension BiometricAuthentication {
 
    public enum AuthenticationError: Error {
        
        // MARK: - Cases
        
        case notAvailable
        case noPasscodeSet
        case notEnrolled
        case lockedOut
        case fallback
        case canceledBySystem
        case canceledByUser
        case failed
        case other
        
        // MARK: - Initialization
        
        public init(_ error: LAError) {
            switch Int32(error.errorCode) {
            case kLAErrorBiometryNotAvailable:
                self = .notAvailable
            case kLAErrorPasscodeNotSet:
                self = .noPasscodeSet
            case kLAErrorBiometryNotEnrolled:
                self = .notEnrolled
            case kLAErrorBiometryLockout:
                self = .lockedOut
            case kLAErrorUserFallback:
                self = .fallback
            case kLAErrorSystemCancel:
                self = .canceledBySystem
            case kLAErrorUserCancel:
                self = .canceledByUser
            case kLAErrorAuthenticationFailed:
                self = .failed
            default:
                self = .other
            }
        }
        
    }

}

#endif
