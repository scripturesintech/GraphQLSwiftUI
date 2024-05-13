// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class Query: GraphQLQuery {
  public static let operationName: String = "Query"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Query { allFilms { __typename films { __typename title } } }"#
    ))

  public init() {}

  public struct Data: FilmsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { FilmsAPI.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allFilms", AllFilms?.self),
    ] }

    public var allFilms: AllFilms? { __data["allFilms"] }

    /// AllFilms
    ///
    /// Parent Type: `FilmsConnection`
    public struct AllFilms: FilmsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { FilmsAPI.Objects.FilmsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("films", [Film?]?.self),
      ] }

      public var films: [Film?]? { __data["films"] }

      /// AllFilms.Film
      ///
      /// Parent Type: `Film`
      public struct Film: FilmsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { FilmsAPI.Objects.Film }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("title", String?.self),
        ] }

        public var title: String? { __data["title"] }
      }
    }
  }
}
