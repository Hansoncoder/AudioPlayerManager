//
//  AudioPlayer+RemoteControl.swift
//  AudioPlayer
//
//  Created by Hans Seiffert on 02.08.16.
//  Copyright © 2016 Hans Seiffert. All rights reserved.
//

import UIKit

extension AudioPlayer {

	public func remoteControlReceivedWithEvent(event: UIEvent?) {
		if let _event = event {
			switch _event.subtype {
			case UIEventSubtype.RemoteControlPlay:
				self.play()
			case UIEventSubtype.RemoteControlPause:
				self.pause()
			case UIEventSubtype.RemoteControlNextTrack:
				self.forward()
			case UIEventSubtype.RemoteControlPreviousTrack:
				self.rewind()
			case UIEventSubtype.RemoteControlTogglePlayPause:
				self.togglePlayPause()
			default:
				break
			}
		}
	}
}
