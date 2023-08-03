package kotlin.text;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UStrings.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001a\u001c\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u0014\u001a\u00020\u0007*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0015\u001a\u001c\u0010\u0014\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u0018\u001a\u00020\n*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u0018\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u001c\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001e\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUByteOrNull", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toUIntOrNull", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toULongOrNull", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUShortOrNull", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "UStringsKt")
/* loaded from: classes4.dex */
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: toString-JSWoG40  reason: not valid java name */
    public static final String m1399toStringJSWoG40(long j4, int i4) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i4);
        return UnsignedKt.ulongToString(j4, checkRadix);
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: toString-LxnNnR4  reason: not valid java name */
    public static final String m1400toStringLxnNnR4(byte b10, int i4) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i4);
        String num = Integer.toString(b10 & 255, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: toString-V7xB4Y4  reason: not valid java name */
    public static final String m1401toStringV7xB4Y4(int i4, int i10) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i10);
        String l10 = Long.toString(i4 & 4294967295L, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l10, "toString(this, checkRadix(radix))");
        return l10;
    }

    @SinceKotlin(version = "1.5")
    @g
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: toString-olVBNx4  reason: not valid java name */
    public static final String m1402toStringolVBNx4(short s9, int i4) {
        int checkRadix;
        int i10 = s9 & UShort.MAX_VALUE;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i4);
        String num = Integer.toString(i10, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.m137unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UByte toUByteOrNull(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.m215unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UInt toUIntOrNull(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.m293unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final ULong toULongOrNull(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.m397unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UShort toUShortOrNull(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str, i4);
        if (uByteOrNull != null) {
            return uByteOrNull.m137unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UByte toUByteOrNull(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i4);
        if (uIntOrNull != null) {
            int m215unboximpl = uIntOrNull.m215unboximpl();
            if (UnsignedKt.uintCompare(m215unboximpl, UInt.m164constructorimpl(255)) > 0) {
                return null;
            }
            return UByte.m82boximpl(UByte.m88constructorimpl((byte) m215unboximpl));
        }
        return null;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i4);
        if (uIntOrNull != null) {
            return uIntOrNull.m215unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UInt toUIntOrNull(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i4);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i10 = 0;
        char charAt = str.charAt(0);
        int i11 = 1;
        if (Intrinsics.compare((int) charAt, 48) >= 0) {
            i11 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int m164constructorimpl = UInt.m164constructorimpl(i4);
        int i12 = 119304647;
        while (i11 < length) {
            int digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i11), i4);
            if (digitOf < 0) {
                return null;
            }
            if (UnsignedKt.uintCompare(i10, i12) > 0) {
                if (i12 == 119304647) {
                    i12 = UnsignedKt.m417uintDivideJ1ME1BU(-1, m164constructorimpl);
                    if (UnsignedKt.uintCompare(i10, i12) > 0) {
                    }
                }
                return null;
            }
            int m164constructorimpl2 = UInt.m164constructorimpl(i10 * m164constructorimpl);
            int m164constructorimpl3 = UInt.m164constructorimpl(UInt.m164constructorimpl(digitOf) + m164constructorimpl2);
            if (UnsignedKt.uintCompare(m164constructorimpl3, m164constructorimpl2) < 0) {
                return null;
            }
            i11++;
            i10 = m164constructorimpl3;
        }
        return UInt.m158boximpl(i10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str, i4);
        if (uLongOrNull != null) {
            return uLongOrNull.m293unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final ULong toULongOrNull(@g String str, int i4) {
        int digitOf;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i4);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        long j4 = -1;
        int i10 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i10 = 1;
        }
        long m242constructorimpl = ULong.m242constructorimpl(i4);
        long j10 = 0;
        long j11 = 512409557603043100L;
        while (i10 < length) {
            if (CharsKt__CharJVMKt.digitOf(str.charAt(i10), i4) < 0) {
                return null;
            }
            if (UnsignedKt.ulongCompare(j10, j11) > 0) {
                if (j11 == 512409557603043100L) {
                    j11 = UnsignedKt.m419ulongDivideeb3DHEI(j4, m242constructorimpl);
                    if (UnsignedKt.ulongCompare(j10, j11) > 0) {
                    }
                }
                return null;
            }
            long m242constructorimpl2 = ULong.m242constructorimpl(j10 * m242constructorimpl);
            long m242constructorimpl3 = ULong.m242constructorimpl(ULong.m242constructorimpl(UInt.m164constructorimpl(digitOf) & 4294967295L) + m242constructorimpl2);
            if (UnsignedKt.ulongCompare(m242constructorimpl3, m242constructorimpl2) < 0) {
                return null;
            }
            i10++;
            j10 = m242constructorimpl3;
            j4 = -1;
        }
        return ULong.m236boximpl(j10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str, i4);
        if (uShortOrNull != null) {
            return uShortOrNull.m397unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @h
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final UShort toUShortOrNull(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i4);
        if (uIntOrNull != null) {
            int m215unboximpl = uIntOrNull.m215unboximpl();
            if (UnsignedKt.uintCompare(m215unboximpl, UInt.m164constructorimpl(65535)) > 0) {
                return null;
            }
            return UShort.m342boximpl(UShort.m348constructorimpl((short) m215unboximpl));
        }
        return null;
    }
}
