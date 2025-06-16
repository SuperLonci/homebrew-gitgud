class GitGud < Formula
  desc "An alternative git help command: git gud"
  homepage "https://github.com/superlonci/git-gud"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-macos-arm64"
    sha256 "850075827c84f088c33de7cbc5c45f443b015da237b6d117605486bb10ff4626"

    def install
      bin.install "git-gud-macos-arm64" => "git-gud"
    end

  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-macos-amd64"
    sha256 "65be2d983b916bb931035f2d7f6ed66689acc9c1c3c6330c6028c5bb116db27a"

    def install
      bin.install "git-gud-macos-amd64" => "git-gud"
    end

  elsif OS.linux?
    url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-linux"
    sha256 "da0324594413c0687d49afc6c73929443798e9f1fd15092635074a6564e26379"

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
