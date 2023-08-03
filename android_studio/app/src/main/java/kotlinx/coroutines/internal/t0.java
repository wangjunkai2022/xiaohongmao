package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemProps.common.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u001a,\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005H\u0000\u001a,\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\t2\b\b\u0002\u0010\u0006\u001a\u00020\t2\b\b\u0002\u0010\u0007\u001a\u00020\tH\u0000¨\u0006\u000b"}, d2 = {"", "propertyName", "", "defaultValue", "c", "", "minValue", "maxValue", "a", "", "b", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class t0 {
    public static final int a(@m8.g String str, int i4, int i10, int i11) {
        return (int) r0.c(str, i4, i10, i11);
    }

    public static final long b(@m8.g String str, long j4, long j10, long j11) {
        Long longOrNull;
        String d4 = r0.d(str);
        if (d4 == null) {
            return j4;
        }
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(d4);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + d4 + '\'').toString());
        }
        long longValue = longOrNull.longValue();
        boolean z9 = false;
        if (j10 <= longValue && longValue <= j11) {
            z9 = true;
        }
        if (z9) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j10 + ".." + j11 + ", but is '" + longValue + '\'').toString());
    }

    public static final boolean c(@m8.g String str, boolean z9) {
        String d4 = r0.d(str);
        return d4 == null ? z9 : Boolean.parseBoolean(d4);
    }

    public static /* synthetic */ int d(String str, int i4, int i10, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i10 = 1;
        }
        if ((i12 & 8) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        return r0.b(str, i4, i10, i11);
    }

    public static /* synthetic */ long e(String str, long j4, long j10, long j11, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            j10 = 1;
        }
        long j12 = j10;
        if ((i4 & 8) != 0) {
            j11 = Long.MAX_VALUE;
        }
        return r0.c(str, j4, j12, j11);
    }
}
