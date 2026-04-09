class Cloudburn < Formula
  desc "CLI for cloud cost optimization"
  homepage "https://cloudburn.io/docs"
  url "https://registry.npmjs.org/cloudburn/-/cloudburn-0.9.11.tgz"
  sha256 "c1e11b52c450284eae554b624764aa3cb0dd6f6e07f4246a63bfb68ee47317c3"
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
