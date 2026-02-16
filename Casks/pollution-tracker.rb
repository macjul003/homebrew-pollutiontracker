cask "pollution-tracker" do
  version "1.0.0"
  sha256 "a17754a16f0c600a05716d8e9b8a2a2e0af77aa2b1060d96d6929e64ab932f27"

  url "https://github.com/macjul003/PollutionTracker/releases/download/v#{version}/PollutionTracker.zip"
  name "PollutionTracker"
  desc "macOS menu bar app that tracks real-time air pollution levels (AQI)"
  homepage "https://github.com/macjul003/PollutionTracker"

  depends_on macos: ">= :ventura"

  app "PollutionTracker.app"

  zap trash: [
    "~/Library/Preferences/com.macjul003.PollutionTracker.plist",
    "~/Library/Caches/com.macjul003.PollutionTracker",
  ]
end
