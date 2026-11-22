cask "dusk" do
  version "0.1.4"
  sha256 "67c4368c6c5af54bfb7f70c1c43067aa4ba10d0fe4d37d108821464540d5a6e7"

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
