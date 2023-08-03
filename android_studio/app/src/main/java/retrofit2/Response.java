package retrofit2;

import java.util.Objects;
import okhttp3.Headers;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import r7.h;
import retrofit2.OkHttpCall;

/* loaded from: classes5.dex */
public final class Response<T> {
    @h
    private final T body;
    @h
    private final ResponseBody errorBody;
    private final okhttp3.Response rawResponse;

    private Response(okhttp3.Response response, @h T t9, @h ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = t9;
        this.errorBody = responseBody;
    }

    public static <T> Response<T> error(int i4, ResponseBody responseBody) {
        Objects.requireNonNull(responseBody, "body == null");
        if (i4 >= 400) {
            return error(responseBody, new Response.Builder().body(new OkHttpCall.NoContentResponseBody(responseBody.contentType(), responseBody.contentLength())).code(i4).message("Response.error()").protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
        }
        throw new IllegalArgumentException("code < 400: " + i4);
    }

    public static <T> Response<T> success(@h T t9) {
        return success(t9, new Response.Builder().code(200).message("OK").protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
    }

    @h
    public T body() {
        return this.body;
    }

    public int code() {
        return this.rawResponse.code();
    }

    @h
    public ResponseBody errorBody() {
        return this.errorBody;
    }

    public Headers headers() {
        return this.rawResponse.headers();
    }

    public boolean isSuccessful() {
        return this.rawResponse.isSuccessful();
    }

    public String message() {
        return this.rawResponse.message();
    }

    public okhttp3.Response raw() {
        return this.rawResponse;
    }

    public String toString() {
        return this.rawResponse.toString();
    }

    public static <T> Response<T> success(int i4, @h T t9) {
        if (i4 >= 200 && i4 < 300) {
            return success(t9, new Response.Builder().code(i4).message("Response.success()").protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
        }
        throw new IllegalArgumentException("code < 200 or >= 300: " + i4);
    }

    public static <T> Response<T> error(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new Response<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public static <T> Response<T> success(@h T t9, Headers headers) {
        Objects.requireNonNull(headers, "headers == null");
        return success(t9, new Response.Builder().code(200).message("OK").protocol(Protocol.HTTP_1_1).headers(headers).request(new Request.Builder().url("http://localhost/").build()).build());
    }

    public static <T> Response<T> success(@h T t9, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new Response<>(response, t9, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }
}
