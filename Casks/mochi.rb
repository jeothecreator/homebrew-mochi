cask "mochi" do
  version "1.3.0"
  sha256 "830933c32adb68e3def2aab20d2ddfded492d6af441aab2337a561c7801e8a09"

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
