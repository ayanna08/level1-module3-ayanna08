package _07_cow_timer;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import java.applet.AudioClip;
import java.io.IOException;
import javax.swing.JApplet;
import javax.swing.JOptionPane;

public class CowTimer {

	/*
	 * 1. Make a constructor for the CowTimer class that initializes the minutes
	 * variable
	 */
	public CowTimer(int seconds) {
		this.seconds = seconds;
		System.out.println("Cow Timer Created");
	}

	/* 4. Complete the main method of the CowTimerRunner class */

	private int seconds;

	public void setTime(int seconds) {
		this.seconds = seconds;
		System.out.println("Cow Timer set to " + seconds + " seconds.");
	}

	public void start() throws InterruptedException {
		/*
		 * 2. Count down the minutes, print the current minute then sleep for the number
		 * of minutes using Thread.sleep(int milliseconds).
		 */
		for (int i = seconds; i > -1; i--) {
			Thread.sleep(1000);
			System.out.println("You have " + i + " seconds left");
		}

		/*
		 * 3. When the timer is finished, use the playSound method to play a moo sound.
		 * You can use the .wav file in the default package, or you can download one
		 * from freesound.org, then drag it intothe default package.
		 */
		playSound("moo.wav");
	}

	private void playSound(String fileName) {
		JOptionPane.showMessageDialog(null,"MOO!!!!!");
		
//		AudioClip sound = JApplet.newAudioClip(getClass().getResource(fileName));
//		sound.play();
	}

	static void speak(String words) {
		if (System.getProperty("os.name").contains("Windows")) {
			String cmd = "PowerShell -Command \"Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('"
					+ words + "');\"";
			try {
				Runtime.getRuntime().exec(cmd).waitFor();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				Runtime.getRuntime().exec("say " + words).waitFor();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
