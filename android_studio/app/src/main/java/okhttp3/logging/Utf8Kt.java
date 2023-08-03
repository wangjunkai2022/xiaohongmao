package okhttp3.logging;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import okio.Buffer;

/* compiled from: utf8.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"isProbablyUtf8", "", "Lokio/Buffer;", "okhttp-logging-interceptor"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(@g Buffer isProbablyUtf8) {
        long coerceAtMost;
        Intrinsics.checkNotNullParameter(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            Buffer buffer = new Buffer();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(isProbablyUtf8.size(), 64L);
            isProbablyUtf8.copyTo(buffer, 0L, coerceAtMost);
            for (int i4 = 0; i4 < 16; i4++) {
                if (buffer.exhausted()) {
                    return true;
                }
                int readUtf8CodePoint = buffer.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
