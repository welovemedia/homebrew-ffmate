cask "ffmate" do
  version "v0.0.95"

  on_intel do
    sha256 "04350eddd4a070c24e7516be7d7fd895484296d774eaad123f6c00e5c2732fee"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate_Darwin_x86_64.tar.gz"
  end

  on_arm do
    sha256 "a05dc04ffdd39bfbd7628844d3c1157a482fa2b469f03abf00a2a432db2fa939"
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
