# LookCamera SDK

LookCamera SDK provides a seamless way to integrate photo capturing functionality into your iOS applications. It allows users to capture front and side photos with different flow modes and returns captured results for further processing.

---

**Features**
- **Multiple Camera Modes:** Choose between starting with a tutorial, capturing only the front or side, or capturing both.
- **Easy Integration:** Use the LookCamera SDK with a few lines of code in your SwiftUI app.
- **Result Handling:** Access captured photos through the `CapturedResult` structure.

---

# Installation

**Swift Package Manager**

To integrate LookCamera SDK into your Xcode project using Swift Package Manager, follow these steps:

1. In Xcode, go to `File` > `Add Packages…`.
2. Enter the URL of this repository.
3. Choose the appropriate version and press `Add Package`.

** OR **
Buy adding it into your package

```swift
dependencies: [
        .package(url: "https://github.com/LinkToThisRepo", from: "0.0.1")
    ]
...

targets: [
    .target(
        name: "MyProject",
        dependencies: [
            .product(name: "LookCamera", package: "LookCameraSDK"),
        ]
    )
]
```



Once added, import the LookCamera SDK into your code:

```
import LookCamera
```

---

**Usage**

Here is a quick example of how to use the LookCamera SDK in your SwiftUI application.

**Capturing Photos**

1. Initialize the SDK and present the camera view.
2. Provide the desired camera mode (`startFromTutorial`, `frontOnly`, `sideOnly`, or `frontAndSideOnly`).
3. Handle the results using the `CapturedResult` structure, which provides URLs to the captured photos.

```swift
LookCameraSDK.shared.presentSDKView(mode: .startFromTutorial) { result in
    if let frontPhoto = result.frontPhoto {
        // Handle front photo URL
    }
    if let sidePhoto = result.sidePhoto {
        // Handle side photo URL
    }
}
```

---

**Camera Modes**

You can initiate the SDK with various modes depending on your app's requirements:

- `.startFromTutorial` – Default mode to guide users through the photo capture process.
- `.frontOnly` – Retake the front photo only.
- `.sideOnly` – Retake the side photo only.
- `.frontAndSideOnly` – Retake both front and side photos.

---

**Captured Result**

When the SDK completes the photo capture, it returns a `CapturedResult` object containing:

```
public struct CapturedResult {
    public let frontPhoto: URL?
    public let sidePhoto: URL?
}
```

You can use the provided URLs for the photos, saved in a cache folder - to display or process the captured images within your app.

---
