cask "dusk" do
  version "0.1.3"
  sha256 "1c2ec258ef96c6861b3a4216bd33654c254aebcef8a89deaeb6ad537c4b839e2"

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
