class NzbMonkeyGo < Formula
    desc "Golang version of NZB Monkey with included NZB direct search"
    homepage "https://github.com/Tensai75/nzb-monkey-go"
    url "https://github.com/Tensai75/nzb-monkey-go/archive/refs/tags/v0.3.3.tar.gz"
    sha256 "3fc38f0175475d131c0fb537fd603f7cd7525376c4ef00b2e35da422d27e4fcf"
    license "MIT"

    depends_on "go" => :build

    def install
        # Build the binary using Go
        system "go", "build", *std_go_args(output: bin/"nzb-monkey-go"), "."

        # Optional: If the app has default config files or assets,
        # you can copy them using `pkgshare.install` here.
    end

    test do
        # Simple check to see if the binary executes and returns its help/version output
        assert_match "nzb-monkey-go", shell_output("#{bin}/nzb-monkey-go --help", 0)
    end
end
