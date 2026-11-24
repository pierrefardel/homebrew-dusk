cask "dusk" do
  version "0.1.5"
  sha256 "240eb81e8802e0b33ff318eefd8ce45e9d40b530271ae8232cdd87691241f5d3"

  url "https://github.com/pierrefardel/dusk/releases/download/v#{version}/Dusk.zip"
  name "Dusk"
  desc "Menu bar app to control display brightness at the hardware level"
  homepage "https://github.com/pierrefardel/dusk"

  livecheck do
    url "https://raw.githubusercontent.com/pierrefardel/dusk/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Dusk.app"

  zap trash: [
    "~/Library/Application Support/Dusk",
    "~/Library/Caches/fr.pierrefardel.dusk",
    "~/Library/HTTPStorages/fr.pierrefardel.dusk",
    "~/Library/Preferences/fr.pierrefardel.dusk.plist",
  ]
end
