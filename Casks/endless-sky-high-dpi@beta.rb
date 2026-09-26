cask "endless-sky-high-dpi@beta" do
  version "0.11.3"
  sha256 "fa56f54bf455700353a9a3434bb3c54fed32143ec19f02161e4be57dae070c0a"

  url "https://github.com/endless-sky/endless-sky-high-dpi/archive/refs/tags/v#{version}.tar.gz",
  name "Endless Sky High-DPI Unstable"
  desc "High-DPI plugin for Endless Sky"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "endless-sky"
  depends_on :macos

  highdpi_dir = "endless-sky-high-dpi-#{version}"
  artifact highdpi_dir, target: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"

  zap trash: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"
end
