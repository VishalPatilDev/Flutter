// Source code is decompiled from a .class file using FernFlower decompiler.
import java.util.ArrayList;
import javafx.application.Application;
import javafx.geometry.Rectangle2D;
import javafx.stage.Screen;
import javafx.stage.Stage;

public class c2w_WebBrowser extends Application {
   private ArrayList<c2w_BrowserWindow> c2w_openWindows;
   private Rectangle2D c2w_screenRect;
   private double c2w_locationX;
   private double c2w_locationY;
   private double c2w_windowWidth;
   private double c2w_windowHeight;
   private int c2w_untitledCount;

   public c2w_WebBrowser() {
   }

   public static void main(String[] var0) {
      launch(var0);
   }

   public void start(Stage var1) {
      this.c2w_openWindows = new ArrayList();
      this.c2w_screenRect = Screen.getPrimary().getVisualBounds();
      this.c2w_locationX = this.c2w_screenRect.getMinX() + 30.0;
      this.c2w_locationY = this.c2w_screenRect.getMinY() + 20.0;
      this.c2w_windowHeight = this.c2w_screenRect.getHeight() - 160.0;
      this.c2w_windowWidth = this.c2w_screenRect.getWidth() - 130.0;
      if (this.c2w_windowWidth > this.c2w_windowHeight * 1.6) {
         this.c2w_windowWidth = this.c2w_windowHeight * 1.6;
      }

      this.c2w_newBrowserWindow("https://www.core2web.in/privacypolicy.html");
   }

   ArrayList<c2w_BrowserWindow> getOpenWindowList() {
      return this.c2w_openWindows;
   }

   int c2w_getNextUntitledCount() {
      return ++this.c2w_untitledCount;
   }

   void c2w_newBrowserWindow(String var1) {
      c2w_BrowserWindow var2 = new c2w_BrowserWindow(this, var1);
      this.c2w_openWindows.add(var2);
      var2.setOnHidden((var2x) -> {
         this.c2w_openWindows.remove(var2);
         System.out.println("Number of open windows is " + this.c2w_openWindows.size());
         if (this.c2w_openWindows.size() == 0) {
            System.out.println("Program will end because all windows have been closed");
         }

      });
      if (var1 == null) {
         var2.setTitle("c2w_Untitled " + this.c2w_getNextUntitledCount());
      }

      var2.setX(this.c2w_locationX);
      var2.setY(this.c2w_locationY);
      var2.setWidth(this.c2w_windowWidth);
      var2.setHeight(this.c2w_windowHeight);
      var2.show();
      this.c2w_locationX += 30.0;
      this.c2w_locationY += 20.0;
      if (this.c2w_locationX + this.c2w_windowWidth + 10.0 > this.c2w_screenRect.getMaxX()) {
         this.c2w_locationX = this.c2w_screenRect.getMinX() + 30.0;
      }

      if (this.c2w_locationY + this.c2w_windowHeight + 10.0 > this.c2w_screenRect.getMaxY()) {
         this.c2w_locationY = this.c2w_screenRect.getMinY() + 20.0;
      }

   }
}
