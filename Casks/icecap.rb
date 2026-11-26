# The Homebrew cask for icecap. Scripts/release.sh writes build/icecap.rb from this file,
# with the version and checksum filled in, for the tap at fluffyrabbot/homebrew-tap.
cask "icecap" do
  version "0.1.0"
  sha256 "40ee5fdbc49602c922c1b5a4431ce0024f3082b2a1582838bb07b6f633712ad9"

  url "https://github.com/fluffyrabbot/icecap/releases/download/v#{version}/icecap-#{version}.dmg"
  name "icecap"
  desc "Menu bar organizer that groups icons behind a chevron"
  homepage "https://github.com/fluffyrabbot/icecap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "icecap.app"

  uninstall quit: "com.memorysynchub.icecap"

  zap trash: "~/Library/Preferences/com.memorysynchub.icecap.plist"
end
