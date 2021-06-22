class Medication {
  final int id;
  final String purpose, title, image;

  Medication({this.id, this.purpose, this.title, this.image});
}

// list of products
// for our demo
List<Medication> medications = [
  Medication(
    id: 1,
    purpose: "pain reliever and a fever reducer",
    title: "Acetaminophen",
    image: "assets/images/acetaminophen.jpeg",
    
  ),
  Medication(
    id: 4,
    purpose: "relieve coughing",
    title: "Benzonatate",
    image: "assets/images/benzonatate.jpeg",
  
  ),
  Medication(
    id: 9,
    purpose: "treat infections caused by bacteria",
    title: "Cephalexin",
    image: "assets/images/cephalexin.jpeg",
    
  ),
];
