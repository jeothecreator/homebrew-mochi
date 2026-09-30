cask "mochi" do
  version "1.1.2"
  sha256 "2d0c777076c9cdff30235554613bd8991caa97e84332495fd3ff0995a9358c58"

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
