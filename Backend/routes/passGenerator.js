/**
 * Use `const { createPass } = require("passkit-generator");`
 * for usage in pure Node.js. Please note that `Pass` is only exported
 * as Typescript type.
 */
 import { createPass, Pass } from "passkit-generator";

 try {
     const examplePass = await createPass({
         model: "./passModels/myFirstModel",
         certificates: {
             wwdr: "./certs/wwdr.pem",
             signerCert: "./certs/signercert.pem",
             signerKey: {
                 keyFile: "./certs/signerkey.pem",
                 passphrase: "123456"
             }
         },
         overrides: {
             // keys to be added or overridden
             serialNumber: "AAGH44625236dddaffbda"
         }
     });
 
     // Adding some settings to be written inside pass.json
     examplePass.localize("en", { 
         
      });
     examplePass.barcode("36478105430"); // Random value
 
     // Generate the stream .pkpass file stream
     const stream = examplePass.generate();
 
     doSomethingWithTheStream(stream);
 } catch (err) {
     doSomethingWithTheError(err);
 }