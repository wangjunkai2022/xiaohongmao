package okio;

import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: InflaterSource.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\b¨\u0006\u0005"}, d2 = {"inflate", "Lokio/InflaterSource;", "Lokio/Source;", "inflater", "Ljava/util/zip/Inflater;", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
@JvmName(name = "-InflaterSourceExtensions")
/* renamed from: okio.-InflaterSourceExtensions  reason: invalid class name */
/* loaded from: classes4.dex */
public final class InflaterSourceExtensions {
    @g
    public static final InflaterSource inflate(@g Source source, @g Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source source, Inflater inflater, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            inflater = new Inflater();
        }
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }
}
