class CommitMessageCli < Formula
  include Language::Python::Virtualenv

  desc "Generate commit messages using AI"
  homepage "https://github.com/smoothdev-io/commit-message-cli"
  url "https://github.com/smoothdev-io/commit-message-cli/archive/refs/tags/1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"generate-commit-message", "--help"
  end
end
