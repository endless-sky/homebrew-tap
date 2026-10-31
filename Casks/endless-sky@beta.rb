cask "endless-sky@beta" do
  version "0.11.4"
  sha256 "5c074dabc8cbe6fb55d453d8d7f640320998214dfba4f6a4a9ef5ed7535517cc"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg"
  name "Endless Sky Unstable"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Endless Sky.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/endless-sky.sfl",
    "~/Library/Application Support/endless-sky",
    "~/Library/Saved Application State/Endless-Sky.savedState",
  ]
end
