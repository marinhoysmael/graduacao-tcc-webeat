package br.com.eatweb.util;

public class ConverteTo {

	private static String caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	
	public static String numberForString(long number){
		StringBuilder builder = new StringBuilder();
		StringBuilder info = new StringBuilder();
		int resto;
		if(number < 61){
			return ""+caracteres.charAt((int) number);
		}else{
			while(number>0)
		    {
		       resto=(int) (number%61); 
		       builder.append(caracteres.charAt(resto));
		       number=number/61;
		    }
			int j = builder.length() - 1 ;
			while(j >=0) {
				info.append(builder.charAt(j));
				j--;
			}
			return info.toString();
		}
		
	}
	
	public static long stringForNumber(String info){
		long result = 0;
		int potencia = info.length() - 1;
		for(int x=0; x <=info.length() -1 ;x++){
			result += caracteres.indexOf(info.charAt(x))*(Math.pow(61,potencia));
			potencia--;
		}
		return result;
	}
	
}
