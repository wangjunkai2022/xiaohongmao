package kotlin.internal;

import com.google.android.exoplayer2.text.ttml.d;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;

/* compiled from: UProgressionUtil.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0006\u001a*\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", d.f25725o0, d.f25727p0, "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA  reason: not valid java name */
    private static final int m1294differenceModuloWZ9TVnA(int i4, int i10, int i11) {
        int m418uintRemainderJ1ME1BU = UnsignedKt.m418uintRemainderJ1ME1BU(i4, i11);
        int m418uintRemainderJ1ME1BU2 = UnsignedKt.m418uintRemainderJ1ME1BU(i10, i11);
        int uintCompare = UnsignedKt.uintCompare(m418uintRemainderJ1ME1BU, m418uintRemainderJ1ME1BU2);
        int m164constructorimpl = UInt.m164constructorimpl(m418uintRemainderJ1ME1BU - m418uintRemainderJ1ME1BU2);
        return uintCompare >= 0 ? m164constructorimpl : UInt.m164constructorimpl(m164constructorimpl + i11);
    }

    /* renamed from: differenceModulo-sambcqE  reason: not valid java name */
    private static final long m1295differenceModulosambcqE(long j4, long j10, long j11) {
        long m420ulongRemaindereb3DHEI = UnsignedKt.m420ulongRemaindereb3DHEI(j4, j11);
        long m420ulongRemaindereb3DHEI2 = UnsignedKt.m420ulongRemaindereb3DHEI(j10, j11);
        int ulongCompare = UnsignedKt.ulongCompare(m420ulongRemaindereb3DHEI, m420ulongRemaindereb3DHEI2);
        long m242constructorimpl = ULong.m242constructorimpl(m420ulongRemaindereb3DHEI - m420ulongRemaindereb3DHEI2);
        return ulongCompare >= 0 ? m242constructorimpl : ULong.m242constructorimpl(m242constructorimpl + j11);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g  reason: not valid java name */
    public static final long m1296getProgressionLastElement7ftBX0g(long j4, long j10, long j11) {
        int i4 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if (i4 > 0) {
            return UnsignedKt.ulongCompare(j4, j10) >= 0 ? j10 : ULong.m242constructorimpl(j10 - m1295differenceModulosambcqE(j10, j4, ULong.m242constructorimpl(j11)));
        } else if (i4 < 0) {
            return UnsignedKt.ulongCompare(j4, j10) <= 0 ? j10 : ULong.m242constructorimpl(j10 + m1295differenceModulosambcqE(j4, j10, ULong.m242constructorimpl(-j11)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs  reason: not valid java name */
    public static final int m1297getProgressionLastElementNkh28Cs(int i4, int i10, int i11) {
        if (i11 > 0) {
            return UnsignedKt.uintCompare(i4, i10) >= 0 ? i10 : UInt.m164constructorimpl(i10 - m1294differenceModuloWZ9TVnA(i10, i4, UInt.m164constructorimpl(i11)));
        } else if (i11 < 0) {
            return UnsignedKt.uintCompare(i4, i10) <= 0 ? i10 : UInt.m164constructorimpl(i10 + m1294differenceModuloWZ9TVnA(i4, i10, UInt.m164constructorimpl(-i11)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }
}
