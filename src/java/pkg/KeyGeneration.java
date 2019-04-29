/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import javax.imageio.ImageIO;

/**
 *
 * @author Stephy Mariya Sunny
 */
public class KeyGeneration {

    public int generateKey(String fileName){
        int key=0;
        
        try {
            BufferedImage bImage = ImageIO.read(new FileInputStream(new File(FilePaths.projectPath+"web\\temp\\"+fileName)));
            int blackPixelCount=0;
            int whitePixelCount=0;
            KeyGeneration gen=new KeyGeneration();
            for (int i = 0; i < bImage.getWidth(); i++) {
                for (int j = 0; j < bImage.getHeight(); j++) {
                    Color c = new Color(gen.changePixels(bImage.getRGB(i, j)));
                    
                    int a = c.getAlpha(); 
                    int r = c.getRed(); 
                    int g = c.getGreen(); 
                    int b = c.getBlue(); 

                    int avg = (r+g+b)/3; 

                    int p = (a<<24) | (avg<<16) | (avg<<8) | avg;

                    if(avg<127){
                        blackPixelCount++;
                    }
                    else{
                        whitePixelCount++;
                    }
                    
                    bImage.setRGB(i, j, p);
                }
            }
            
            key=blackPixelCount^whitePixelCount;
            
        } catch (Exception e) {
            System.out.println(e.toString());
        }
                
        return key;
    }
    
    public int decryptionKey(String fileName){
        int key=0;
        
        try {
            BufferedImage bImage = ImageIO.read(new FileInputStream(new File(FilePaths.projectPath+"web\\temp2\\"+fileName)));
            int blackPixelCount=0;
            int whitePixelCount=0;
            
            KeyGeneration gen=new KeyGeneration();
            for (int i = 0; i < bImage.getWidth(); i++) {
                for (int j = 0; j < bImage.getHeight(); j++) {
                    Color c = new Color(gen.changePixels(bImage.getRGB(i, j)));
                    
                    int a = c.getAlpha(); 
                    int r = c.getRed(); 
                    int g = c.getGreen(); 
                    int b = c.getBlue(); 

                    int avg = (r+g+b)/3; 

                    int p = (a<<24) | (avg<<16) | (avg<<8) | avg;

                    if(avg<127){
                        blackPixelCount++;
                    }
                    else{
                        whitePixelCount++;
                    }
                    
                    bImage.setRGB(i, j, p);
                }
            }
            
            key=blackPixelCount^whitePixelCount;
            
        } catch (Exception e) {
            System.out.println(e.toString());
        }
                
        return key;
    }
    
    private int changePixels(int pixel) {
	
        return (pixel & 0xfff0f0f0) ;
    }
}