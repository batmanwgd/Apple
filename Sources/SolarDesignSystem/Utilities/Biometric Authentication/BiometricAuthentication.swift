//
//  BiometricAuthentication.swift
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

/// A wrapper that streamlines biometric authentication.
@available(macOS 11.0, iOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public class BiometricAuthentication {
    
    // MARK: - Properties
    
    /// The shared biometric authenticator.
    public static let shared: BiometricAuthentication = BiometricAuthentication()
    
    /// The messages to use when authenticating.
    public let messages: Messages
    
    /// The local authentication context.
    private let context: LAContext = LAContext()
    
    /// The duration for which Touch ID authentication reuse is allowable.
    public var allowableReuseDuration: TimeInterval {
        get {
            context.touchIDAuthenticationAllowableReuseDuration
        }
        set {
            context.touchIDAuthenticationAllowableReuseDuration = newValue < LATouchIDAuthenticationMaximumAllowableReuseDuration ? newValue : LATouchIDAuthenticationMaximumAllowableReuseDuration
        }
    }
    
    // MARK: - Initialization
    
    public init() {
        self.messages = Messages()
    }
    
    public init(messages: Messages) {
        self.messages = messages
    }
    
    // MARK: - Authentication
    
    /// Authenticates the user with biometrics.
    public func authenticateWithBiometrics(completion: @escaping (Result<Bool, AuthenticationError>) -> Void) {
        let authenticationReason = availableAuthenticationType() == .touchID ? messages.touchIdAuthenticationReason : messages.faceIdAuthenticationReason
        context.localizedFallbackTitle = messages.authenticationFallbackButtonTitle
        context.localizedCancelTitle = messages.authenticationCancelButtonTitle

        evaluate(policy: .deviceOwnerAuthenticationWithBiometrics, with: context, reason: authenticationReason, completion: completion)
    }
    
    /// Authenticates the user with a passcode.
    public func authenticateWithPasscode(completion: @escaping (Result<Bool, AuthenticationError>) -> ()) {
        let authenticationReason = availableAuthenticationType() == .touchID ? messages.touchIdPasscodeAuthenticationReason : messages.faceIdPasscodeAuthenticationReason
        context.localizedFallbackTitle = messages.authenticationFallbackButtonTitle
        context.localizedCancelTitle = messages.authenticationCancelButtonTitle
            
        evaluate(policy: .deviceOwnerAuthentication, with: context, reason: authenticationReason, completion: completion)
    }
    
    private func evaluate(policy: LAPolicy, with context: LAContext, reason: String, completion: @escaping (Result<Bool, AuthenticationError>) -> ()) {
        context.evaluatePolicy(policy, localizedReason: reason) { (success, error) in
            DispatchQueue.main.async {
                if success {
                    completion(.success(true))
                } else if let error = error as? LAError {
                    completion(.failure(AuthenticationError(error)))
                } else {
                    completion(.failure(.failed))
                }
            }
        }
    }
    
    ///Returns the type of biometric authentication available and ready to be used on the device.
    public func availableAndReadyAuthenticationType() -> LABiometryType {
        var error: NSError?
        let canEvaluate = context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error)
        if canEvaluate {
            return context.biometryType
        }
        return .none
    }
    
    /// Returns the type of biometric authentication available on the device.
    public func availableAuthenticationType() -> LABiometryType {
        var error: NSError?
        context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error)
        return context.biometryType
    }
    
}

#endif
