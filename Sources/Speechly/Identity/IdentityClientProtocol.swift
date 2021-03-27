import Foundation
import NIO

/// Protocol that defines a client for Speechly Identity API.
public protocol IdentityClientProtocol {
    /// Exchanges application and device identifiers for an access token to Speechly API.
    ///
    /// - Parameters:
    ///     - appId: Speechly application identifier.
    ///     - deviceId: Device identifier.
    /// - Returns: A future that succeeds with an access token or fails with an error if authentication fails.
    func authenticate(appId: UUID, deviceId: UUID) -> EventLoopFuture<ApiAccessToken>

    /// Exchanges project and device identifiers for an access token to Speechly API.
    ///
    /// - Parameters:
    ///     - projectId: Speechly project identifier. All applications in the project are accesible during connection.
    ///     - deviceId: Device identifier.
    /// - Returns: A future that succeeds with an access token or fails with an error if authentication fails.
    func authenticateProject(projectId: UUID, deviceId: UUID) -> EventLoopFuture<ApiAccessToken>
}
