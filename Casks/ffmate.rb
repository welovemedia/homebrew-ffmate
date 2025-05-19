cask "ffmate" do
  version "v0.0.98"

  on_intel do
    sha256 "efa92581d27c8145e074827f4e51b6314ff18cb0191774d673500c8fc3c536bf"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_x86_64.tar.gz"
  end

  on_arm do
    sha256 "e29342c07e5d1a1b798fae5ac7a0f0f2642c8fc8c4cec6fd6800924ad976a14a"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_arm64.tar.gz"
  end

  name "ffmate"
  desc "FFmate is a modern and powerful automation layer built on top of FFmpeg — designed to make video and audio transcoding simpler, smarter, and easier to integrate."
  homepage "https://ffmate.io"

  binary "ffmate"

  zap trash: []

  livecheck do
    url :url
    strategy :github_latest
  end
end
