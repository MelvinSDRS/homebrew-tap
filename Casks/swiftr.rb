cask "swiftr" do
  version "0.1.2"
  sha256 "b5b5a08eb0a426537c01765e7336e366141a63fb65db4a4772b6cbb0afc71aa6"

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
