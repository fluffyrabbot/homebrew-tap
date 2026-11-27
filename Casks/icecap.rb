# The Homebrew cask for icecap. Scripts/release.sh writes build/icecap.rb from this file,
# with the version and checksum filled in, for the tap at fluffyrabbot/homebrew-tap.
cask "icecap" do
  version "0.1.3"
  sha256 "26cd8de1de698369e95ae58ef47fe7a2b889eb9bb92f07768efe13e52df15ed4"

  url "https://github.com/fluffyrabbot/icecap/releases/download/v#{version}/icecap-#{version}.dmg"
  name "icecap"
  desc "Menu bar organizer that groups icons behind a chevron"
  homepage "https://github.com/fluffyrabbot/icecap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "icecap.app"

  uninstall quit: "com.memorysynchub.icecap"

  zap trash: [
    "~/Library/Preferences/com.memorysynchub.icecap.plist",
    "~/Library/Preferences/com.memorysynchub.icecap.spacer.plist",
  ]
end
