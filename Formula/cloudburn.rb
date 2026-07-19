class Cloudburn < Formula
  desc "CLI for cloud cost optimization"
  homepage "https://cloudburn.io/docs"
  url "https://registry.npmjs.org/cloudburn/-/cloudburn-0.10.0.tgz"
  sha256 "8fdeac344be448de8229f2da2d28b9bf74aa81c437a8df1389a1eca13469e473"
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
