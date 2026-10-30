class GoldenCensus < Formula
  include Language::Python::Virtualenv

  desc "Characterization harness: record a program's output bytes, compare them later"
  homepage "https://github.com/bunkanoyume/golden-census"
  url "https://github.com/bunkanoyume/golden-census/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ad59312bc3219db7b9200f022ef830253d8c7ba45ede1ee9885dd11860ecad1b"
  license "MIT"
  head "https://github.com/bunkanoyume/golden-census.git", branch: "main"

  depends_on "python@3.15"

  # No resources: the project has no runtime dependencies, and pip's build
  # isolation fetches hatchling on its own (Language::Python::Virtualenv).

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/golden-census --version") unless build.head?
    # init --list reads the templates the wheel carries under _shipped/, so
    # it proves the install found its data; --selfcheck takes two minutes
    # and loops under Homebrew's git shim inside brew test's sandbox.
    assert_match "_neutral", shell_output("#{bin}/golden-census init --list")
  end
end
