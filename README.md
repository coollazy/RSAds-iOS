# RSAds iOS SDK

在自己的 iOS App 播放你在 [RSAds](https://rsads.venwu.com) 上傳的廣告。iOS 15 以上，支援 SwiftUI 和 UIKit，GIF 動畫會動。

## 安裝（Swift Package Manager）

Xcode → File → Add Package Dependencies… → 貼上：

```
https://github.com/coollazy/RSAds-iOS
```

或寫在 `Package.swift`：

```swift
.package(url: "https://github.com/coollazy/RSAds-iOS", from: "0.1.1")
```

## 使用

先到 [RSAds](https://rsads.venwu.com) 登記你的 App，拿到 App ID。

```swift
import RSAds

// App 啟動時（只要一次）
RSAds.start(appID: "app-xxxxxxxxxxxx")

// SwiftUI
RSSlot(size: .s320x50)

// UIKit
let slot = RSSlotView(size: .s300x250)
slot.onLoad = { filled in /* false = 沒有可播的廣告，版位已自動隱藏 */ }
view.addSubview(slot)
```

尺寸：`.s320x50`（手機細長條）、`.s320x100`（手機大長條）、`.s300x250`（方塊）、`.s728x90`（電腦版橫幅）。只會播同尺寸的廣告。

- 曝光：版位至少一半在畫面上、連續 1 秒才算一次
- 點擊：用系統瀏覽器開啟廣告網址，點擊數由平台記錄
- 沒有可播的廣告時，版位自動收起
- 版位右上角會自動顯示「廣告」小標（0.1.1 起），不用自己加

## 版本

見 [Releases](https://github.com/coollazy/RSAds-iOS/releases)。本套件以編譯好的 XCFramework 發布。
