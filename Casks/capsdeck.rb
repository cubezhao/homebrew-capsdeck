cask "capsdeck" do
  version "0.1.0"
  auto_updates true

  on_arm do
    url "https://github.com/cubezhao/homebrew-capsdeck/releases/download/v#{version}/CapsDeck_#{version}_aarch64.dmg",
        verified: "github.com/cubezhao/homebrew-capsdeck/"
    sha256 :no_check # TODO: replace with actual sha256 after first release
  end

  on_intel do
    url "https://github.com/cubezhao/homebrew-capsdeck/releases/download/v#{version}/CapsDeck_#{version}_x64.dmg",
        verified: "github.com/cubezhao/homebrew-capsdeck/"
    sha256 :no_check # TODO: replace with actual sha256 after first release
  end

  name "CapsDeck"
  desc "Remap CapsLock into a powerful modifier layer"
  homepage "https://github.com/cubezhao/homebrew-capsdeck"

  # Tauri apps ship as .app inside a .dmg
  app "CapsDeck.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.capsdeck",
    "~/Library/Application Support/com.cubezhao.capslockcube",
    "~/Library/Caches/com.cubezhao.capsdeck",
    "~/Library/Caches/com.cubezhao.capslockcube",
    "~/Library/Preferences/com.cubezhao.capsdeck.plist",
    "~/Library/Preferences/com.cubezhao.capslockcube.plist",
    "~/Library/WebKit/com.cubezhao.capsdeck",
    "~/Library/WebKit/com.cubezhao.capslockcube",
  ]
end
