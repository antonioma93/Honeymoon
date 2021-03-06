//
//  PlaySound.swift
//  HoneyMoon
//
//  Created by Massa Antonio on 01/09/21.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
	if let path = Bundle.main.path(forResource: sound, ofType: type) {
		do {
			audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
		} catch {
			print("ERROR: Colud not find and play the sound file!")
		}
	}
}


