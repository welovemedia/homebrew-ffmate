cask "ffmate" do
  version "1.0.8"

  on_intel do
    sha256 "a490cf57c317d6f763463f38b975ad72c23b45d46e2e8dc3bcf881973bae5fb1"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate-darwin-amd64.gz"
  end

  on_arm do
    sha256 "62e6ecc77df199ccad4aa7fb5dd1934fdc4e03eee729903479e1c5c71e1e696f"
    url "https://github.com/welovemedia/ffmate/releases/download/#{version}/ffmate-darwin-arm64.gz"
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
