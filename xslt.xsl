<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>


<xsl:template match="/countryInformation">

  <html>
  <head>
  	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
  
  <div class="container" bgcolor="#ecf0f1">
  	<h2>Country Information</h2>
  
   	<table cellspacing="0" cellpadding="0" class="table" border="0">  	
   		<tr bgcolor="">
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Flag</span>
		      	</div>
		    </th>
		    <td>
		    	<xsl:element name="img">
				<xsl:attribute name="src"><xsl:value-of select="flag"/></xsl:attribute>
			</xsl:element></td>
		    
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Capital</span>
		      	</div>
		    </th>
		    <td><font color="#000"><xsl:value-of select="capital"/></font></td>	 
	 	</tr>
	   	<tr bgcolor="">
	   		
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Country</span>
		      	</div>
		    </th>
		    <td><font color="#000"><xsl:value-of select="country"/></font></td>
		    
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Country Code</span>
		      	</div>
		    </th>
		    <td><font color="#000"><xsl:value-of select="countrycode"/></font></td>	 
	 	</tr>
	 	
	 	<tr bgcolor="">
	   		
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Continent</span>
		      	</div>
		    </th>
		    <td><font color="#000"><xsl:value-of select="continent"/></font></td>
		    
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Continent Code</span>
		      	</div>
		    </th>
		    <td><font color="#000"><xsl:value-of select="continentcode"/></font></td>	 
	 	</tr>
	 
	 	<tr bgcolor="">
	   		
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Phone code</span>
		      	</div>
		    </th>
		    <td><font color="#000">+<xsl:value-of select="phonecode"/></font></td>
		    
		    <th style="text-align:left">
			    <div class="span">
		      		<span class="badge badge-inverse">Language</span>
		      	</div>
		    </th>
		    <td>
		    	<xsl:for-each select="lLanguage/language">
	     			<xsl:value-of select="language"/>
	     		</xsl:for-each>
	     	</td>
	 	</tr>
	
     
	     <!-- <xsl:for-each select="countryInformation/lLanguage/language">
	     	<td><xsl:value-of select="language"/></td>
	     </xsl:for-each> -->
	   </table>
  </div>
  
  </body>
  </html>
</xsl:template>

<xsl:template match="/map">


  <html>
  <head>
   	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
  
    <style>
      #map {
        width: 500px;
        height: 400px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    
    
    
  </head>
  <body>
    <div class="container-fluid">
	  <div class="row-fluid">
	  	  	<div class="span2">
	      		<span class="badge badge-inverse">Weather</span>
	      		<br/>
	      		<span class="badge badge-inverse">Stadium</span>
	      		<br/>
	      		<xsl:value-of select="stadium"/>
	      		<br/>
	      		<span class="badge badge-inverse">City</span>
	      		<br/>
	      		<xsl:value-of select="city"/>
	    	</div>
	    	
	    	
	    <div class="span10">
			<xsl:element name="iframe">
				<xsl:attribute name="width">900</xsl:attribute>
				<xsl:attribute name="height">550</xsl:attribute>
				<xsl:attribute name="frameborder">no</xsl:attribute>
				<xsl:attribute name="scrolling">no</xsl:attribute>
				<xsl:attribute name="marginheight">0</xsl:attribute>
				<xsl:attribute name="marginheight">0</xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of select="url"/></xsl:attribute>	
			</xsl:element>	    
		</div>
	  </div>
	</div>
  </body>
</html>
</xsl:template>


