/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.io.File;
import java.io.IOException;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

public class ReadPixel{
  public static void main(String args[])throws IOException{
    int width = 963;    //width of the image
    int height = 640;   //height of the image
    BufferedImage image = null;
    File f = null;

    //read image
    try{
      f = new File("C:\\Users\\genuine\\Desktop\\blowfish\\f.jpg"); //image file path
      image = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
      image = ImageIO.read(f);
      System.out.println("Reading complete.");
    }catch(IOException e)
    {
      System.out.println("Error: "+e);
    }

    //write image
//    try{
//      f = new File("C:\\Users\\genuine\\Desktop\\blowfish\\output.jpg");  //output file path
//      ImageIO.write(image, "jpg", f);
//      System.out.println("Writing complete.");
//    }catch(IOException e)
   // {
//      System.out.println("Error: "+e);
//    }
  }//main() ends here
}//class ends here
 

