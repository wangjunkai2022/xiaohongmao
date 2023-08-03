package retrofit2.adapter.rxjava2;

import java.util.Objects;
import r7.h;
import retrofit2.Response;

/* loaded from: classes5.dex */
public final class Result<T> {
    @h
    private final Throwable error;
    @h
    private final Response<T> response;

    private Result(@h Response<T> response, @h Throwable th) {
        this.response = response;
        this.error = th;
    }

    public static <T> Result<T> error(Throwable th) {
        Objects.requireNonNull(th, "error == null");
        return new Result<>(null, th);
    }

    public static <T> Result<T> response(Response<T> response) {
        Objects.requireNonNull(response, "response == null");
        return new Result<>(response, null);
    }

    public boolean isError() {
        return this.error != null;
    }

    @h
    public Throwable error() {
        return this.error;
    }

    @h
    public Response<T> response() {
        return this.response;
    }
}
