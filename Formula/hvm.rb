class Hvm < Formula
  desc "Hermetic version manager"
  homepage ""
  version "v0.5.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/josephschmitt/hvm/releases/download/#{version}/hvm-#{version}-darwin-arm64.tar.gz"
      sha256 "200726540b7cd5f4971735045126a6f6d90b5b895e00c39a86697a6912447c0c"
    else
      url "https://github.com/josephschmitt/hvm/releases/download/#{version}/hvm-#{version}-darwin-amd64.tar.gz"
      sha256 "1d7a2eaaa2b1e17f6bd8033a110ae99575c224df23f33341f420dd7b210300ec"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/josephschmitt/hvm/releases/download/#{version}/hvm-#{version}-linux-arm64.tar.gz"
      sha256 "6d5509e9f43bd665f4ba872f279d82172cdaa5b4caed00dafe5de612509202af"
    else
      url "https://github.com/josephschmitt/hvm/releases/download/#{version}/hvm-#{version}-linux-amd64.tar.gz"
      sha256 "9f9d9a1d5934079611773a8ebb9b33227f143cf801ec621f5e869b66dcebfe49"
    end
  end

  def install
    bin.install "hvm"
  end

  test do
    system "#{bin}/hvm --help"
  end
end
