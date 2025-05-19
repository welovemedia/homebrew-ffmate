cask "ffmate" do
  version "v0.0.95"

  on_intel do
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_x86_64.tar.gz "
  end

  on_arm do
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_arm64.tar.gz "
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
