/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import javax.imageio.ImageIO;
/**
 *
 * @author Nidhin lal cv
 */
public class ImageEncryption {
 
    public void encryptImage(String sourceImage,String destImage,int key){
        String filepath=FilePaths.projectPath+"web\\uploads\\"+sourceImage;
        
        String keys=convertDecimalToBinary(key)+"";
        System.out.println(keys);
        try {
            BufferedImage bImage = ImageIO.read(new FileInputStream(new File(filepath)));
            ImageEncryption enc=new ImageEncryption();
            
            for(int i=0;i<keys.length();i++){
                if(keys.substring(i, i+1).equalsIgnoreCase("1")){
                       bImage=enc.changePixels(bImage);
                }
            }
		
            ImageIO.write(bImage, "png", new FileOutputStream(new File(FilePaths.projectPath+"web\\enc_img\\"+destImage)));
        } catch (Exception e) {
            System.err.println(e.toString());
        }
    }
    
    public static long convertDecimalToBinary(int n)
    {
        long binaryNumber = 0;
        int remainder, i = 1, step = 1;

        while (n!=0)
        {
            remainder = n % 2;
            n /= 2;
            binaryNumber += remainder * i;
            i *= 10;
        }
        return binaryNumber;
    }
    
    public BufferedImage changePixels(BufferedImage bin){
        BufferedImage bout=new BufferedImage(bin.getWidth(), bin.getHeight(), bin.getType());
        int arr[]=new int[bin.getWidth()*bin.getHeight()];
        int k=0;
        for (int i = 0; i < bin.getWidth(); i++) {
            for (int j = 0; j < bin.getHeight(); j++) {
                  arr[k]=bin.getRGB(i, j);
                  k++;
            }
        }
        for (int i = 0; i < arr.length-1; i=i+2) {
            int temp =arr[i];
            arr[i]=arr[i+1];
            arr[i+1]=temp;
        }
        
        k=0;
        for (int i = 0; i < bin.getWidth(); i++) {
            for (int j = 0; j < bin.getHeight(); j++) {
                  bout.setRGB(i, j, arr[k]);
                  k++;
            }
        }
        return bout;
    }
}
