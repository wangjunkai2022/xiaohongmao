package kotlin.internal;

import com.google.android.exoplayer2.text.ttml.d;
import kotlin.Metadata;
import kotlin.PublishedApi;

/* compiled from: progressionUtil.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a \u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0001\u001a \u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0001\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0002¨\u0006\u000b"}, d2 = {"differenceModulo", "", "a", "b", "c", "", "getProgressionLastElement", d.f25725o0, d.f25727p0, "step", "mod", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ProgressionUtilKt {
    private static final int differenceModulo(int i4, int i10, int i11) {
        return mod(mod(i4, i11) - mod(i10, i11), i11);
    }

    @PublishedApi
    public static final int getProgressionLastElement(int i4, int i10, int i11) {
        if (i11 > 0) {
            return i4 >= i10 ? i10 : i10 - differenceModulo(i10, i4, i11);
        } else if (i11 < 0) {
            return i4 <= i10 ? i10 : i10 + differenceModulo(i4, i10, -i11);
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    private static final int mod(int i4, int i10) {
        int i11 = i4 % i10;
        return i11 >= 0 ? i11 : i11 + i10;
    }

    private static final long differenceModulo(long j4, long j10, long j11) {
        return mod(mod(j4, j11) - mod(j10, j11), j11);
    }

    private static final long mod(long j4, long j10) {
        long j11 = j4 % j10;
        return j11 >= 0 ? j11 : j11 + j10;
    }

    @PublishedApi
    public static final long getProgressionLastElement(long j4, long j10, long j11) {
        int i4 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if (i4 > 0) {
            return j4 >= j10 ? j10 : j10 - differenceModulo(j10, j4, j11);
        } else if (i4 < 0) {
            return j4 <= j10 ? j10 : j10 + differenceModulo(j4, j10, -j11);
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }
}
