class Canon < Formula
  desc "Deterministic, content-addressed typesetting for technical briefs"
  homepage "https://oncanon.dev/"
  url "https://github.com/oncanon/canon/releases/download/v0.1.2/canon-0.1.2.tgz"
  sha256 "f47466d15621ba569eb4ca70b3a958b17f4f99f0f5e60301ae233fcc6fc655a2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/canon --version").strip
  end
end
