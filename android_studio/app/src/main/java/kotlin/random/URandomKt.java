package kotlin.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.ULongRange;
import m8.g;

/* compiled from: URandom.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\"\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0000ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a\u001e\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u0011\u001a\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a2\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u0011\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0014\u0010\u0018\u001a\u00020\u0003*\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a\u001e\u0010\u0018\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a&\u0010\u0018\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001c\u0010\u0018\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007ø\u0001\u0000¢\u0006\u0002\u0010 \u001a\u0014\u0010!\u001a\u00020\b*\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\"\u001a\u001e\u0010!\u001a\u00020\b*\u00020\r2\u0006\u0010\u0004\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a&\u0010!\u001a\u00020\b*\u00020\r2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u001c\u0010!\u001a\u00020\b*\u00020\r2\u0006\u0010\u001e\u001a\u00020'H\u0007ø\u0001\u0000¢\u0006\u0002\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {"checkUIntRangeBounds", "", TypedValues.Transition.S_FROM, "Lkotlin/UInt;", "until", "checkUIntRangeBounds-J1ME1BU", "(II)V", "checkULongRangeBounds", "Lkotlin/ULong;", "checkULongRangeBounds-eb3DHEI", "(JJ)V", "nextUBytes", "Lkotlin/UByteArray;", "Lkotlin/random/Random;", f.f47745b, "", "(Lkotlin/random/Random;I)[B", "array", "nextUBytes-EVgfTAA", "(Lkotlin/random/Random;[B)[B", "fromIndex", "toIndex", "nextUBytes-Wvrt4B4", "(Lkotlin/random/Random;[BII)[B", "nextUInt", "(Lkotlin/random/Random;)I", "nextUInt-qCasIEU", "(Lkotlin/random/Random;I)I", "nextUInt-a8DCA5k", "(Lkotlin/random/Random;II)I", "range", "Lkotlin/ranges/UIntRange;", "(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I", "nextULong", "(Lkotlin/random/Random;)J", "nextULong-V1Xi4fY", "(Lkotlin/random/Random;J)J", "nextULong-jmpaW-c", "(Lkotlin/random/Random;JJ)J", "Lkotlin/ranges/ULongRange;", "(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class URandomKt {
    /* renamed from: checkUIntRangeBounds-J1ME1BU  reason: not valid java name */
    public static final void m1302checkUIntRangeBoundsJ1ME1BU(int i4, int i10) {
        if (!(UnsignedKt.uintCompare(i10, i4) > 0)) {
            throw new IllegalArgumentException(RandomKt.boundsErrorMessage(UInt.m158boximpl(i4), UInt.m158boximpl(i10)).toString());
        }
    }

    /* renamed from: checkULongRangeBounds-eb3DHEI  reason: not valid java name */
    public static final void m1303checkULongRangeBoundseb3DHEI(long j4, long j10) {
        if (!(UnsignedKt.ulongCompare(j10, j4) > 0)) {
            throw new IllegalArgumentException(RandomKt.boundsErrorMessage(ULong.m236boximpl(j4), ULong.m236boximpl(j10)).toString());
        }
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    public static final byte[] nextUBytes(@g Random random, int i4) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        return UByteArray.m140constructorimpl(random.nextBytes(i4));
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    /* renamed from: nextUBytes-EVgfTAA  reason: not valid java name */
    public static final byte[] m1304nextUBytesEVgfTAA(@g Random nextUBytes, @g byte[] array) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        nextUBytes.nextBytes(array);
        return array;
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    /* renamed from: nextUBytes-Wvrt4B4  reason: not valid java name */
    public static final byte[] m1305nextUBytesWvrt4B4(@g Random nextUBytes, @g byte[] array, int i4, int i10) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        nextUBytes.nextBytes(array, i4, i10);
        return array;
    }

    /* renamed from: nextUBytes-Wvrt4B4$default  reason: not valid java name */
    public static /* synthetic */ byte[] m1306nextUBytesWvrt4B4$default(Random random, byte[] bArr, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i4 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = UByteArray.m146getSizeimpl(bArr);
        }
        return m1305nextUBytesWvrt4B4(random, bArr, i4, i10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int nextUInt(@g Random random) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        return UInt.m164constructorimpl(random.nextInt());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextUInt-a8DCA5k  reason: not valid java name */
    public static final int m1307nextUInta8DCA5k(@g Random nextUInt, int i4, int i10) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        m1302checkUIntRangeBoundsJ1ME1BU(i4, i10);
        return UInt.m164constructorimpl(nextUInt.nextInt(i4 ^ Integer.MIN_VALUE, i10 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextUInt-qCasIEU  reason: not valid java name */
    public static final int m1308nextUIntqCasIEU(@g Random nextUInt, int i4) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        return m1307nextUInta8DCA5k(nextUInt, 0, i4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long nextULong(@g Random random) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        return ULong.m242constructorimpl(random.nextLong());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextULong-V1Xi4fY  reason: not valid java name */
    public static final long m1309nextULongV1Xi4fY(@g Random nextULong, long j4) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        return m1310nextULongjmpaWc(nextULong, 0L, j4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextULong-jmpaW-c  reason: not valid java name */
    public static final long m1310nextULongjmpaWc(@g Random nextULong, long j4, long j10) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        m1303checkULongRangeBoundseb3DHEI(j4, j10);
        return ULong.m242constructorimpl(nextULong.nextLong(j4 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int nextUInt(@g Random random, @g UIntRange range) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return UnsignedKt.uintCompare(range.m1312getLastpVg5ArA(), -1) < 0 ? m1307nextUInta8DCA5k(random, range.m1311getFirstpVg5ArA(), UInt.m164constructorimpl(range.m1312getLastpVg5ArA() + 1)) : UnsignedKt.uintCompare(range.m1311getFirstpVg5ArA(), 0) > 0 ? UInt.m164constructorimpl(m1307nextUInta8DCA5k(random, UInt.m164constructorimpl(range.m1311getFirstpVg5ArA() - 1), range.m1312getLastpVg5ArA()) + 1) : nextUInt(random);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long nextULong(@g Random random, @g ULongRange range) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            if (UnsignedKt.ulongCompare(range.m1319getLastsVKNKU(), -1L) < 0) {
                return m1310nextULongjmpaWc(random, range.m1318getFirstsVKNKU(), ULong.m242constructorimpl(range.m1319getLastsVKNKU() + ULong.m242constructorimpl(1 & 4294967295L)));
            }
            if (UnsignedKt.ulongCompare(range.m1318getFirstsVKNKU(), 0L) > 0) {
                long j4 = 1 & 4294967295L;
                return ULong.m242constructorimpl(m1310nextULongjmpaWc(random, ULong.m242constructorimpl(range.m1318getFirstsVKNKU() - ULong.m242constructorimpl(j4)), range.m1319getLastsVKNKU()) + ULong.m242constructorimpl(j4));
            }
            return nextULong(random);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }
}
