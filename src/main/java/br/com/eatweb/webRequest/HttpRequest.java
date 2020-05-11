package br.com.eatweb.webRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;


public class HttpRequest {
	//READ
	public String get(String endereco, String contentType) {

		try {
			URL url = new URL(endereco);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", contentType);

			if (conn.getResponseCode() != HttpURLConnection.HTTP_OK) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				return output;
			}
			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		return "";

	}
	//CREATE
	public String post(String endereco, String contentType, String... inputs ) {
		String output = "";
		try {

			URL url = new URL(endereco);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			
			conn.setRequestProperty("Content-Type", contentType);


			OutputStream os = conn.getOutputStream();
			
			for(String input: inputs){
				os.write(input.getBytes());
			}

			os.flush();

			if (conn.getResponseCode() != HttpURLConnection.HTTP_OK) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			while ((output = br.readLine()) != null) {
				return output;
			}

			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		return output;

	}
	//UPDATE
	public String put (String endereco, String contentType, String... inputs){
		String output = "";
		try {

			URL url = new URL(endereco);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("PUT");
			
			conn.setRequestProperty("Content-Type", contentType);


			OutputStream os = conn.getOutputStream();
			
			for(String input: inputs){
				os.write(input.getBytes());
			}

			os.flush();

			if (conn.getResponseCode() != HttpURLConnection.HTTP_OK) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			while ((output = br.readLine()) != null) {
				return output;
			}

			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		return output;

	}
	//DELETE
	public String delete (String endereco, String contentType, String... inputs){
		String output = "";
		try {

			URL url = new URL(endereco);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("DELETE");
			
			conn.setRequestProperty("Content-Type", contentType);


			OutputStream os = conn.getOutputStream();
			
			for(String input: inputs){
				os.write(input.getBytes());
			}

			os.flush();

			if (conn.getResponseCode() != HttpURLConnection.HTTP_OK) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			while ((output = br.readLine()) != null) {
				return output;
			}

			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		return output;

	}
}