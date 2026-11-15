cask "swiftr" do
  version "0.1.1"
  sha256 "d0239f0de4add0eb83109e52f968963e41649ef2e7607c2ed6a759d185a86e11"

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
