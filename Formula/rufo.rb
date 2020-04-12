class Rufo < Formula
  desc "Rufo is as an opinionated ruby formatter"
  homepage "https://github.com/ruby-formatter/rufo"
  url "https://github.com/ruby-formatter/rufo/archive/v0.12.0.zip"
  sha256 "faa28b40cfb263d68c0206b380197201f1ec7e529c9d0457b218fbae3e8f486c"
  head "https://github.com/ruby-formatter/rufo.git"

  depends_on "ruby@2.5"

  resource "rake" do
    url "https://rubygems.org/gems/rake-13.0.0.gem"
    sha256 "06195347674818f4979ba22561a24b9d07f692758e4aabe5bcb12da55e058816"
  end

  def install
    ENV["GEM_HOME"] = libexec

    resources.each do |r|
      r.fetch
      system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
    end

    system "gem", "install", "rufo", "--no-document"

    (bin / "rufo").write <<~EOS
                           #!/bin/bash
                           export PATH="#{Formula["ruby@2.5"].opt_bin}:$PATH"
                           GEM_HOME="#{libexec}" GEM_PATH="#{libexec}" exec "#{libexec}/bin/rufo" "$@"
                         EOS
    chmod "+x", (bin / "rufo")
  end
end
