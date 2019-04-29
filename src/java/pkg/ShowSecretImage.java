/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;

/**
 *
 * @author Nidhin lal cv
 */
public class ShowSecretImage {
    
    public void extractImage(String sourceImage){
        
        ImageWaterMarking waterMarking=new ImageWaterMarking();
        waterMarking.recoverImage(sourceImage);
        
        //key generation
        KeyGeneration generateKey=new KeyGeneration();
        int key=generateKey.decryptionKey(sourceImage);
        
        ImageDecryption decryption=new ImageDecryption();
        decryption.decryptImage(sourceImage, sourceImage,key);
        
    }
    
    public static void main(String[] args) {
        ShowSecretImage secImage=new ShowSecretImage();
        secImage.extractImage("dh.jpg");
    }
}
