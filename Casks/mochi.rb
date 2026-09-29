cask "mochi" do
  version "1.1.0"
  sha256 "6fbc26d9b257b21033c74d780c88bf79eec9b04b78d88e6f2292cb693aba1bf9"

  url "https://github.com/jeothecreator/mochi/releases/download/v#{version}/Mochi-#{version}.dmg"
  name "Mochi"
  desc "Aesthetic pixel pet for your desktop with to-dos and a focus timer"
  homepage "https://github.com/jeothecreator/mochi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Mochi.app"

  uninstall quit: "com.mochi.desktoppet"

  zap trash: [
    "~/Library/Application Support/Mochi",
    "~/Library/Preferences/com.mochi.desktoppet.plist",
  ]

  caveats <<~EOS
    Mochi is free and not notarized by Apple. On first launch, open
    System Settings → Privacy & Security and click "Open Anyway" (once).
    Mochi lives in your menu bar — hatch your egg and say hi!
  EOS
end
