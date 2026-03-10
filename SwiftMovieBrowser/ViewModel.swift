//
//  ViewModel.swift
//  SwiftMovieBrowser
//
//  Created by Glen Heide on 3/10/26.
//

import Foundation

class ViewModel: ObservableObject {
    enum FetchStatus {
        case notStarted
        case fetching
        case success
        case failed(underlyingError: Error)
    }
    
    @Published private(set) var homeStatus: FetchStatus = .notStarted;
    private let dataFetcher = DataFetcher();
    @Published var trendingMovies: [Title] = [];
    @Published var trendingTV: [Title] = [];
    @Published var topRatedMovies: [Title] = [];
    @Published var topRatedTV: [Title] = [];

    func getTitles() async {
        homeStatus = .fetching
        
        do {
            async let tMovies = dataFetcher.fetchTitles(for: "movie", by: "trending");
            async let tTV = dataFetcher.fetchTitles(for: "tv", by: "trending");
            async let trMovies = dataFetcher.fetchTitles(for: "movie", by: "top_rated");
            async let trTV = dataFetcher.fetchTitles(for: "tv", by: "top_rated");
            
            trendingMovies = try await tMovies;
            trendingTV = try await tTV;
            topRatedMovies = try await trMovies;
            topRatedTV = try await trTV;

            homeStatus = .success
        } catch {
            print(error)
            homeStatus = .failed(underlyingError: error)
        }
    }
}
