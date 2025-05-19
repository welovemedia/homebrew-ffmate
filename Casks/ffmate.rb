cask "ffmate" do
  version "v0.0.96"

  on_intel do
    sha256 "6c209d9abd5b9de57d0b1043ea74a9aac17dfc3e988ee2e193f6d7811a0ab729"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_x86_64.tar.gz"
  end

  on_arm do
    sha256 "55ad2ffee25101fa9640bee4bf44036a0a0b399cbfeed71f80990598b6ac92e5"
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
