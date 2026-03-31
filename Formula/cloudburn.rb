class Cloudburn < Formula
  desc "CLI for cloud cost optimization"
  homepage "https://cloudburn.io/docs"
  url "https://registry.npmjs.org/cloudburn/-/cloudburn-0.9.8.tgz"
  sha256 "a305d9b254c48394d473bacdf3693ba4973b660f90a669b4a662c02aca8d8427"
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
