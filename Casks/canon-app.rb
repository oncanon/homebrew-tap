cask "canon-app" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/oncanon/canon/releases/download/v#{version}/Canon-#{version}.zip"
  name "Canon"
  desc "Menu bar companion for the Canon publishing workstation"
  homepage "https://oncanon.com/"

  livecheck do
    url "https://oncanon.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on formula: "oncanon/tap/canon"
  depends_on macos: :sonoma

  app "Canon.app"

  uninstall quit: "dev.oncanon.Canon"

  zap trash: [
    "~/Library/Caches/dev.oncanon.Canon",
    "~/Library/HTTPStorages/dev.oncanon.Canon",
    "~/Library/Preferences/dev.oncanon.Canon.plist",
  ]
end
