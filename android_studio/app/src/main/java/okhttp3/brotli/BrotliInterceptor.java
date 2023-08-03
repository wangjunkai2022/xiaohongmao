package okhttp3.brotli;

import com.google.android.exoplayer2.text.ttml.d;
import com.google.common.net.b;
import io.sentry.protocol.j;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;

/* compiled from: BrotliInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Lokhttp3/brotli/BrotliInterceptor;", "Lokhttp3/Interceptor;", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "uncompress", j.f83728f, "uncompress$okhttp_brotli", "okhttp-brotli"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class BrotliInterceptor implements Interceptor {
    public static final BrotliInterceptor INSTANCE = new BrotliInterceptor();

    private BrotliInterceptor() {
    }

    @Override // okhttp3.Interceptor
    @g
    public Response intercept(@g Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        if (chain.request().header(b.f34629j) == null) {
            return uncompress$okhttp_brotli(chain.proceed(chain.request().newBuilder().header(b.f34629j, "br,gzip").build()));
        }
        return chain.proceed(chain.request());
    }

    @g
    public final Response uncompress$okhttp_brotli(@g Response response) {
        ResponseBody body;
        String header$default;
        boolean equals;
        boolean equals2;
        BufferedSource buffer;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response) || (body = response.body()) == null || (header$default = Response.header$default(response, "Content-Encoding", null, 2, null)) == null) {
            return response;
        }
        equals = StringsKt__StringsJVMKt.equals(header$default, d.f25734t, true);
        if (equals) {
            buffer = Okio.buffer(Okio.source(new org.brotli.dec.b(body.source().inputStream())));
        } else {
            equals2 = StringsKt__StringsJVMKt.equals(header$default, "gzip", true);
            if (!equals2) {
                return response;
            }
            buffer = Okio.buffer(new GzipSource(body.source()));
        }
        return response.newBuilder().removeHeader("Content-Encoding").removeHeader(b.f34609b).body(ResponseBody.Companion.create(buffer, body.contentType(), -1L)).build();
    }
}
