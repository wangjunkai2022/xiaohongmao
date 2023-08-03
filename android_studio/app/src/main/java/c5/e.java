package c5;

import java.io.IOException;
import java.nio.charset.Charset;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import okio.Buffer;

/* compiled from: CurlLoggingInterceptor.java */
/* loaded from: classes3.dex */
public class e implements Interceptor {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f4011c = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final HttpLoggingInterceptor.Logger f4012a;

    /* renamed from: b  reason: collision with root package name */
    private String f4013b;

    public e() {
        this(HttpLoggingInterceptor.Logger.DEFAULT);
    }

    public void a(String str) {
        this.f4013b = str;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Buffer buffer;
        Request request = chain.request();
        String str = ((this.f4013b != null ? "curl " + this.f4013b : "curl") + " -X " + request.method()) + " '" + request.url() + "'";
        Headers headers = request.headers();
        int size = headers.size();
        for (int i4 = 0; i4 < size; i4++) {
            String name = headers.name(i4);
            String value = headers.value(i4);
            if (com.google.common.net.b.f34629j.equalsIgnoreCase(name)) {
                "gzip".equalsIgnoreCase(value);
            }
            str = str + " -H \"" + name + ": " + value + "\"";
        }
        RequestBody body = request.body();
        if (body != null) {
            body.writeTo(new Buffer());
            Charset charset = f4011c;
            MediaType contentType = body.contentType();
            if (contentType != null) {
                charset = contentType.charset(charset);
            }
            str = str + " --data $'" + buffer.readString(charset).replace("\n", "\\n") + "'";
        }
        this.f4012a.log("╭--- cURL (" + request.url() + ")");
        this.f4012a.log(str);
        this.f4012a.log("╰--- (copy and paste the above line to a terminal)");
        return chain.proceed(request);
    }

    public e(HttpLoggingInterceptor.Logger logger) {
        this.f4012a = logger;
    }
}
