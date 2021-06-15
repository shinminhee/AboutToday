//
//  WeatherModel.swift
//  Weather
//
//  Created by 신민희 on 2021/03/15.
//

import Foundation

struct WeatherModel {
    let urlSeoulString = "https://api.openweathermap.org/data/2.5/weather?q=seoul&appid="
    let urlDaeguString = "https://api.openweathermap.org/data/2.5/weather?q=daegu&appid="
    let urlDaejeonString = "https://api.openweathermap.org/data/2.5/weather?q=daejeon&appid="
    let urlIncheonString = "https://api.openweathermap.org/data/2.5/weather?q=incheon&appid="
    let urlBusanString = "https://api.openweathermap.org/data/2.5/weather?q=busan&appid="
    let urlYeosuString = "https://api.openweathermap.org/data/2.5/weather?q=yeosu&appid="
    let urlGangneungString = "https://api.openweathermap.org/data/2.5/weather?q=gangneung&appid="
    let urlGwangjuString = "https://api.openweathermap.org/data/2.5/weather?q=gwangju&appid="
    
    func loadSeoulData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlSeoulString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadDaeguData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlDaeguString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadDaejeonData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlDaejeonString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadIncheonData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlIncheonString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadBusanData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlBusanString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadYeosuData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlYeosuString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadGangneungData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlGangneungString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
    func loadGwangjuData(completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: urlGwangjuString) else { fatalError() }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else { print(error!); return }
            guard let data = data else{ return }
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch {
                print(error)
            }
        }).resume()
    }
    
}

