package oata;

import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

public class HelloWorld{
    static Logger logger = Logger.getLogger(HelloWorld.class);
    
    public static void main(String[] args){
        // using syso is not encouraged
        //System.out.println("Hello World !");
        BasicConfigurator.configure();
        for(int i=0; i<=20 ; i++){
            // logging the information
            try{
                Thread.sleep(1000);
            }catch(InterruptedException ex){
                Thread.currentThread().interrupt();
            }
                logger.info("Hello World ! " + i);
        }
        
    }
}