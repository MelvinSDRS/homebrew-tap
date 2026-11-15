cask "swiftr" do
  version "0.1.0"
  sha256 "6c839ee0c2645449b608214915adbff33055bfa479b43875ec700a49a1d18f90"

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
