# RSAds iOS SDK

在自己的 iOS App 播放你在 [RSAds](https://rsads.venwu.com) 上傳的廣告。iOS 15 以上，支援 SwiftUI 和 UIKit，GIF、動態 WebP 動畫會動（WebP 0.1.3 起）。

## 安裝（Swift Package Manager）

Xcode → File → Add Package Dependencies… → 貼上：

```
https://github.com/coollazy/RSAds-iOS
```

或寫在 `Package.swift`：

```swift
.package(url: "https://github.com/coollazy/RSAds-iOS", from: "0.1.3")
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
slot.onLoad = { filled in /* true = 有廣告；false = 沒有可播的廣告，版位已自動隱藏 */ }
view.addSubview(slot)

// 想馬上換一則（例如下拉更新）才需要呼叫，平常版位會自己輪播
slot.reload()
```

尺寸：`.s320x50`（手機細長條）、`.s320x100`（手機大長條）、`.s300x250`（方塊）、`.s728x90`（電腦版橫幅）。只會播同尺寸的廣告。

- 顯示：圖片載好才出現版位和右上角「廣告」小標；載入中、沒有可播的廣告時，版位自動收起（0.1.2 起）
- 輪播（0.1.2 起）：秒數在 [RSAds](https://rsads.venwu.com) 後台每個 App 的「修改設定」裡設定（預設 60 秒、最短 30 秒、可設不輪播），App 程式不用寫。只在版位至少一半看得到、App 在前景時計時；新圖先載好才換，不會連續換到同一則（只有一則時除外）
- 沒有可播的廣告時，照同樣秒數定時再問，平台一有廣告就自己出現
- `onLoad`：第一次拿到結果一定叫一次；之後只有「有 ↔ 沒有」改變時才叫，換成另一則不叫。可以用來決定要不要放自己的備用內容
- 曝光：每一則都要版位至少一半在畫面上、連續 1 秒才算一次
- 點擊：用系統瀏覽器開啟廣告網址，點擊數由平台記錄
- 版位右上角會自動顯示「廣告」小標（0.1.1 起），不用自己加

## 版本

見 [Releases](https://github.com/coollazy/RSAds-iOS/releases)。本套件以編譯好的 XCFramework 發布。
