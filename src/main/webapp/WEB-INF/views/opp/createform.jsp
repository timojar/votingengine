<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
 <%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="opiskelija.create.title"></spring:message></title>





<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../resources/css/materialize.min.css" 
	media="screen,projection" />

<link type="text/css" rel="stylesheet" href="../resources/css/form.css"> 		
<link type="text/css" rel="stylesheet" href="../resources/css/tyyli.css"> 	

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


</head>
<body>


<!--Import jQuery before materialize.js-->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	
	
	 <nav>
    <div class="nav-wrapper blue lighten-1">
      <a href="#!" class="brand-logo center">Logo</a>
      <ul class="left hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li class="active"><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
  </nav>
	




<h1><spring:message code="opiskelija.create.heading"></spring:message></h1>
 <div class="row">
<form:form modelAttribute="opiskelija" method="post" class="col s12">



<div class="row">
<div class="input-field col s6">
<form:label path="etunimi" for="first_name"><spring:message code="opiskelija.create.etunimi"></spring:message></form:label>
<br>
<form:input path="etunimi"/><form:errors path="etunimi" id="first_name" type="text" class="validate" cssClass="Virheteksti"/>




</div>


 <div class="input-field col s6">
 <form:label for="last_name" path="sukunimi"><spring:message code="opiskelija.create.sukunimi"></spring:message></form:label>
 <br>
 <form:input id="last_name" type="text" class="validate" path="sukunimi"/><form:errors path="sukunimi" cssClass="Virheteksti"></form:errors>



</div>
</div>


<div class="row">
<div class="input-field col s12">
<form:label path="email"><spring:message code="opiskelija.create.email"></spring:message></form:label>
<br>

<form:input  path="email" /><form:errors path="email" cssClass="Virheteksti"></form:errors>
</div>
</div>


<br>
<br>
<div class="row">
<div class="input-field col s12">
<form:label path="opiskelijanumero"><spring:message code="opiskelija.create.opiskelijanumero"></spring:message></form:label>
<br>
<form:input path="opiskelijanumero"/><form:errors path="opiskelijanumero" cssClass="Virheteksti"></form:errors>
</div>
</div>

<br>
<br>

<button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
        


</form:form>

</div>









 
  
      
        
         
       
         
         
      
   
        




<footer class="page-footer blue lighten-1">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            � 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>	

  







</body>
</html>