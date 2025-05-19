cask "ffmate" do
  version "v0.0.97"

  on_intel do
    sha256 "4d5da21eb524017a83d2606bd726f61915dc0dd0419701f84c27b3414ec4b27a"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_x86_64.tar.gz"
  end

  on_arm do
    sha256 "fdc467ab7e638b5e6ffac78d83fcfd53b2fc2f06c801c9e5e29eabb8a6c55c70"
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
