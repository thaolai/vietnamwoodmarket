package dao;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class Encoder {

	public static  String Encode(String plainText){
		
		MessageDigest mdAlgorithm;
		try {
			mdAlgorithm = MessageDigest.getInstance("MD5");
		mdAlgorithm.update(plainText.getBytes());

		byte[] digest = mdAlgorithm.digest();
		StringBuffer hexString = new StringBuffer();

		for (int i = 0; i < digest.length; i++) {
		    plainText = Integer.toHexString(0xFF & digest[i]);

		    if (plainText.length() < 2) {
		        plainText = "0" + plainText;
		    }

		    hexString.append(plainText);
		    
		}

		System.out.println("ManageUser.verifyPassword()");
		System.out.println(hexString.toString());
		return hexString.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		  
		
	}

	
}
