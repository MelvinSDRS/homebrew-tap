cask "swiftr" do
  version "0.1.3"
  sha256 "7397f516691e28bf5b2d3d6bd73b7e514010ff87210909656318a184bd18bb79"

  url "https://github.com/MelvinSDRS/swiftr/releases/download/v#{version}/Swiftr-#{version}.dmg"
  name "Swiftr"
  desc "Terminals and coding agents on every machine"
  homepage "https://github.com/MelvinSDRS/swiftr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Swiftr.app"

  zap trash: [
    "~/Library/Application Support/Swiftr",
    "~/Library/Caches/com.melvinsiadous.Swiftr",
    "~/Library/Preferences/com.melvinsiadous.Swiftr.plist",
  ]
end
