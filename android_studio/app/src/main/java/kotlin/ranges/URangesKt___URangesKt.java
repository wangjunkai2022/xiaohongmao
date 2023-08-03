package kotlin.ranges;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.NoSuchElementException;
import kotlin.ExperimentalStdlibApi;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import m8.g;
import m8.h;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: _URanges.kt */
@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001e\u0010\u0000\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001e\u0010\u0000\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001e\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0004\u001a\u001e\u0010\u000e\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0007\u001a\u001e\u0010\u000e\u001a\u00020\b*\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\n\u001a\u001e\u0010\u000e\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\r\u001a&\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a&\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a$\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u001aH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a&\u0010\u0014\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a$\u0010\u0014\u001a\u00020\b*\u00020\b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001aH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a&\u0010\u0014\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\b\u0010)\u001a\u0004\u0018\u00010\u0005H\u0087\nø\u0001\u0000¢\u0006\u0002\b*\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\bH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b-\u0010.\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0005H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\b\u0010)\u001a\u0004\u0018\u00010\bH\u0087\nø\u0001\u0000¢\u0006\u0002\b4\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b5\u00106\u001a\u001f\u00107\u001a\u000208*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b:\u0010;\u001a\u001f\u00107\u001a\u000208*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a\u001f\u00107\u001a\u00020>*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b?\u0010@\u001a\u001f\u00107\u001a\u000208*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bA\u0010B\u001a\u0014\u0010C\u001a\u00020\u0005*\u000208H\u0007ø\u0001\u0000¢\u0006\u0002\u0010D\u001a\u0014\u0010C\u001a\u00020\b*\u00020>H\u0007ø\u0001\u0000¢\u0006\u0002\u0010E\u001a\u0011\u0010F\u001a\u0004\u0018\u00010\u0005*\u000208H\u0007ø\u0001\u0000\u001a\u0011\u0010F\u001a\u0004\u0018\u00010\b*\u00020>H\u0007ø\u0001\u0000\u001a\u0014\u0010G\u001a\u00020\u0005*\u000208H\u0007ø\u0001\u0000¢\u0006\u0002\u0010D\u001a\u0014\u0010G\u001a\u00020\b*\u00020>H\u0007ø\u0001\u0000¢\u0006\u0002\u0010E\u001a\u0011\u0010H\u001a\u0004\u0018\u00010\u0005*\u000208H\u0007ø\u0001\u0000\u001a\u0011\u0010H\u001a\u0004\u0018\u00010\b*\u00020>H\u0007ø\u0001\u0000\u001a\u0015\u0010I\u001a\u00020\u0005*\u00020%H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010J\u001a\u001c\u0010I\u001a\u00020\u0005*\u00020%2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000¢\u0006\u0002\u0010L\u001a\u0015\u0010I\u001a\u00020\b*\u00020/H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010M\u001a\u001c\u0010I\u001a\u00020\b*\u00020/2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000¢\u0006\u0002\u0010N\u001a\u0012\u0010O\u001a\u0004\u0018\u00010\u0005*\u00020%H\u0087\bø\u0001\u0000\u001a\u0019\u0010O\u001a\u0004\u0018\u00010\u0005*\u00020%2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000\u001a\u0012\u0010O\u001a\u0004\u0018\u00010\b*\u00020/H\u0087\bø\u0001\u0000\u001a\u0019\u0010O\u001a\u0004\u0018\u00010\b*\u00020/2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000\u001a\f\u0010P\u001a\u000208*\u000208H\u0007\u001a\f\u0010P\u001a\u00020>*\u00020>H\u0007\u001a\u0015\u0010Q\u001a\u000208*\u0002082\u0006\u0010Q\u001a\u00020RH\u0087\u0004\u001a\u0015\u0010Q\u001a\u00020>*\u00020>2\u0006\u0010Q\u001a\u00020SH\u0087\u0004\u001a\u001f\u0010T\u001a\u00020%*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a\u001f\u0010T\u001a\u00020%*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bW\u0010X\u001a\u001f\u0010T\u001a\u00020/*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bY\u0010Z\u001a\u001f\u0010T\u001a\u00020%*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, d2 = {"coerceAtLeast", "Lkotlin/UByte;", "minimumValue", "coerceAtLeast-Kr8caGY", "(BB)B", "Lkotlin/UInt;", "coerceAtLeast-J1ME1BU", "(II)I", "Lkotlin/ULong;", "coerceAtLeast-eb3DHEI", "(JJ)J", "Lkotlin/UShort;", "coerceAtLeast-5PvTz6A", "(SS)S", "coerceAtMost", "maximumValue", "coerceAtMost-Kr8caGY", "coerceAtMost-J1ME1BU", "coerceAtMost-eb3DHEI", "coerceAtMost-5PvTz6A", "coerceIn", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-WZ9TVnA", "(III)I", "range", "Lkotlin/ranges/ClosedRange;", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "coerceIn-VKSA0NQ", "(SSS)S", "contains", "", "Lkotlin/ranges/UIntRange;", "value", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "element", "contains-biwQdVI", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "Lkotlin/ranges/ULongRange;", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-GYNo2lE", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "downTo", "Lkotlin/ranges/UIntProgression;", TypedValues.Transition.S_TO, "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "first", "(Lkotlin/ranges/UIntProgression;)I", "(Lkotlin/ranges/ULongProgression;)J", "firstOrNull", "last", "lastOrNull", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;)J", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/ranges/URangesKt")
/* loaded from: classes4.dex */
class URangesKt___URangesKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-5PvTz6A  reason: not valid java name */
    public static final short m1325coerceAtLeast5PvTz6A(short s9, short s10) {
        return Intrinsics.compare(s9 & UShort.MAX_VALUE, 65535 & s10) < 0 ? s10 : s9;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-J1ME1BU  reason: not valid java name */
    public static final int m1326coerceAtLeastJ1ME1BU(int i4, int i10) {
        return UnsignedKt.uintCompare(i4, i10) < 0 ? i10 : i4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-Kr8caGY  reason: not valid java name */
    public static final byte m1327coerceAtLeastKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & 255, b11 & 255) < 0 ? b11 : b10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-eb3DHEI  reason: not valid java name */
    public static final long m1328coerceAtLeasteb3DHEI(long j4, long j10) {
        return UnsignedKt.ulongCompare(j4, j10) < 0 ? j10 : j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-5PvTz6A  reason: not valid java name */
    public static final short m1329coerceAtMost5PvTz6A(short s9, short s10) {
        return Intrinsics.compare(s9 & UShort.MAX_VALUE, 65535 & s10) > 0 ? s10 : s9;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-J1ME1BU  reason: not valid java name */
    public static final int m1330coerceAtMostJ1ME1BU(int i4, int i10) {
        return UnsignedKt.uintCompare(i4, i10) > 0 ? i10 : i4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-Kr8caGY  reason: not valid java name */
    public static final byte m1331coerceAtMostKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & 255, b11 & 255) > 0 ? b11 : b10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-eb3DHEI  reason: not valid java name */
    public static final long m1332coerceAtMosteb3DHEI(long j4, long j10) {
        return UnsignedKt.ulongCompare(j4, j10) > 0 ? j10 : j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-JPwROB0  reason: not valid java name */
    public static final long m1333coerceInJPwROB0(long j4, @g ClosedRange<ULong> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt___RangesKt.coerceIn(ULong.m236boximpl(j4), (ClosedFloatingPointRange<ULong>) range)).m293unboximpl();
        }
        if (!range.isEmpty()) {
            return UnsignedKt.ulongCompare(j4, range.getStart().m293unboximpl()) < 0 ? range.getStart().m293unboximpl() : UnsignedKt.ulongCompare(j4, range.getEndInclusive().m293unboximpl()) > 0 ? range.getEndInclusive().m293unboximpl() : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-VKSA0NQ  reason: not valid java name */
    public static final short m1334coerceInVKSA0NQ(short s9, short s10, short s11) {
        int i4 = s10 & UShort.MAX_VALUE;
        int i10 = s11 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i4, i10) <= 0) {
            int i11 = 65535 & s9;
            return Intrinsics.compare(i11, i4) < 0 ? s10 : Intrinsics.compare(i11, i10) > 0 ? s11 : s9;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UShort.m391toStringimpl(s11)) + " is less than minimum " + ((Object) UShort.m391toStringimpl(s10)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-WZ9TVnA  reason: not valid java name */
    public static final int m1335coerceInWZ9TVnA(int i4, int i10, int i11) {
        if (UnsignedKt.uintCompare(i10, i11) <= 0) {
            return UnsignedKt.uintCompare(i4, i10) < 0 ? i10 : UnsignedKt.uintCompare(i4, i11) > 0 ? i11 : i4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UInt.m209toStringimpl(i11)) + " is less than minimum " + ((Object) UInt.m209toStringimpl(i10)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-b33U2AM  reason: not valid java name */
    public static final byte m1336coerceInb33U2AM(byte b10, byte b11, byte b12) {
        int i4 = b11 & 255;
        int i10 = b12 & 255;
        if (Intrinsics.compare(i4, i10) <= 0) {
            int i11 = b10 & 255;
            return Intrinsics.compare(i11, i4) < 0 ? b11 : Intrinsics.compare(i11, i10) > 0 ? b12 : b10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UByte.m131toStringimpl(b12)) + " is less than minimum " + ((Object) UByte.m131toStringimpl(b11)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-sambcqE  reason: not valid java name */
    public static final long m1337coerceInsambcqE(long j4, long j10, long j11) {
        if (UnsignedKt.ulongCompare(j10, j11) <= 0) {
            return UnsignedKt.ulongCompare(j4, j10) < 0 ? j10 : UnsignedKt.ulongCompare(j4, j11) > 0 ? j11 : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) ULong.m287toStringimpl(j11)) + " is less than minimum " + ((Object) ULong.m287toStringimpl(j10)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-wuiCnnA  reason: not valid java name */
    public static final int m1338coerceInwuiCnnA(int i4, @g ClosedRange<UInt> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt___RangesKt.coerceIn(UInt.m158boximpl(i4), (ClosedFloatingPointRange<UInt>) range)).m215unboximpl();
        }
        if (!range.isEmpty()) {
            return UnsignedKt.uintCompare(i4, range.getStart().m215unboximpl()) < 0 ? range.getStart().m215unboximpl() : UnsignedKt.uintCompare(i4, range.getEndInclusive().m215unboximpl()) > 0 ? range.getEndInclusive().m215unboximpl() : i4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-68kG9v0  reason: not valid java name */
    public static final boolean m1339contains68kG9v0(@g UIntRange contains, byte b10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1315containsWZ4Q5Ns(UInt.m164constructorimpl(b10 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: contains-GYNo2lE  reason: not valid java name */
    private static final boolean m1340containsGYNo2lE(ULongRange contains, ULong uLong) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uLong != null && contains.m1322containsVKZWuLQ(uLong.m293unboximpl());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-Gab390E  reason: not valid java name */
    public static final boolean m1341containsGab390E(@g ULongRange contains, int i4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1322containsVKZWuLQ(ULong.m242constructorimpl(i4 & 4294967295L));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ULb-yJY  reason: not valid java name */
    public static final boolean m1342containsULbyJY(@g ULongRange contains, byte b10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1322containsVKZWuLQ(ULong.m242constructorimpl(b10 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ZsK3CEQ  reason: not valid java name */
    public static final boolean m1343containsZsK3CEQ(@g UIntRange contains, short s9) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1315containsWZ4Q5Ns(UInt.m164constructorimpl(s9 & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: contains-biwQdVI  reason: not valid java name */
    private static final boolean m1344containsbiwQdVI(UIntRange contains, UInt uInt) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uInt != null && contains.m1315containsWZ4Q5Ns(uInt.m215unboximpl());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-fz5IDCE  reason: not valid java name */
    public static final boolean m1345containsfz5IDCE(@g UIntRange contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ULong.m242constructorimpl(j4 >>> 32) == 0 && contains.m1315containsWZ4Q5Ns(UInt.m164constructorimpl((int) j4));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-uhHAxoY  reason: not valid java name */
    public static final boolean m1346containsuhHAxoY(@g ULongRange contains, short s9) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1322containsVKZWuLQ(ULong.m242constructorimpl(s9 & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: downTo-5PvTz6A  reason: not valid java name */
    public static final UIntProgression m1347downTo5PvTz6A(short s9, short s10) {
        return UIntProgression.Companion.m1313fromClosedRangeNkh28Cs(UInt.m164constructorimpl(s9 & UShort.MAX_VALUE), UInt.m164constructorimpl(s10 & UShort.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: downTo-J1ME1BU  reason: not valid java name */
    public static final UIntProgression m1348downToJ1ME1BU(int i4, int i10) {
        return UIntProgression.Companion.m1313fromClosedRangeNkh28Cs(i4, i10, -1);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: downTo-Kr8caGY  reason: not valid java name */
    public static final UIntProgression m1349downToKr8caGY(byte b10, byte b11) {
        return UIntProgression.Companion.m1313fromClosedRangeNkh28Cs(UInt.m164constructorimpl(b10 & 255), UInt.m164constructorimpl(b11 & 255), -1);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: downTo-eb3DHEI  reason: not valid java name */
    public static final ULongProgression m1350downToeb3DHEI(long j4, long j10) {
        return ULongProgression.Companion.m1320fromClosedRange7ftBX0g(j4, j10, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final int first(@g UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (!uIntProgression.isEmpty()) {
            return uIntProgression.m1311getFirstpVg5ArA();
        }
        throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final UInt firstOrNull(@g UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m158boximpl(uIntProgression.m1311getFirstpVg5ArA());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(@g UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (!uIntProgression.isEmpty()) {
            return uIntProgression.m1312getLastpVg5ArA();
        }
        throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final UInt lastOrNull(@g UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m158boximpl(uIntProgression.m1312getLastpVg5ArA());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final int random(UIntRange uIntRange) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        return random(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final UInt randomOrNull(UIntRange uIntRange) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        return randomOrNull(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UIntProgression reversed(@g UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        return UIntProgression.Companion.m1313fromClosedRangeNkh28Cs(uIntProgression.m1312getLastpVg5ArA(), uIntProgression.m1311getFirstpVg5ArA(), -uIntProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UIntProgression step(@g UIntProgression uIntProgression, int i4) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(i4 > 0, Integer.valueOf(i4));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int m1311getFirstpVg5ArA = uIntProgression.m1311getFirstpVg5ArA();
        int m1312getLastpVg5ArA = uIntProgression.m1312getLastpVg5ArA();
        if (uIntProgression.getStep() <= 0) {
            i4 = -i4;
        }
        return companion.m1313fromClosedRangeNkh28Cs(m1311getFirstpVg5ArA, m1312getLastpVg5ArA, i4);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: until-5PvTz6A  reason: not valid java name */
    public static final UIntRange m1351until5PvTz6A(short s9, short s10) {
        int i4 = s10 & UShort.MAX_VALUE;
        return Intrinsics.compare(i4, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m164constructorimpl(s9 & UShort.MAX_VALUE), UInt.m164constructorimpl(UInt.m164constructorimpl(i4) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: until-J1ME1BU  reason: not valid java name */
    public static final UIntRange m1352untilJ1ME1BU(int i4, int i10) {
        return UnsignedKt.uintCompare(i10, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(i4, UInt.m164constructorimpl(i10 - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: until-Kr8caGY  reason: not valid java name */
    public static final UIntRange m1353untilKr8caGY(byte b10, byte b11) {
        int i4 = b11 & 255;
        return Intrinsics.compare(i4, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m164constructorimpl(b10 & 255), UInt.m164constructorimpl(UInt.m164constructorimpl(i4) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: until-eb3DHEI  reason: not valid java name */
    public static final ULongRange m1354untileb3DHEI(long j4, long j10) {
        return UnsignedKt.ulongCompare(j10, 0L) <= 0 ? ULongRange.Companion.getEMPTY() : new ULongRange(j4, ULong.m242constructorimpl(j10 - ULong.m242constructorimpl(1 & 4294967295L)), null);
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final ULong firstOrNull(@g ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m236boximpl(uLongProgression.m1318getFirstsVKNKU());
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final ULong lastOrNull(@g ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m236boximpl(uLongProgression.m1319getLastsVKNKU());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final long random(ULongRange uLongRange) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        return random(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final ULong randomOrNull(ULongRange uLongRange) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        return randomOrNull(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final ULongProgression reversed(@g ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        return ULongProgression.Companion.m1320fromClosedRange7ftBX0g(uLongProgression.m1319getLastsVKNKU(), uLongProgression.m1318getFirstsVKNKU(), -uLongProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int random(@g UIntRange uIntRange, @g Random random) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextUInt(random, uIntRange);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    public static final UInt randomOrNull(@g UIntRange uIntRange, @g Random random) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (uIntRange.isEmpty()) {
            return null;
        }
        return UInt.m158boximpl(URandomKt.nextUInt(random, uIntRange));
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final ULongProgression step(@g ULongProgression uLongProgression, long j4) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(j4 > 0, Long.valueOf(j4));
        ULongProgression.Companion companion = ULongProgression.Companion;
        long m1318getFirstsVKNKU = uLongProgression.m1318getFirstsVKNKU();
        long m1319getLastsVKNKU = uLongProgression.m1319getLastsVKNKU();
        if (uLongProgression.getStep() <= 0) {
            j4 = -j4;
        }
        return companion.m1320fromClosedRange7ftBX0g(m1318getFirstsVKNKU, m1319getLastsVKNKU, j4);
    }

    @SinceKotlin(version = "1.7")
    public static final long first(@g ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (!uLongProgression.isEmpty()) {
            return uLongProgression.m1318getFirstsVKNKU();
        }
        throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    public static final long last(@g ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (!uLongProgression.isEmpty()) {
            return uLongProgression.m1319getLastsVKNKU();
        }
        throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long random(@g ULongRange uLongRange, @g Random random) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextULong(random, uLongRange);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    public static final ULong randomOrNull(@g ULongRange uLongRange, @g Random random) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (uLongRange.isEmpty()) {
            return null;
        }
        return ULong.m236boximpl(URandomKt.nextULong(random, uLongRange));
    }
}
