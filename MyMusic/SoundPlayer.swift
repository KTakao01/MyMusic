//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Takao Koizumi on 2022/10/06.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバルの音源データを読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay(){
        do{
            // シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    func guitarPlay(){
        do{
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            
            guitarPlayer.play()
            
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
    
}
