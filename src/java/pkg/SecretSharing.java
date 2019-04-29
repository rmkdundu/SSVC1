/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Random;
import javax.imageio.ImageIO;

/**
 *
 * @author Nidhin lal cv
 */
public class SecretSharing {
    
    public void secretSharing(String sourceImage){
        
        String filepath=FilePaths.projectPath+"web\\uploads\\"+sourceImage;
        try {
            
            BufferedImage bImage = ImageIO.read(new FileInputStream(new File(filepath)));
            int sourceWidth=bImage.getWidth();
            int sourceHeight=bImage.getHeight();
            File randomImages=new File(FilePaths.projectPath+"web\\random_images\\");
            File[] fileList=randomImages.listFiles();
            Random random=new Random();
            int flag=0;
            String selectedRandom="";
            BufferedImage randomImage=null;
            while(flag==0){
                int ran=random.nextInt(fileList.length);
                
                BufferedImage bImage2 = ImageIO.read(new FileInputStream(fileList[ran]));
                if(sourceWidth<=bImage2.getWidth()&&sourceHeight<=bImage2.getHeight()){
                    selectedRandom=fileList[ran].getName();
                    flag=1;
                    randomImage=bImage2;
                }
            }
            
            BufferedImage resizedImage=resize(randomImage, sourceHeight, sourceWidth);
            ImageIO.write(resizedImage, "png", new FileOutputStream(new File(FilePaths.projectPath+"web\\temp\\"+selectedRandom)));
            
            //key generation
            KeyGeneration generateKey=new KeyGeneration();
            int key=generateKey.generateKey(selectedRandom);
            
            //image encryption
            ImageEncryption imageEncryption=new ImageEncryption();
            imageEncryption.encryptImage(sourceImage, sourceImage, key);
            
            //watermarking
            ImageWaterMarking waterMarking=new ImageWaterMarking();
            waterMarking.watermarking(sourceImage, selectedRandom);
            
            
        } catch (Exception e) {
        }
    }
   
    private static BufferedImage resize(BufferedImage img, int height, int width) {
        
        Image tmp = img.getScaledInstance(width, height, Image.SCALE_SMOOTH);
        BufferedImage resized = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2d = resized.createGraphics();
        g2d.drawImage(tmp, 0, 0, null);
        g2d.dispose();
        return resized;
    }
    
    public static void main(String[] args) {
        SecretSharing s=new SecretSharing();
        s.secretSharing("dh.jpg");
    }
}
