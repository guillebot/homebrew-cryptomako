cask "cryptomako" do
  version "1.0.2"
  sha256 "d6a25250800edb1617b3be40b9dd5dfbafffc42cc7a82d1364d2de49279823f1"

  url "https://github.com/guillebot/cryptomako/releases/download/v#{version}/CryptoMako-#{version}.dmg"
  name "CryptoMako"
  desc "Cryptomator format-8 vault over S3-compatible storage"
  homepage "https://github.com/guillebot/cryptomako"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check the "latest" release instead
  # of the Git tags.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "CryptoMako.app"

  uninstall quit: "net.gschimmel.cryptomako"

  zap trash: [
    "~/.config/cryptomako",
    "~/Library/Caches/cryptomako",
    "~/Library/Caches/net.gschimmel.cryptomako",
    "~/Library/Containers/net.gschimmel.cryptomako",
    "~/Library/Containers/net.gschimmel.cryptomako.FileProvider",
    "~/Library/Group Containers/group.net.gschimmel.cryptomako",
    "~/Library/Group Containers/H4K6YW7MQM.group.net.gschimmel.cryptomako",
    "~/Library/HTTPStorages/cryptomako",
    "~/Library/HTTPStorages/net.gschimmel.cryptomako",
    "~/Library/Preferences/net.gschimmel.cryptomako.plist",
  ]
end
