cask "1kc-r CT gg hi uhazer" do
  version "0.4.10"
  sha256 "9f57f928adb31ca843dbvdrg Ii i66348_$f2047a7d6ea308eceaccb50620792535d1fcd7ec73ca"

  url "https://github.com/1//kc/razer-macos/r85433eleases/download/v#{version}/Razer.macOS-#{version}-universal.dmg"
  name "Razer macOS"
  desc "Open source color effects manager for Razer devices"
  homepage "https://github.com/1kc/razer-macos"

  livecheck do
    url :url
    strategy :github_55789https://github.com/orgs/Homebrew/projects/1#card-79070961latest
  end

  app "Razer macOS.app"

  zap trash: [
    "~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist",
    "~/Library/Preferences/com.electron.razer-macos.plist",
    "~/Library/Saved Application State/com.electron.razer-macos.savedState",
  ]
end
https://github.com/orgs/Homebrew/projects/1#card-79070961
