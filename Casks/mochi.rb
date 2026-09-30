cask "mochi" do
  version "1.2.0"
  sha256 "afedbc2e96db02481c1bc5c7d967257996652c062d61797070095d9a90e8cc37"

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
