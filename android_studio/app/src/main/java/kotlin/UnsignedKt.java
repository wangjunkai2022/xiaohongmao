package kotlin;

import com.google.android.exoplayer2.text.ttml.d;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import m8.g;

/* compiled from: UnsignedUtils.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0001\u001a\"\u0010\f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000e\u001a\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0013H\u0001\u001a\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0016\u001a\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0013H\u0001\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0013H\u0000\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\tH\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"doubleToUInt", "Lkotlin/UInt;", "v", "", "(D)I", "doubleToULong", "Lkotlin/ULong;", "(D)J", "uintCompare", "", "v1", "v2", "uintDivide", "uintDivide-J1ME1BU", "(II)I", "uintRemainder", "uintRemainder-J1ME1BU", "uintToDouble", "ulongCompare", "", "ulongDivide", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "ulongToDouble", "ulongToString", "", d.X, "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "UnsignedKt")
/* loaded from: classes4.dex */
public final class UnsignedKt {
    @PublishedApi
    public static final int doubleToUInt(double d4) {
        if (!Double.isNaN(d4) && d4 > uintToDouble(0)) {
            if (d4 >= uintToDouble(-1)) {
                return -1;
            }
            if (d4 <= 2.147483647E9d) {
                return UInt.m164constructorimpl((int) d4);
            }
            return UInt.m164constructorimpl(UInt.m164constructorimpl((int) (d4 - Integer.MAX_VALUE)) + UInt.m164constructorimpl(Integer.MAX_VALUE));
        }
        return 0;
    }

    @PublishedApi
    public static final long doubleToULong(double d4) {
        if (!Double.isNaN(d4) && d4 > ulongToDouble(0L)) {
            if (d4 >= ulongToDouble(-1L)) {
                return -1L;
            }
            if (d4 < 9.223372036854776E18d) {
                return ULong.m242constructorimpl((long) d4);
            }
            return ULong.m242constructorimpl(ULong.m242constructorimpl((long) (d4 - 9.223372036854776E18d)) - Long.MIN_VALUE);
        }
        return 0L;
    }

    @PublishedApi
    public static final int uintCompare(int i4, int i10) {
        return Intrinsics.compare(i4 ^ Integer.MIN_VALUE, i10 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: uintDivide-J1ME1BU  reason: not valid java name */
    public static final int m417uintDivideJ1ME1BU(int i4, int i10) {
        return UInt.m164constructorimpl((int) ((i4 & 4294967295L) / (i10 & 4294967295L)));
    }

    @PublishedApi
    /* renamed from: uintRemainder-J1ME1BU  reason: not valid java name */
    public static final int m418uintRemainderJ1ME1BU(int i4, int i10) {
        return UInt.m164constructorimpl((int) ((i4 & 4294967295L) % (i10 & 4294967295L)));
    }

    @PublishedApi
    public static final double uintToDouble(int i4) {
        return (Integer.MAX_VALUE & i4) + (((i4 >>> 31) << 30) * 2);
    }

    @PublishedApi
    public static final int ulongCompare(long j4, long j10) {
        return Intrinsics.compare(j4 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: ulongDivide-eb3DHEI  reason: not valid java name */
    public static final long m419ulongDivideeb3DHEI(long j4, long j10) {
        if (j10 < 0) {
            return ulongCompare(j4, j10) < 0 ? ULong.m242constructorimpl(0L) : ULong.m242constructorimpl(1L);
        } else if (j4 >= 0) {
            return ULong.m242constructorimpl(j4 / j10);
        } else {
            long j11 = ((j4 >>> 1) / j10) << 1;
            return ULong.m242constructorimpl(j11 + (ulongCompare(ULong.m242constructorimpl(j4 - (j11 * j10)), ULong.m242constructorimpl(j10)) < 0 ? 0 : 1));
        }
    }

    @PublishedApi
    /* renamed from: ulongRemainder-eb3DHEI  reason: not valid java name */
    public static final long m420ulongRemaindereb3DHEI(long j4, long j10) {
        if (j10 < 0) {
            return ulongCompare(j4, j10) < 0 ? j4 : ULong.m242constructorimpl(j4 - j10);
        } else if (j4 >= 0) {
            return ULong.m242constructorimpl(j4 % j10);
        } else {
            long j11 = j4 - ((((j4 >>> 1) / j10) << 1) * j10);
            if (ulongCompare(ULong.m242constructorimpl(j11), ULong.m242constructorimpl(j10)) < 0) {
                j10 = 0;
            }
            return ULong.m242constructorimpl(j11 - j10);
        }
    }

    @PublishedApi
    public static final double ulongToDouble(long j4) {
        return ((j4 >>> 11) * 2048) + (j4 & 2047);
    }

    @g
    public static final String ulongToString(long j4) {
        return ulongToString(j4, 10);
    }

    @g
    public static final String ulongToString(long j4, int i4) {
        int checkRadix;
        int checkRadix2;
        int checkRadix3;
        if (j4 >= 0) {
            checkRadix3 = CharsKt__CharJVMKt.checkRadix(i4);
            String l10 = Long.toString(j4, checkRadix3);
            Intrinsics.checkNotNullExpressionValue(l10, "toString(this, checkRadix(radix))");
            return l10;
        }
        long j10 = i4;
        long j11 = ((j4 >>> 1) / j10) << 1;
        long j12 = j4 - (j11 * j10);
        if (j12 >= j10) {
            j12 -= j10;
            j11++;
        }
        StringBuilder sb = new StringBuilder();
        checkRadix = CharsKt__CharJVMKt.checkRadix(i4);
        String l11 = Long.toString(j11, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l11, "toString(this, checkRadix(radix))");
        sb.append(l11);
        checkRadix2 = CharsKt__CharJVMKt.checkRadix(i4);
        String l12 = Long.toString(j12, checkRadix2);
        Intrinsics.checkNotNullExpressionValue(l12, "toString(this, checkRadix(radix))");
        sb.append(l12);
        return sb.toString();
    }
}
