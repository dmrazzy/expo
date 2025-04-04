// Copyright 2022-present 650 Industries. All rights reserved.

import ExpoModulesCore

internal final class InvalidImageException: GenericException<String> {
  override var reason: String {
    "Invalid base64 image: \(param.prefix(32))\(param.count > 32 ? "..." : "")"
  }
}

internal final class PasteFailureException: Exception {
  override var reason: String {
    "Failed to get item from clipboard"
  }
}
