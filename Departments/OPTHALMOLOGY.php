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
  background-image: url("OPTHALMOLOGY.jpg");
  
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
  padding: 30px;
  text-align: left;
}

</style>
</head>
<body>

<div class="bg-image"></div>

<div class="bg-text">
  
  <h1 style="font-size:50px">OPTHALMOLOGY</h1>
  <p>This department deals with the investigation and treatment of eye problems of adults and children. Their services include:General eye clinic appointments Laser treatments Optometry  Orthoptics  Prosthetic eye services Ophthalmic imaging The credentials include a degree in medicine, followed by additional four to five years of residency training in ophthalmology. Residency training programs for ophthalmology may require a one-year internship with training in internal medicine, pediatrics, or general surgery.<br> Additional specialty training may be sought in a particular aspect of eye pathology. Ophthalmologists are allowed to prescribe medications to treat eye diseases, implement laser therapy, and perform surgery when needed. Ophthalmologists may participate in academic research on the diagnosis and treatment for eye disorders <br> Optical coherence tomography is a medical technological platform used to assess ocular structures. The information is then used by physicians to assess staging of pathological processes and confirm clinical diagnoses. Subsequent OCT scans are used to assess the efficacy of managing diabetic retinopathy, age-related macular degeneration, and glaucoma. Ultrasonography of the eyes may be performed by an ophthalmologist.</p>
</div>

</body>
</html>