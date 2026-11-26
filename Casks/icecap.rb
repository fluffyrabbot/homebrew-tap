# The Homebrew cask for icecap. Scripts/release.sh writes build/icecap.rb from this file,
# with the version and checksum filled in, for the tap at fluffyrabbot/homebrew-tap.
cask "icecap" do
  version "0.1.1"
  sha256 "b0da48c2a081c5a282ad892e364febc1acdb374c305806906e9eb3eecfdbbd4f"

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

  zap trash: "~/Library/Preferences/com.memorysynchub.icecap.plist"
end
