package okhttp3.internal.cache;

import com.google.android.exoplayer2.text.ttml.d;
import java.io.IOException;
import kotlin.Metadata;
import m8.g;
import okio.Sink;

/* compiled from: CacheRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/cache/CacheRequest;", "", "abort", "", d.f25726p, "Lokio/Sink;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public interface CacheRequest {
    void abort();

    @g
    Sink body() throws IOException;
}
