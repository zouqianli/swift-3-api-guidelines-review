
@available(iOS, introduced=2.0, deprecated=9.0)
enum MPMovieScalingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case AspectFit
  case AspectFill
  case Fill
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMoviePlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
@available(iOS, introduced=3.2, deprecated=9.0)
struct MPMovieLoadState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MPMovieLoadState { get }
  static var Playable: MPMovieLoadState { get }
  static var PlaythroughOK: MPMovieLoadState { get }
  static var Stalled: MPMovieLoadState { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case One
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieControlStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Embedded
  case Fullscreen
  static var Default: MPMovieControlStyle { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieFinishReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PlaybackEnded
  case PlaybackError
  case UserExited
}
@available(iOS, introduced=3.2, deprecated=9.0)
struct MPMovieMediaTypeMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPMovieMediaTypeMask { get }
  static var Video: MPMovieMediaTypeMask { get }
  static var Audio: MPMovieMediaTypeMask { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case File
  case Streaming
}
@available(iOS 2.0, *)
@available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
class MPMoviePlayerController : Object, MPMediaPlayback {
  init!(contentURL url: URL!)
  @NSCopying var contentURL: URL!
  var view: UIView! { get }
  var backgroundView: UIView! { get }
  var playbackState: MPMoviePlaybackState { get }
  var loadState: MPMovieLoadState { get }
  var controlStyle: MPMovieControlStyle
  var repeatMode: MPMovieRepeatMode
  var shouldAutoplay: Bool
  var isFullscreen: Bool
  func setFullscreen(fullscreen: Bool, animated: Bool)
  var scalingMode: MPMovieScalingMode
  @available(iOS 6.0, *)
  var readyForDisplay: Bool { get }
  convenience init()
  @available(iOS 2.0, *)
  func prepareToPlay()
  @available(iOS 2.0, *)
  var isPreparedToPlay: Bool { get }
  @available(iOS 2.0, *)
  func play()
  @available(iOS 2.0, *)
  func pause()
  @available(iOS 2.0, *)
  func stop()
  @available(iOS 2.0, *)
  var currentPlaybackTime: TimeInterval
  @available(iOS 2.0, *)
  var currentPlaybackRate: Float
  @available(iOS 2.0, *)
  func beginSeekingForward()
  @available(iOS 2.0, *)
  func beginSeekingBackward()
  @available(iOS 2.0, *)
  func endSeeking()
}
extension MPMoviePlayerController {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieMediaTypes: MPMovieMediaTypeMask { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieSourceType: MPMovieSourceType
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var duration: TimeInterval { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var playableDuration: TimeInterval { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var naturalSize: CGSize { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var initialPlaybackTime: TimeInterval
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var endPlaybackTime: TimeInterval
  @available(iOS, introduced=4.3, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var allowsAirPlay: Bool
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var isAirPlayVideoActive: Bool { get }
}
@available(iOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerScalingModeDidChangeNotification: String
@available(iOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackStateDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerLoadStateDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerNowPlayingMovieDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillEnterFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidEnterFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillExitFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidExitFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
@available(iOS, introduced=5.0, deprecated=9.0)
let MPMoviePlayerIsAirPlayVideoActiveDidChangeNotification: String
@available(iOS, introduced=6.0, deprecated=9.0)
let MPMoviePlayerReadyForDisplayDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieMediaTypesAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieSourceTypeAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieDurationAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieNaturalSizeAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieTimeOption : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NearestKeyFrame
  case Exact
}
extension MPMoviePlayerController {
  @available(iOS, introduced=3.2, deprecated=9.0)
  func requestThumbnailImagesAt(times playbackTimes: [AnyObject]!, timeOption option: MPMovieTimeOption)
  @available(iOS, introduced=3.2, deprecated=9.0)
  func cancelAllThumbnailImageRequests()
}
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageRequestDidFinishNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailTimeKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailErrorKey: String
extension MPMoviePlayerController {
  @available(iOS, introduced=4.0, deprecated=9.0)
  var timedMetadata: [AnyObject]! { get }
}
@available(iOS 4.0, *)
@available(iOS, introduced=4.0, deprecated=9.0)
class MPTimedMetadata : Object {
  var key: String! { get }
  var keyspace: String! { get }
  var value: AnyObject! { get }
  var timestamp: TimeInterval { get }
  var allMetadata: [Object : AnyObject]! { get }
  init()
}
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUpdatedNotification: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUserInfoKey: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyName: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyInfo: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyMIMEType: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyDataType: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
extension MPMoviePlayerController {
  @available(iOS, introduced=4.3, deprecated=9.0)
  var accessLog: MPMovieAccessLog! { get }
  @available(iOS, introduced=4.3, deprecated=9.0)
  var errorLog: MPMovieErrorLog! { get }
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieAccessLog : Object, Copying {
  var extendedLogData: Data! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  init()
  @available(iOS 4.3, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieErrorLog : Object, Copying {
  var extendedLogData: Data! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  init()
  @available(iOS 4.3, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieAccessLogEvent : Object, Copying {
  var numberOfSegmentsDownloaded: Int { get }
  var playbackStartDate: Date! { get }
  var uri: String! { get }
  var serverAddress: String! { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String! { get }
  var playbackStartOffset: TimeInterval { get }
  var segmentsDownloadedDuration: TimeInterval { get }
  var durationWatched: TimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  init()
  @available(iOS 4.3, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieErrorLogEvent : Object, Copying {
  var date: Date! { get }
  var uri: String! { get }
  var serverAddress: String! { get }
  var playbackSessionID: String! { get }
  var errorStatusCode: Int { get }
  var errorDomain: String! { get }
  var errorComment: String! { get }
  init()
  @available(iOS 4.3, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
extension MPMoviePlayerController {
}