<xsl:template match="/parcours">


  <html>
  <head>
    	<link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
  
    <style>
    
    	.table th {
		  text-align:center;
		}
    	.timeline {
		  list-style: none;
		  padding: 20px 0 20px;
		  position: relative;
		}
		
		.timeline:before {
		  top: 0;
		  bottom: 0;
		  position: absolute;
		  content: " ";
		  width: 3px;
		  background-color: #eeeeee;
		  left: 50%;
		  margin-left: -1.5px;
		}
		
		.timeline > li {
		  margin-bottom: 20px;
		  position: relative;
		}
		
		.timeline > li:before,
		.timeline > li:after {
		  content: " ";
		  display: table;
		}
		
		.timeline > li:after {
		  clear: both;
		}
		
		.timeline > li:before,
		.timeline > li:after {
		  content: " ";
		  display: table;
		}
		
		.timeline > li:after {
		  clear: both;
		}
		
		.timeline > li > .timeline-panel {
		  width: 46%;
		  float: left;
		  border: 1px solid #d4d4d4;
		  border-radius: 2px;
		  padding: 20px;
		  position: relative;
		  -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
		  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
		}
		
		.timeline > li > .timeline-panel:before {
		  position: absolute;
		  top: 26px;
		  right: -15px;
		  display: inline-block;
		  border-top: 15px solid transparent;
		  border-left: 15px solid #ccc;
		  border-right: 0 solid #ccc;
		  border-bottom: 15px solid transparent;
		  content: " ";
		}
		
		.timeline > li > .timeline-panel:after {
		  position: absolute;
		  top: 27px;
		  right: -14px;
		  display: inline-block;
		  border-top: 14px solid transparent;
		  border-left: 14px solid #fff;
		  border-right: 0 solid #fff;
		  border-bottom: 14px solid transparent;
		  content: " ";
		}
		
		.timeline > li > .timeline-badge {
		  color: #fff;
		  width: 45px;
		  height: 45px;
		  line-height: 50px;
		  font-size: 1.4em;
		  text-align: center;
		  position: absolute;
		  top: 16px;
		  left: 50%;
		  margin-left: -25px;
		  background-color: #34495e;
		  z-index: 100;
		  border-top-right-radius: 50%;
		  border-top-left-radius: 50%;
		  border-bottom-right-radius: 50%;
		  border-bottom-left-radius: 50%;
		}
		
		.timeline > li.timeline-inverted > .timeline-panel {
		  float: right;
		}
		
		.timeline > li.timeline-inverted > .timeline-panel:before {
		  border-left-width: 0;
		  border-right-width: 15px;
		  left: -15px;
		  right: auto;
		}
		
		.timeline > li.timeline-inverted > .timeline-panel:after {
		  border-left-width: 0;
		  border-right-width: 14px;
		  left: -14px;
		  right: auto;
		}
		
		.timeline-badge.primary {
		  background-color: #2e6da4 !important;
		}
		
		.timeline-badge.success {
		  background-color: #3f903f !important;
		}
		
		.timeline-badge.warning {
		  background-color: #f0ad4e !important;
		}
		
		.timeline-badge.danger {
		  background-color: #d9534f !important;
		}
		
		.timeline-badge.info {
		  background-color: #5bc0de !important;
		}
		
		.timeline-title {
		  margin-top: 0;
		  color: inherit;
		}
		
		.timeline-body > p,
		.timeline-body > ul {
		  margin-bottom: 0;
		}
		
		.timeline-body > p + p {
		  margin-top: 5px;
		}
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    
    
    
  </head>
  <body>
	
	<div>
	  <div class="page-header">
	    <h1 id="timeline">Parcours of <xsl:value-of select="country"/></h1>
	    <h2>Team</h2>
	    
	    <h3>Coach</h3>
	    <xsl:value-of select="coach"/>
	    
	    <h3>Goal Keepers</h3>
	    <xsl:for-each select="lGoalKeeper/goalkeeper">	
				<div class="span">
		      		<span class="badge badge-inverse"><xsl:value-of select="name"/></span>
		      	</div>					
		</xsl:for-each>
		<br/>
		<h3>Defenders</h3>
		<xsl:for-each select="lDefender/defender">
				<div class="span">
		      		<span class="badge badge-inverse"><xsl:value-of select="name"/></span>
		      	</div>					
		</xsl:for-each>
		<br/>
		<h3>Middle</h3>
		<xsl:for-each select="lMiddle/middle">
				<div class="span">
		      		<span class="badge badge-inverse"><xsl:value-of select="name"/></span>
		      	</div>					
		</xsl:for-each>
		<br/>
		<h3>Forward</h3>
		<xsl:for-each select="lForward/forward">
				<div class="span">
		      		<span class="badge badge-inverse"><xsl:value-of select="name"/></span>
		      	</div>					
		</xsl:for-each>
		<br/>
	  </div>
	  <ul class="timeline">
	  
	  	<xsl:for-each select="lMatch/match">
	  		<!-- <xsl:variable name="i" select="position()" /> -->
	  		<xsl:choose>
		  	 <xsl:when test="(position() mod 2) = 0">
	          <li class="timeline-inverted">
			      <div class="timeline-badge"><i class=""></i></div>
			      <div class="timeline-panel">
			        <div class="timeline-heading">
			          <h4 class="timeline-title"><xsl:value-of select="etape"/></h4>
			          <p><small class="text-muted"><i class="icon-time"></i> Date : <xsl:value-of select="date"/></small></p>
			        </div>
			        <div class="timeline-body">
			          <table class="table">
			            <tr>
			              <th><xsl:element name="img"><xsl:attribute name="src"><xsl:value-of select="flag1"/></xsl:attribute></xsl:element> 
			              <br/><br/>vs<br/><xsl:value-of select="team1"/></th>
			              
			              <th>
				              
				              <br/><br/>vs<br/><xsl:value-of select="score"/>
			              </th>
			              <th><xsl:element name="img"><xsl:attribute name="src"><xsl:value-of select="flag2"/></xsl:attribute></xsl:element>
			              <br/>vs<br/><xsl:value-of select="team2"/></th>
			            </tr>
			            <tr>
			              <th>
			              
			                <xsl:variable name="result">
								<xsl:value-of select="result"/>
							</xsl:variable>
							<xsl:variable name="winner">
								<xsl:value-of select="winner"/>
							</xsl:variable>
							
							<xsl:variable name="team1">
								<xsl:value-of select="team1"/>
							</xsl:variable>
							
							<xsl:if test="$winner=$team1">
								Winner<br/>
							</xsl:if>
							
							<xsl:for-each select="lGoal/goal">
							
								<xsl:variable name="team">
									<xsl:value-of select="team"/>
								</xsl:variable>
								<xsl:if test="$team=$team1">
									<xsl:value-of select="player"/>
							    	
							    	<span class="badge badge-inverse"><xsl:value-of select="minute"/>'</span>
							    	<br/>
							    	
								</xsl:if>
						    	
							</xsl:for-each>
			              
			              </th>
			              <th></th>
			              <th>
			              
			              <xsl:variable name="result">
								<xsl:value-of select="result"/>
							</xsl:variable>
							<xsl:variable name="winner">
								<xsl:value-of select="winner"/>
							</xsl:variable>
							
							<xsl:variable name="team2">
								<xsl:value-of select="team2"/>
							</xsl:variable>
							
							<xsl:if test="$winner=$team2">
								Winner<br/>
							</xsl:if>
							<xsl:for-each select="lGoal/goal">
							
								<xsl:variable name="team">
									<xsl:value-of select="team"/>
								</xsl:variable>
								<xsl:if test="$team=$team2">
									<xsl:value-of select="player"/>
									<span class="badge badge-inverse"><xsl:value-of select="minute"/>'</span>
									
							    	<br/>
							    	
								</xsl:if>
						    	
							</xsl:for-each>
			              </th>
			            </tr>
			            
			          </table>
			        </div>
		      </div>
		    </li>
	        </xsl:when>
	  		<xsl:otherwise>
	          <li>
			      <div class="timeline-badge"><i class=""></i></div>
			      <div class="timeline-panel">
			        <div class="timeline-heading">
			          <h4 class="timeline-title"><xsl:value-of select="etape"/></h4>
			          <p><small class="text-muted"><i class="icon-time"></i> Date : <xsl:value-of select="date"/></small></p>
			        </div>
			        <div class="timeline-body">
			          <table class="table">
			            <tr>
			              <th><xsl:element name="img"><xsl:attribute name="src"><xsl:value-of select="flag1"/></xsl:attribute></xsl:element> 
			              <br/><br/>vs<br/><xsl:value-of select="team1"/></th>
			              
			              <th>
				              
				              <br/><br/>vs<br/><xsl:value-of select="score"/>
			              </th>
			              <th><xsl:element name="img"><xsl:attribute name="src"><xsl:value-of select="flag2"/></xsl:attribute></xsl:element>
			              <br/>vs<br/><xsl:value-of select="team2"/></th>
			            </tr>
			            <tr>
			              <th>
			              
			                <xsl:variable name="result">
								<xsl:value-of select="result"/>
							</xsl:variable>
							<xsl:variable name="winner">
								<xsl:value-of select="winner"/>
							</xsl:variable>
							
							<xsl:variable name="team1">
								<xsl:value-of select="team1"/>
							</xsl:variable>
							
							<xsl:if test="$winner=$team1">
								Winner<br/>
							</xsl:if>
							
							<xsl:for-each select="lGoal/goal">
							
								<xsl:variable name="team">
									<xsl:value-of select="team"/>
								</xsl:variable>
								<xsl:if test="$team=$team1">
									<xsl:value-of select="player"/>
							    	
							    	<span class="badge badge-inverse"><xsl:value-of select="minute"/>'</span>
							    	<br/>
							    	
								</xsl:if>
						    	
							</xsl:for-each>
			              
			              </th>
			              <th></th>
			              <th>
			              
			              <xsl:variable name="result">
								<xsl:value-of select="result"/>
							</xsl:variable>
							<xsl:variable name="winner">
								<xsl:value-of select="winner"/>
							</xsl:variable>
							
							<xsl:variable name="team2">
								<xsl:value-of select="team2"/>
							</xsl:variable>
							
							<xsl:if test="$winner=$team2">
								Winner<br/>
							</xsl:if>
							<xsl:for-each select="lGoal/goal">
							
								<xsl:variable name="team">
									<xsl:value-of select="team"/>
								</xsl:variable>
								<xsl:if test="$team=$team2">
									<xsl:value-of select="player"/>
									<span class="badge badge-inverse"><xsl:value-of select="minute"/>'</span>
									
							    	<br/>
							    	
								</xsl:if>
						    	
							</xsl:for-each>
			              </th>
			            </tr>
			            
			          </table>
			        </div>
		      </div>
			 </li>
	        </xsl:otherwise>
	        </xsl:choose>
		    
		    
		</xsl:for-each>
    
    
  </ul>
</div>

  </body>
</html>
</xsl:template>

</xsl:stylesheet>
