cask "tomtom-mydrive-connect" do
  version "4.2.13.4586"
  sha256 :no_check

  url "https://cdn.sa.services.tomtom.com/static/sa/Mac/TomTomMyDriveConnect.dmg"
  name "TomTom MyDrive Connect"
  desc "Update your TomTom navigation device"
  homepage "https://www.tomtom.com/mydrive-connect/"

  livecheck do
    skip "No reliable way to get version info"
  end

  pkg "MyDriveConnect.mpkg"

  uninstall quit:       [
              "com.tomtom.mytomtomsa",
              "application.com.apple.systemevents.1152921500312199658",
            ],
            login_item: "TomTomMyDriveConnectHelper",
            pkgutil:    [
              "com.tomtom.mytomtomsa.temp.pkg",
              "com.tomtom.mytomtomsa.pkg",
            ]

  zap trash: [
        "~/Library/Application Support/CrashReporter/TomTom MyDrive Connect_*.plist",
        "~/Library/Application Support/TomTom/HOME3",
        "~/Library/Logs/DiagnosticReports/TomTom MyDrive Connect_*.crash",
        "~/Library/Preferences/com.tomtom.mytomtomsa.plist",
        "~/Library/Saved Application State/com.tomtom.mytomtomsa.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/TomTom",
        "~/Library/Caches/TomTom",
      ]
end
