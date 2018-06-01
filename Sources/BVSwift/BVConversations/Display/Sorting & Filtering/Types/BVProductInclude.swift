//
//
//  BVProductInclude.swift
//  BVSwift
//
//  Copyright © 2018 Bazaarvoice. All rights reserved.
// 

import Foundation

/// An enum that represents the possible includable BVQueryable objects with a
/// relation to the target BVProduct object.
/// - Note:
/// \
/// Used for conformance with the BVConversationsQueryIncludeable protocol.
public enum BVProductInclude: BVConversationsQueryInclude {
  
  case answers
  case authors
  case comments
  case questions
  case reviews
  
  public var description: String {
    return internalDescription
  }
}

extension BVProductInclude: BVConversationsQueryValue {
  internal var internalDescription: String {
    get {
      switch self {
      case .answers:
        return BVAnswer.pluralKey
      case .authors:
        return BVAuthor.pluralKey
      case .comments:
        return BVComment.pluralKey
      case .questions:
        return BVQuestion.pluralKey
      case .reviews:
        return BVReview.pluralKey
      }
    }
  }
}
