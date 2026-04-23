class Sigflare < Formula
  desc "Supply chain risk assessment at install-time"
  homepage "https://sigflare.dev"
  version "0.1.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lwstudios-bp/sigflare/releases/download/v0.1.1/sigflare_0.1.1_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    else
      url "https://github.com/lwstudios-bp/sigflare/releases/download/v0.1.1/sigflare_0.1.1_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lwstudios-bp/sigflare/releases/download/v0.1.1/sigflare_0.1.1_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    else
      url "https://github.com/lwstudios-bp/sigflare/releases/download/v0.1.1/sigflare_0.1.1_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install "sigflare"
  end

  test do
    system bin/"sigflare", "--version"
  end
end
