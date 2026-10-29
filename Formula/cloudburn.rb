class Cloudburn < Formula
  desc "CLI for cloud cost optimization"
  homepage "https://cloudburn.io/docs"
  url "https://registry.npmjs.org/cloudburn/-/cloudburn-0.18.14.tgz"
  sha256 "b56cd7814a7926e4f1d2fa456c0257d0caca62b10049d6472506fc11c91bd10a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloudburn --version")
  end
end
