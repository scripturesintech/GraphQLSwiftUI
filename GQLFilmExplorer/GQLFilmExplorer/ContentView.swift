//
//  ContentView.swift
//  GQLFilmExplorer
//
//  Created by Roopesh Tripathi on 11/05/24.
//

import SwiftUI
import Apollo
import FilmsAPI

class Network {
    static let shared  = Network()
    var apollo = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
}

struct ContentView: View {
    
    @State private var allFilms: Query.Data.AllFilms? = nil
    
    var body: some View {
        
        NavigationStack {
            VStack {
                if let films = allFilms {
                    List {
                        ForEach(films.films ?? [], id: \.?.title) { film in
                            HStack {
                        Text(film?.title ?? "")
                            }
                        }
                    }
                }
            }
            .onAppear(perform: {
                Network.shared.apollo.fetch(query: Query()) { result in
                    switch result {
                        case .success(let graphQLResult):
                        if let allFilms = graphQLResult.data?.allFilms {
                            DispatchQueue.main.async {
                                self.allFilms = allFilms
                            }
                        }
                        case .failure(let error):
                            print(error)
                        }
                }
            })
        .navigationTitle("All Films")
        }
    }
}

#Preview {
    ContentView()
}

