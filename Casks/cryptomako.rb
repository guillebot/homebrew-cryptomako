cask "cryptomako" do
  version "1.0.9"
  sha256 "99f00cbfc22790a7ce15e50a61f667c0b45db5a59e6c3ef56cd5b193d89a1a7d"

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
