//
//  EmojiMemoryGameTheme.swift
//  MemorizeReplica
//
//  Created by Paula Vasconcelos Gueiros on 08/03/21.
//

import SwiftUI

struct EmojiMemoryGameTheme {
	
	// MARK: - Data Structure Declarations
	
	enum EmojiMemoryGameThemeName: String {
		case animals
		case nature
		case fruits
		case fashion
		case technology
		case weather
		case faces
	}
	
	enum ColorType {
		case color(Color)
		case gradient(Gradient)
	}
	
	// MARK: - Properties
	
	var themeName: EmojiMemoryGameThemeName
	var name: String {
		return themeName.rawValue.capitalizingFirstLetter()
	}
	var emojiSet: [String]
	var numberOfPairs: Int?
	var color: ColorType
	
	// MARK: - Initialization
	
	static func getRandomTheme() -> EmojiMemoryGameTheme {
		let randomThemeIndex = Int.random(in: 0..<themes.count)
		var newTheme = themes[randomThemeIndex]
		
		if newTheme.numberOfPairs == nil {
			newTheme.numberOfPairs = Int.random(in: 2...6)
		}
		return newTheme
	}
	
	// MARK: - Constant Class Properties
	
	static let defaultNumberOfPairs = 6
	
	static let themes: [EmojiMemoryGameTheme] = [
		EmojiMemoryGameTheme(
			themeName: .animals,
			emojiSet: ["๐ปโโ๏ธ", "๐ถ", "๐ฑ", "๐ฏ", "๐ฆ", "๐ท", "๐ธ", "๐น", "๐ฆ", "๐ฐ", "๐จ", "๐ฎ"],
			numberOfPairs: defaultNumberOfPairs,
			color: .color(.orange)),
		EmojiMemoryGameTheme(
			themeName: .nature,
			emojiSet: ["๐ต", "๐ชต", "๐ด", "๐", "๐", "๐ท", "๐ป", "๐", "๐ฑ", "๐", "๐ชจ", "๐ชด"],
			numberOfPairs: defaultNumberOfPairs,
			color: .color(.green)),
		EmojiMemoryGameTheme(
			themeName: .fruits,
			emojiSet: ["๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ซ", "๐", "๐", "๐ฅ"],
			numberOfPairs: defaultNumberOfPairs,
			color: .gradient(Gradient(colors: [.blue, .green, .yellow]))),
		EmojiMemoryGameTheme(
			themeName: .fashion,
			emojiSet: ["๐", "๐", "๐ฅฟ", "๐ ", "๐ก", "๐ข", "๐งค", "๐งฃ", "๐", "๐", "๐ถ", "๐"],
			numberOfPairs: defaultNumberOfPairs,
			color: .gradient(Gradient(colors: [.pink, .purple]))),
		EmojiMemoryGameTheme(
			themeName: .technology,
			emojiSet: ["๐ง", "๐ฎ", "โ๏ธ", "๐ฑ", "๐ป", "๐จ", "๐ฑ", "๐ฝ", "๐พ", "๐ผ", "๐ท", "๐น"],
			numberOfPairs: defaultNumberOfPairs,
			color: .gradient(Gradient(colors: [.gray, .black, .gray]))),
		EmojiMemoryGameTheme(
			themeName: .weather,
			emojiSet: ["โ๏ธ", "โ๏ธ", "๐จ", "๐ค", "๐ฉ", "๐", "๐ช", "๐ซ", "โ๏ธ", "๐ฅ", "๐ง", "โ๏ธ"],
			numberOfPairs: defaultNumberOfPairs,
			color: .gradient(Gradient(colors: [.yellow, .orange, .green]))),
		EmojiMemoryGameTheme(
			themeName: .faces,
			emojiSet: ["๐", "๐", "๐", "๐", "๐", "๐", "๐ค", "๐ฅณ", "๐", "โน๏ธ", "๐ฉ", "๐ค"],
			numberOfPairs: nil,
			color: .gradient(Gradient(colors: [.purple, .blue])))
	]
}
