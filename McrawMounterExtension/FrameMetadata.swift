public struct FrameMetadata: Codable {
    public let width: Int32
    public let height: Int32
    public let asShotNeutral: [Float]
    public let compressionType: Int32
    
    private enum CodingKeys: String, CodingKey {
        case width
        case height
        case asShotNeutral
        case compressionType
    }
}
