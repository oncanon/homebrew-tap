class Canon < Formula
  desc "Deterministic, content-addressed typesetting for technical briefs"
  homepage "https://oncanon.dev/"
  url "https://github.com/oncanon/canon/releases/download/v0.1.0/canon-0.1.0.tgz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
