package okhttp3.internal.http;

import com.google.common.net.b;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.Okio;

/* compiled from: BridgeInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "cookieJar", "Lokhttp3/CookieJar;", "(Lokhttp3/CookieJar;)V", "cookieHeader", "", "cookies", "", "Lokhttp3/Cookie;", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(@g CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.cookieJar = cookieJar;
    }

    private final String cookieHeader(List<Cookie> list) {
        StringBuilder sb = new StringBuilder();
        int i4 = 0;
        for (Object obj : list) {
            int i10 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Cookie cookie = (Cookie) obj;
            if (i4 > 0) {
                sb.append("; ");
            }
            sb.append(cookie.name());
            sb.append('=');
            sb.append(cookie.value());
            i4 = i10;
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // okhttp3.Interceptor
    @g
    public Response intercept(@g Interceptor.Chain chain) throws IOException {
        boolean equals;
        ResponseBody body;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        RequestBody body2 = request.body();
        if (body2 != null) {
            MediaType contentType = body2.contentType();
            if (contentType != null) {
                newBuilder.header("Content-Type", contentType.toString());
            }
            long contentLength = body2.contentLength();
            if (contentLength != -1) {
                newBuilder.header(b.f34609b, String.valueOf(contentLength));
                newBuilder.removeHeader(b.C0);
            } else {
                newBuilder.header(b.C0, "chunked");
                newBuilder.removeHeader(b.f34609b);
            }
        }
        boolean z9 = false;
        if (request.header(b.f34653v) == null) {
            newBuilder.header(b.f34653v, Util.toHostHeader$default(request.url(), false, 1, null));
        }
        if (request.header(b.f34639o) == null) {
            newBuilder.header(b.f34639o, "Keep-Alive");
        }
        if (request.header(b.f34629j) == null && request.header(b.G) == null) {
            newBuilder.header(b.f34629j, "gzip");
            z9 = true;
        }
        List<Cookie> loadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!loadForRequest.isEmpty()) {
            newBuilder.header(b.f34641p, cookieHeader(loadForRequest));
        }
        if (request.header(b.M) == null) {
            newBuilder.header(b.M, Util.userAgent);
        }
        Response proceed = chain.proceed(newBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), proceed.headers());
        Response.Builder request2 = proceed.newBuilder().request(request);
        if (z9) {
            equals = StringsKt__StringsJVMKt.equals("gzip", Response.header$default(proceed, "Content-Encoding", null, 2, null), true);
            if (equals && HttpHeaders.promisesBody(proceed) && (body = proceed.body()) != null) {
                GzipSource gzipSource = new GzipSource(body.source());
                request2.headers(proceed.headers().newBuilder().removeAll("Content-Encoding").removeAll(b.f34609b).build());
                request2.body(new RealResponseBody(Response.header$default(proceed, "Content-Type", null, 2, null), -1L, Okio.buffer(gzipSource)));
            }
        }
        return request2.build();
    }
}
