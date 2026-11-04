# alkove-livekit-swift

[Alkove](https://github.com/alkove-ai/alkove)'s Focus in LiveKit Swift's microphone path: it keeps the user's voice, the closest one or the voice of a print, and removes the others and the noise, on the device. Built from [`ios/livekit`](https://github.com/alkove-ai/alkove/tree/main/ios/livekit) in Alkove's repository, released with it.

```swift
.package(url: "https://github.com/alkove-ai/alkove-livekit-swift.git", from: "0.4.3")
```

```swift
let models = try await Alkove.models(["focus", "cue"])
AudioManager.shared.capturePostProcessingDelegate = try AlkoveFocus(models: models)
```

See [the iOS quick start](https://alkove.ai/docs/start/ios/#in-a-livekit-room). Apache-2.0, code and weights.
