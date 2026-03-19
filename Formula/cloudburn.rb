class Cloudburn < Formula
  desc "CLI for cloud cost optimization"
  homepage "https://cloudburn.io/docs"
  url "https://registry.npmjs.org/cloudburn/-/cloudburn-0.9.2.tgz"
  sha256 "a55ab2556d11de58d4da1232d53cd3727f0e6c8e4ce361dfc1466f64de70a358"
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
