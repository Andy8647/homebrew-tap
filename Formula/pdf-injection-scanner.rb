class PdfInjectionScanner < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to detect hidden prompt injection attacks in PDF files"
  homepage "https://github.com/Andy8647/pdf-injection-scanner"
  url "https://files.pythonhosted.org/packages/source/p/pdf-injection-scanner/pdf_injection_scanner-0.1.0.tar.gz"
  sha256 "09407a10e2b55be4975ec5b4a7922ef7b8596283c8806488dc1db18e5b072f3f"
  license "MIT"

  depends_on "python@3.13"

  resource "pdfplumber" do
    url "https://files.pythonhosted.org/packages/source/p/pdfplumber/pdfplumber-0.11.9.tar.gz"
    sha256 "7a8eb3a1e5e8f71c5e9fd38fde0e453bcdf4baccfb523464c0945db20e4cbe63"
  end

  resource "pdfminer-six" do
    url "https://files.pythonhosted.org/packages/source/p/pdfminer.six/pdfminer.six-20251230.tar.gz"
    sha256 "b5ee670de1fe49a28c67adcb0e3b6c89f4f16abb94acf36a5110e2be7a6ad47e"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.3.2.tar.gz"
    sha256 "935571d47d1ab19b0ad871ea22ad912a2e3da9b7cdd969935a22eb1ec4e0863d"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-14.3.3.tar.gz"
    sha256 "2529e89eac4a90bc06de372e6b1ea219550282c5765ef905bbd4c95cd6da0982"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-4.0.0.tar.gz"
    sha256 "9307b3659a5714056020d46e61b96a05afb341758eb12be87f648c61e2d1e310"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116571b305e34ea12a6003082ac00"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/P/Pygments/pygments-2.20.0.tar.gz"
    sha256 "7e4df557875ee1113d8e3dedb9437afc1e0500302e4f3b8bcf8a2a46eb2b528e"
  end

  resource "pypdfium2" do
    url "https://files.pythonhosted.org/packages/source/p/pypdfium2/pypdfium2-5.7.0.tar.gz"
    sha256 "dca45e3d8b1a07097ee78a9a3e9b3d4d08779fc7e88c3969fb2e518cfdac94c9"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.7.tar.gz"
    sha256 "6a0d18e33e02890d13689e3e7ee875cba0d019ab3a4841e4b8204d50ab8b3200"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/source/c/cryptography/cryptography-46.0.7.tar.gz"
    sha256 "715ff5271c1aaba833e229a48c5d8a6a27b8c0a68ee8460deb60b2c7a4bce3a5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/pdf-scan --help")
  end
end
