package ConnectRestServer;

import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import modelsPkg.CentersModel;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class ConnectinServer {
	public static final MediaType MEDIA_TYPE_MARKDOWN = MediaType.parse("text/x-markdown; charset=utf-8");
	private final OkHttpClient client = new OkHttpClient();
	private String httpUrl = "http://localhost:8080/HospitalRestServer/webapi/database";

	public void GETDataFrommmmm(String endPointName) {
		Request request = new Request.Builder().url(httpUrl + endPointName).build();
		Call call = client.newCall(request);
		call.enqueue(new Callback() {
			public void onResponse(Call call, Response response) throws IOException {
				System.out.print(response.body().string());
			}

			public void onFailure(Call call, IOException e) {
				System.out.print(e.toString());
			}
		});
	}

	public String GETDataFrom(String endPointName) throws IOException {
		Request request = new Request.Builder().url(httpUrl + endPointName).build();
		try (Response response = client.newCall(request).execute()) {
			return response.body().string();
		}
	}

	public String POSTDataFrom(String endPointName, String postBody) throws Exception {
		@SuppressWarnings("deprecation")
		Request request = new Request.Builder().url(httpUrl + endPointName)
				.post(RequestBody.create(MEDIA_TYPE_MARKDOWN, postBody)).build();
		try (Response response = client.newCall(request).execute()) {
			if (!response.isSuccessful()) {
				throw new IOException("Unexpected code " + response);
			} else {
				return response.body().string();
			}
		}
	}
	
	

	public static void main(String[] args) throws Exception {
		String responseBodyString = new ConnectinServer().GETDataFrom("/centers");
		Gson gson = new GsonBuilder().create();
		CentersModel[] cm = gson.fromJson(responseBodyString, CentersModel[].class);
		System.out.println("new-" + cm[2].getName() + "\n");
	}

	/*
	 * whenAsynchronousGetRequest_thenCorrect see web site
	 * https://square.github.io/okhttp/recipes/#posting-a-string-kt-java
	 * 
	 * FIX CORS ERROS LOOK THIS
	 * 
	 * Request request = new Request.Builder()
	 * .url("https://api.github.com/repos/square/okhttp/issues")
	 * .header("User-Agent", "OkHttp Headers.java") .addHeader("Accept",
	 * "application/json; q=0.5") .addHeader("Accept",
	 * "application/vnd.github.v3+json") .build();
	 * 
	 * 1- api response content type ckeck in postman
	 *  2- create model class to json
	 * response key names using
	 *  3- gson using deserialize data set to model class
	 * array object
	 * 
	 * 
	 */

}
