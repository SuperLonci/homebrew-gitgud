class GitGud < Formula
  desc "An alternative git help command: git gud"
  homepage "https://github.com/superlonci/git-gud"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-macos-arm64"
    sha256 "2f59ddaaa2f541f71c389b0f2fa347ce311bcc3ed4225d4aaf4e1be17794d648"

    def install
      bin.install "git-gud-macos-arm64" => "git-gud"
    end

  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-macos-amd64"
    sha256 "85ba678db9c04801be284185bad8da7422181493fbc857747ed8489e9adf36a2"

    def install
      bin.install "git-gud-macos-amd64" => "git-gud"
    end

  elsif OS.linux?
    url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-linux"
    sha256 "2a1fc18f4060bb233169860e9c2242af9c61a0a8a9873d9971c1ac94643dd1bb"

    def install
      bin.install "git-gud-linux" => "git-gud"
    end

  else
    odie "Unsupported platform"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/git-gud --help")
  end
end
