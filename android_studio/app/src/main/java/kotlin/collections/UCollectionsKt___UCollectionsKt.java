package kotlin.collections;

import java.util.Collection;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: _UCollections.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\n0\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0005\u001a\u001a\u0010\f\u001a\u00020\r*\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u001a\u0010\u0010\u001a\u00020\u0011*\b\u0012\u0004\u0012\u00020\u00010\u000eH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001a\u001a\u0010\u0013\u001a\u00020\u0014*\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0015\u001a\u001a\u0010\u0016\u001a\u00020\u0017*\b\u0012\u0004\u0012\u00020\n0\u000eH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"sum", "Lkotlin/UInt;", "", "Lkotlin/UByte;", "sumOfUByte", "(Ljava/lang/Iterable;)I", "sumOfUInt", "Lkotlin/ULong;", "sumOfULong", "(Ljava/lang/Iterable;)J", "Lkotlin/UShort;", "sumOfUShort", "toUByteArray", "Lkotlin/UByteArray;", "", "(Ljava/util/Collection;)[B", "toUIntArray", "Lkotlin/UIntArray;", "(Ljava/util/Collection;)[I", "toULongArray", "Lkotlin/ULongArray;", "(Ljava/util/Collection;)[J", "toUShortArray", "Lkotlin/UShortArray;", "(Ljava/util/Collection;)[S", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/collections/UCollectionsKt")
/* loaded from: classes4.dex */
class UCollectionsKt___UCollectionsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(@g Iterable<UByte> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        int i4 = 0;
        for (UByte uByte : iterable) {
            i4 = UInt.m164constructorimpl(i4 + UInt.m164constructorimpl(uByte.m137unboximpl() & 255));
        }
        return i4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(@g Iterable<UInt> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        int i4 = 0;
        for (UInt uInt : iterable) {
            i4 = UInt.m164constructorimpl(i4 + uInt.m215unboximpl());
        }
        return i4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(@g Iterable<ULong> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        long j4 = 0;
        for (ULong uLong : iterable) {
            j4 = ULong.m242constructorimpl(j4 + uLong.m293unboximpl());
        }
        return j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(@g Iterable<UShort> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        int i4 = 0;
        for (UShort uShort : iterable) {
            i4 = UInt.m164constructorimpl(i4 + UInt.m164constructorimpl(uShort.m397unboximpl() & UShort.MAX_VALUE));
        }
        return i4;
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    public static final byte[] toUByteArray(@g Collection<UByte> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        byte[] m139constructorimpl = UByteArray.m139constructorimpl(collection.size());
        int i4 = 0;
        for (UByte uByte : collection) {
            UByteArray.m150setVurrAj0(m139constructorimpl, i4, uByte.m137unboximpl());
            i4++;
        }
        return m139constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    public static final int[] toUIntArray(@g Collection<UInt> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        int[] m217constructorimpl = UIntArray.m217constructorimpl(collection.size());
        int i4 = 0;
        for (UInt uInt : collection) {
            UIntArray.m228setVXSXFK8(m217constructorimpl, i4, uInt.m215unboximpl());
            i4++;
        }
        return m217constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    public static final long[] toULongArray(@g Collection<ULong> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        long[] m295constructorimpl = ULongArray.m295constructorimpl(collection.size());
        int i4 = 0;
        for (ULong uLong : collection) {
            ULongArray.m306setk8EXiF4(m295constructorimpl, i4, uLong.m293unboximpl());
            i4++;
        }
        return m295constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @g
    @ExperimentalUnsignedTypes
    public static final short[] toUShortArray(@g Collection<UShort> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        short[] m399constructorimpl = UShortArray.m399constructorimpl(collection.size());
        int i4 = 0;
        for (UShort uShort : collection) {
            UShortArray.m410set01HTLdE(m399constructorimpl, i4, uShort.m397unboximpl());
            i4++;
        }
        return m399constructorimpl;
    }
}
