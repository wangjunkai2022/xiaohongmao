package c5;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;

/* compiled from: WebViewBrotliInterceptor.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u001a\u0010\t\u001a\u00020\b8\u0006X\u0086D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lc5/i;", "Lokhttp3/Interceptor;", "Lokhttp3/Response;", io.sentry.protocol.j.f83728f, "a", "Lokhttp3/Interceptor$Chain;", "chain", "intercept", "", "TAG", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i implements Interceptor {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final i f4019a = new i();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f4020b = "WebViewBrotliInterceptor";

    private i() {
    }

    private final Response a(Response response) {
        ResponseBody body;
        String header$default;
        boolean equals;
        boolean equals2;
        BufferedSource buffer;
        response.request().url();
        if (!HttpHeaders.promisesBody(response) || (body = response.body()) == null || (header$default = Response.header$default(response, "Content-Encoding", null, 2, null)) == null) {
            return response;
        }
        equals = StringsKt__StringsJVMKt.equals(header$default, com.google.android.exoplayer2.text.ttml.d.f25734t, true);
        if (equals) {
            buffer = Okio.buffer(Okio.source(new org.brotli.dec.b(body.source().inputStream())));
        } else {
            equals2 = StringsKt__StringsJVMKt.equals(header$default, "gzip", true);
            if (!equals2) {
                return response;
            }
            buffer = Okio.buffer(new GzipSource(body.source()));
        }
        return response.newBuilder().removeHeader("Content-Encoding").removeHeader(com.google.common.net.b.f34609b).body(ResponseBody.Companion.create(buffer, body.contentType(), -1L)).build();
    }

    @m8.g
    public final String b() {
        return f4020b;
    }

    @Override // okhttp3.Interceptor
    @m8.g
    public Response intercept(@m8.g Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        if (chain.request().header(com.google.common.net.b.f34629j) == null) {
            Response proceed = chain.proceed(chain.request().newBuilder().header(com.google.common.net.b.f34629j, "br,gzip").build());
            if (proceed.isSuccessful()) {
                return a(proceed);
            }
            throw j.b(proceed);
        }
        return chain.proceed(chain.request());
    }
}
