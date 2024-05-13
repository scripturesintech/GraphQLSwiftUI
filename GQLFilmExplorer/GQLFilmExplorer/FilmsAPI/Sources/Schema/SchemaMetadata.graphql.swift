// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == FilmsAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == FilmsAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == FilmsAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == FilmsAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Root": return FilmsAPI.Objects.Root
    case "FilmsConnection": return FilmsAPI.Objects.FilmsConnection
    case "Film": return FilmsAPI.Objects.Film
    case "Species": return FilmsAPI.Objects.Species
    case "Planet": return FilmsAPI.Objects.Planet
    case "Person": return FilmsAPI.Objects.Person
    case "Starship": return FilmsAPI.Objects.Starship
    case "Vehicle": return FilmsAPI.Objects.Vehicle
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
