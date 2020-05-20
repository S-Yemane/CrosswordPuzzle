//
//  ViewController.swift
//  crosswords_generator
//
//  Created by Maxim Bilan on 9/11/15.
//  Copyright © 2015 Maxim Bilan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		
		/* ----------------------------------------------------------------------
			Generate one crossword
		   ---------------------------------------------------------------------- */
		
//		let crosswordsGenerator = CrosswordsGenerator(columns: 13, rows: 13, words: ["saffron", "pumpernickel", "leaven", "coda", "paladin", "syncopation", "albatross", "harp", "piston", "caramel", "coral", "dawn", "pitch", "fjord", "lip", "lime", "mist", "plague", "yarn", "snicker"])
    
//    var words = ["BOOTLEGS", "ASIF", "GASPUMP", "CAIRO", "CHOO", "LEIF", "ALTER", "TINE", "ERMA", "MAH", "THINS", "KNOCK", "PLEA", "AVE", "NESSIE", "SARDINE", "EIN", "OTS", "HOGWASH", "SLY", "CORNERKICKS", "ZAC", "AAMILNE", "FOP", "FIR", "MINERAL", "ANIMAL", "IOS", "TETE", "LETAT", "ASKME", "DOM", "LOAN", "MINI", "GODNO", "SULU", "ADOS", "GREEN", "FLATTOP", "GETS", "SANDWEDGE",
//    "BOOTCAMPS", "LALALA", "EITHER", "GRE", "SORT", "ACTIVEWEAR",
//    "SHINE", "IONS", "FOE", "GLENS", "AEROSOLS",
//    "SIMCITY", "PUMPFAKES", "HANGNAIL", "KEN", "ADHOC", "NIHILISM", "IOR",
//    "ESKIMOKISS", "ARM", "SKEET",
//    "CAPITALO", "CNN", "ZONEOUT", "FALLSFLAT", "FAT", "REDDEN", "ATONED", "LEMONWEDGE", "MANUP", "ISNOT",
//    "AIDE", "EGGS", "MAG", "ORA"]
    
    var words = ["ASIF", "CAIRO", "CHOO", "LEIF", "ALTER", "TINE", "ERMA", "MAH", "THINS", "KNOCK", "PLEA", "AVE", "EIN", "OTS", "SLY", "ZAC", "FOP", "FIR", "IOS", "TETE", "LETAT", "ASKME", "DOM", "LOAN", "MINI", "GODNO", "SULU", "ADOS", "GREEN", "GETS",
    "GRE", "SORT", "SHINE", "IONS", "FOE", "GLENS", "KEN", "ADHOC", "IOR",
    "ARM", "SKEET", "SANDWEDGE",
    "BOOTCAMPS", "LALALA", "EITHER",
    "CNN", "FAT", "REDDEN", "ATONED", "MANUP", "ISNOT",
    "AIDE", "EGGS", "MAG", "ORA"]
    
    let xw_gen = CrosswordsGenerator(columns: 15, rows: 15, words: words)

    xw_gen.fillAllWords = true

    var bestResult: Array<CrosswordsGenerator.Word> = Array()
    let attempts = 10
    
    for _ in 0 ..< attempts {
      xw_gen.generate()
      let result = xw_gen.result
//      print(result)
      
      if result.count > bestResult.count {
        bestResult.removeAll()
        for word in result {
          bestResult.append(word)
        }
      }
    }
    print(bestResult.count)
    _ = bestResult
    sleep(1000)
  }
}
    
    
//
//		crosswordsGenerator.generate()
//
//		_ = crosswordsGenerator.result
		
		/* ---------------------------------------------------------------------- */
		
		
		/* ----------------------------------------------------------------------
			Generate the best crossword in 10 attempts
		   ---------------------------------------------------------------------- */
		
		/*let crosswordsGenerator = CrosswordsGenerator()
		crosswordsGenerator.words = ["saffron", "pumpernickel", "leaven", "coda", "paladin", "syncopation", "albatross", "harp", "piston", "caramel", "coral", "dawn", "pitch", "fjord", "lip", "lime", "mist", "plague", "yarn", "snicker"]
		crosswordsGenerator.columns = 10
		crosswordsGenerator.rows = 10
	
		var bestResult: Array<CrosswordsGenerator.Word> = Array()
		let attempts = 10
		
		for _ in 0 ..< attempts {
			crosswordsGenerator.generate()
			let result = crosswordsGenerator.result
			
			if result.count > bestResult.count {
				bestResult.removeAll()
				for word in result {
					bestResult.append(word)
				}
			}
		}*/
		
		/* ---------------------------------------------------------------------- */
		
		
		/* ----------------------------------------------------------------------
			Generate the best crossword in 60 seconds
		   ---------------------------------------------------------------------- */
		
		/*let crosswordsGenerator = CrosswordsGenerator()
		crosswordsGenerator.words = ["saffron", "pumpernickel", "leaven", "coda", "paladin", "syncopation", "albatross", "harp", "piston", "caramel", "coral", "dawn", "pitch", "fjord", "lip", "lime", "mist", "plague", "yarn", "snicker"]
		crosswordsGenerator.columns = 10
		crosswordsGenerator.rows = 10
		crosswordsGenerator.debug = true
		crosswordsGenerator.emptySymbol = "*"
		
		var bestResult: Array<CrosswordsGenerator.Word> = Array()
		let startTime = NSDate()
		let timeInterval: TimeInterval = 3
		
		while (fabs(startTime.timeIntervalSinceNow) < timeInterval) {
			crosswordsGenerator.generate()
			let result = crosswordsGenerator.result
			
			if result.count > bestResult.count {
				bestResult.removeAll()
				for word in result {
					bestResult.append(word)
				}
			}
		}*/
		
		/* ---------------------------------------------------------------------- */
		
		
		/* ----------------------------------------------------------------------
			Generate one crossword with 'fill all words' mode
			---------------------------------------------------------------------- */
		
		/*let crosswordsGenerator = CrosswordsGenerator(columns: 15, rows: 10, words: ["beijing", "havana", "rome", "paris", "amsterdam"])
		crosswordsGenerator.fillAllWords = true
		crosswordsGenerator.generate()
		
		let result = crosswordsGenerator.result
		print(result)*/
		
		/* ---------------------------------------------------------------------- */
		
		
		/* ----------------------------------------------------------------------
			Other tests with 'fill all words' mode
		---------------------------------------------------------------------- */
		
		/*let crosswordsGenerator = CrosswordsGenerator()
		crosswordsGenerator.words = ["van", "bat", "fan", "jug", "mug"]
		//crosswordsGenerator.words = ["saffron", "pumpernickel", "leaven", "coda", "paladin", "syncopation", "albatross", "harp", "piston", "caramel", "coral", "dawn", "pitch", "fjord", "lip", "lime", "mist", "plague", "yarn", "snicker"]
		crosswordsGenerator.columns = 15
		crosswordsGenerator.rows = 15
		crosswordsGenerator.fillAllWords = true
		
		var bestResult: Array<CrosswordsGenerator.Word> = Array()
		let attempts = 1
		
		for _ in 0 ..< attempts {
			crosswordsGenerator.generate()
			let result = crosswordsGenerator.result
			
			if result.count > bestResult.count {
				bestResult.removeAll()
				for word in result {
					bestResult.append(word)
				}
			}
		}
		
		print("Max column: \(crosswordsGenerator.maxColumn())")
		print("Max row: \(crosswordsGenerator.maxRow())")
		print("Letters count: \(crosswordsGenerator.lettersCount())")*/
		
		/* ---------------------------------------------------------------------- */
		
		
		/* ----------------------------------------------------------------------
			Generate one crossword with 'fill all words' mode and orientation optimization mode
		---------------------------------------------------------------------- */
		
		/*let crosswordsGenerator = CrosswordsGenerator(columns: 15, rows: 15, words: ["beijing", "havana", "rome", "paris", "amsterdam"])
		crosswordsGenerator.fillAllWords = true
		crosswordsGenerator.generate()
		
		let result1 = crosswordsGenerator.result
		print(result1)
		
		crosswordsGenerator.orientationOptimization = true
		crosswordsGenerator.generate()
		
		let result2 = crosswordsGenerator.result
		print(result2)*/
//	}
//
//}

