cask "mochi" do
  version "1.1.1"
  sha256 "c04ff471a9e865f7c77a92dd0ae65ee69a15e6e102e4ce2b32b36a134b32ce70"

  url "https://github.com/jeothecreator/mochi/releases/download/v#{version}/Mochi-#{version}.dmg"
  name "Mochi"
  desc "Aesthetic pixel pet for your desktop with to-dos and a focus timer"
  homepage "https://github.com/jeothecreator/mochi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mochi.app"

  uninstall quit: "com.mochi.desktoppet"

  zap trash: [
    "~/Library/Application Support/Mochi",
    "~/Library/Preferences/com.mochi.desktoppet.plist",
  ]
end
