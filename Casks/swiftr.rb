cask "swiftr" do
  version "0.1.4"
  sha256 "a0ef653ce44f54cabeb8b10288111a69d11409668d890f79399deebedb7fbfff"

  url "https://github.com/MelvinSDRS/swiftr/releases/download/v#{version}/Swiftr-#{version}.dmg"
  name "Swiftr"
  desc "Terminals and coding agents on every machine"
  homepage "https://github.com/MelvinSDRS/swiftr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Swiftr.app"

  zap trash: [
    "~/Library/Application Support/Swiftr",
    "~/Library/Caches/com.melvinsiadous.Swiftr",
    "~/Library/Preferences/com.melvinsiadous.Swiftr.plist",
  ]
end
