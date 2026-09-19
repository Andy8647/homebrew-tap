class PdfInjectionScanner < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to detect hidden prompt injection attacks in PDF files"
  homepage "https://github.com/Andy8647/pdf-injection-scanner"
  url "https://files.pythonhosted.org/packages/source/p/pdf-injection-scanner/pdf_injection_scanner-0.2.1.tar.gz"
  sha256 "aaba53d6c035d23bb1c7419460614fa55a6f69bed738817b3e9f61c26c08a63d"
  license "MIT"

  depends_on "python@3.13"
  depends_on "rust" => :build

  resource "pdfplumber" do
    url "https://files.pythonhosted.org/packages/source/p/pdfplumber/pdfplumber-0.11.9.tar.gz"
    sha256 "481224b678b2bbdbf376e2c39bf914144eef7c3d301b4a28eebf0f7f6109d6dc"
  end

  resource "pdfminer-six" do
    url "https://files.pythonhosted.org/packages/source/p/pdfminer.six/pdfminer_six-20251230.tar.gz"
    sha256 "e8f68a14c57e00c2d7276d26519ea64be1b48f91db1cdc776faa80528ca06c1e"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.3.2.tar.gz"
    sha256 "14162b8b3b3550a7d479eafa77dfd3c38d9dc8951f6f69c78913a8f9a7540fd5"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-14.3.3.tar.gz"
    sha256 "b8daa0b9e4eef54dd8cf7c86c03713f53241884e814f4e2f5fb342fe520f639b"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/P/Pygments/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "pypdfium2" do
    url "https://files.pythonhosted.org/packages/source/p/pypdfium2/pypdfium2-5.7.0.tar.gz"
    sha256 "9febb09f532555485f064c1f6442f46d31e27be5981359cb06b5826695906a06"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/source/c/cryptography/cryptography-46.0.7.tar.gz"
    sha256 "e4cfd68c5f3e0bfdad0d38e023239b96a2fe84146481852dffbcca442c245aa5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/pdf-scan --help")
  end
end
