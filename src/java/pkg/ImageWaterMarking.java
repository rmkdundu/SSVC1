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
public class ImageWaterMarking {

    public void watermarking(String sourceImage,String sourceImage2){
        
        String path = FilePaths.projectPath+"web\\enc_img\\"+sourceImage;
        String path2 = FilePaths.projectPath+"web\\temp\\"+sourceImage2;
        try {
            BufferedImage bImage = ImageIO.read(new FileInputStream(new File(path)));
            BufferedImage bImage1 = ImageIO.read(new FileInputStream(new File(path2)));
            int width = bImage.getWidth();
            int height = bImage.getHeight();
            BufferedImage bImage3 = new BufferedImage(width, height, bImage.getType());
            ImageWaterMarking iwm = new ImageWaterMarking();
            for (int i = 0; i < width; i++) {
                for (int j = 0; j < height; j++) {
                    bImage3.setRGB(i, j, iwm.hidePixel(bImage1.getRGB(i, j), bImage.getRGB(i, j)));
                }
            }
            ImageIO.write(bImage3, "png", new FileOutputStream(new File(FilePaths.projectPath+"web\\watermarked\\"+sourceImage)));
            
        } catch (Exception e) {
        }
    }
    
    public void recoverImage(String sourceImage){
        
        try {
            BufferedImage watermarkedImage=ImageIO.read(new FileInputStream(new File(FilePaths.projectPath+"web\\watermarked\\"+sourceImage)));
            int width = watermarkedImage.getWidth();
            int height = watermarkedImage.getHeight();
            BufferedImage recon = new BufferedImage(width, height, watermarkedImage.getType());
            BufferedImage wImage = new BufferedImage(width, height, watermarkedImage.getType());
            
            ImageWaterMarking iwm2 = new ImageWaterMarking();
            for (int i = 0; i < width; i++) {
		for (int j = 0; j < height; j++) {
                    recon.setRGB(i, j, iwm2.revealPixel(watermarkedImage.getRGB(i, j)));
                    wImage.setRGB(i, j, iwm2.revealPixel2(watermarkedImage.getRGB(i, j)));
		}
            }
            ImageIO.write(recon, "png", new FileOutputStream(new File(FilePaths.projectPath+"web\\img\\"+sourceImage)));
            ImageIO.write(wImage, "png", new FileOutputStream(new File(FilePaths.projectPath+"web\\temp2\\"+sourceImage)));
          
        } catch (Exception e) {
        }
  
    }

    private int hidePixel(int pixelA, int pixelB) {

        return pixelA & 0xfff0f0f0 | (pixelB & 0xf0f0f0) >> 4;
    }
    
    private int revealPixel(int pixel) {
	
        return (pixel & 0xff0f0f0f) << 4;
    }
    
    private int revealPixel2(int pixel) {
	
        return (pixel & 0xfff0f0f0) ;
    }
}