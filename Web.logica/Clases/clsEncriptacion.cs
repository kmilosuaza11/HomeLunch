using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Web.logica.Clases
{
    //MD5 es un algoritmo tipo hashing pero cuando utilizamos este sifrado no hay vuelta atras en el sifrado de la contraseña, crea un codigo que compara con la ingresada en el
    //    texbox de clave
     public class clsEncriptacion
     {
        public string stEncriptar(string stCadena)
        {
            byte[] BtclearBytes;
            BtclearBytes = new UnicodeEncoding().GetBytes(stCadena);
            byte[] BthashedByte = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(BtclearBytes);
            string sthashedText = BitConverter.ToString(BthashedByte);

            return sthashedText;  
        }
     }
}
