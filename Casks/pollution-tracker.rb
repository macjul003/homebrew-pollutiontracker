cask "pollution-tracker" do
  version "1.0.1"
  sha256 "f9a63b4b21ba9265fedbd64c7fd3ed3f92773a79ea92c626962a664556f2572a"

  url "https://github.com/macjul003/PollutionTracker/releases/download/v#{version}/PollutionTracker.zip"
  name "PollutionTracker"
  desc "macOS menu bar app that tracks real-time air pollution levels (AQI)"
  homepage "https://github.com/macjul003/PollutionTracker"

  depends_on macos: ">= :ventura"

  app "PollutionTracker.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PollutionTracker.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.macjul003.PollutionTracker.plist",
    "~/Library/Caches/com.macjul003.PollutionTracker",
  ]
end
