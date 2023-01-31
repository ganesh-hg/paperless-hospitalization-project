<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("HAEMATOLOGY.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(4px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position:absolute;
  top: 35%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 50px;
  text-align: left;
}

</style>
</head>
<body>

<div class="bg-image"></div>

<div class="bg-text">
  
  <h1 style="font-size:50px">HAEMATOLOGY</h1>
  <p>This department can be part and parcel of the hospital laboratory or work closely with the hospital laboratory.  Haematology includes the study of etiology, diagnosis, treatment, prognosis, and prevention of blood diseases that affect the production of blood and its components, such as blood cells, hemoglobin, blood proteins, and the mechanism of coagulation.  The laboratory work that goes into the study of blood is frequently performed by a medical technologist.<br>Haematologists also conduct studies in oncology the medical treatment of cancer.         Haematology is a branch of medical science that studies the morphology of blood and blood-forming tissues. It covers the cellular composition of blood, blood cell formation, haemoglobin synthesis and all related disorders. Haematological parameters are widely used to support diagnoses and treatment monitoring.Physicians specialized in hematology are known as hematologists or haematologists. Their routine work mainly includes the care and treatment of patients with hematological diseases, although some may also work at the hematology laboratory viewing blood films and bone marrow slides under the microscope, interpreting various hematological test results and blood clotting test results. In some institutions, hematologists also manage the hematology laboratory. Physicians who work in hematology laboratories, and most commonly manage them, are pathologists specialized in the diagnosis of hematological diseases, referred to as hematopathologists or haematopathologists. Hematologists and hematopathologists generally work in conjunction to formulate a diagnosis and deliver the most appropriate therapy if needed. Hematology is a distinct subspecialty of internal medicine, separate from but overlapping with the subspecialty of medical oncology.</p>
</div>

</body>
</html>
