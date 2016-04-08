
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.*" %>


		<% 

        	String texte = (String) request.getAttribute("test");
			
        	
        	
         
	        final String chemin = "/home/thib/Documents/Cherry/pyector/src/fichier.txt";
	        final File fichier =new File(chemin); 
	        try {
	            // Creation du fichier
	            fichier .createNewFile();
	            // creation d'un writer (un écrivain)
	            final OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(fichier), "utf8");
	            try {
	                writer.write(texte);
	            } finally {
	                // quoiqu'il arrive, on ferme le fichier
	                writer.close();
	            }
	        } catch (Exception e) {
	            System.out.println("Impossible de creer le fichier");
	        }

	        Process p = Runtime.getRuntime().exec("python /home/thib/Documents/Cherry/pyector/src/Ector.py");
	        
	        
	       Thread.sleep(1000);
	        

	        String chaine="";
	        String fichier2 ="/home/thib/Documents/Cherry/pyector/src/reponse.txt";
	        		
	        		//lecture du fichier texte	
	        		try{
	        			BufferedReader br = new BufferedReader(new InputStreamReader(new java.io.FileInputStream(fichier2), "utf8"));
	        			String ligne;
	        			while ((ligne=br.readLine())!=null){
	        				out.println(ligne);
	        				chaine+=ligne+"\n";
	        			}
	        			br.close(); }
	        		
	        			
	        		catch (Exception e){
	        			System.out.println(e.toString());
	        		}
	        		



            %>
            
            
            
            
<!DOCTYPE html>

<html>

    <head>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Envoi de fichier</title>

    </head>

    <body>

      <form method="post" action="http://localhost:8181/Cherry/primitivetts">
      
    <p>
        <label for="texte">String à envoyer :</label>
        <input type="text" name="message" id="message" />
    </p>
    
    <input type="submit" value="Envoyer" />
    
</form>

    </body>

</html>
