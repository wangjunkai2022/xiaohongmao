package kotlin.collections;

import com.google.android.exoplayer2.text.ttml.d;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: UArraySorting.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0014\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0016\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0018\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", d.f25720l0, d.f25723n0, "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* renamed from: partition--nroSd4  reason: not valid java name */
    private static final int m521partitionnroSd4(long[] jArr, int i4, int i10) {
        long m301getsVKNKU = ULongArray.m301getsVKNKU(jArr, (i4 + i10) / 2);
        while (i4 <= i10) {
            while (UnsignedKt.ulongCompare(ULongArray.m301getsVKNKU(jArr, i4), m301getsVKNKU) < 0) {
                i4++;
            }
            while (UnsignedKt.ulongCompare(ULongArray.m301getsVKNKU(jArr, i10), m301getsVKNKU) > 0) {
                i10--;
            }
            if (i4 <= i10) {
                long m301getsVKNKU2 = ULongArray.m301getsVKNKU(jArr, i4);
                ULongArray.m306setk8EXiF4(jArr, i4, ULongArray.m301getsVKNKU(jArr, i10));
                ULongArray.m306setk8EXiF4(jArr, i10, m301getsVKNKU2);
                i4++;
                i10--;
            }
        }
        return i4;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-4UcCI2c  reason: not valid java name */
    private static final int m522partition4UcCI2c(byte[] bArr, int i4, int i10) {
        int i11;
        byte m145getw2LRezQ = UByteArray.m145getw2LRezQ(bArr, (i4 + i10) / 2);
        while (i4 <= i10) {
            while (true) {
                i11 = m145getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m145getw2LRezQ(bArr, i4) & 255, i11) >= 0) {
                    break;
                }
                i4++;
            }
            while (Intrinsics.compare(UByteArray.m145getw2LRezQ(bArr, i10) & 255, i11) > 0) {
                i10--;
            }
            if (i4 <= i10) {
                byte m145getw2LRezQ2 = UByteArray.m145getw2LRezQ(bArr, i4);
                UByteArray.m150setVurrAj0(bArr, i4, UByteArray.m145getw2LRezQ(bArr, i10));
                UByteArray.m150setVurrAj0(bArr, i10, m145getw2LRezQ2);
                i4++;
                i10--;
            }
        }
        return i4;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-Aa5vz7o  reason: not valid java name */
    private static final int m523partitionAa5vz7o(short[] sArr, int i4, int i10) {
        int i11;
        short m405getMh2AYeg = UShortArray.m405getMh2AYeg(sArr, (i4 + i10) / 2);
        while (i4 <= i10) {
            while (true) {
                int m405getMh2AYeg2 = UShortArray.m405getMh2AYeg(sArr, i4) & UShort.MAX_VALUE;
                i11 = m405getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m405getMh2AYeg2, i11) >= 0) {
                    break;
                }
                i4++;
            }
            while (Intrinsics.compare(UShortArray.m405getMh2AYeg(sArr, i10) & UShort.MAX_VALUE, i11) > 0) {
                i10--;
            }
            if (i4 <= i10) {
                short m405getMh2AYeg3 = UShortArray.m405getMh2AYeg(sArr, i4);
                UShortArray.m410set01HTLdE(sArr, i4, UShortArray.m405getMh2AYeg(sArr, i10));
                UShortArray.m410set01HTLdE(sArr, i10, m405getMh2AYeg3);
                i4++;
                i10--;
            }
        }
        return i4;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-oBK06Vg  reason: not valid java name */
    private static final int m524partitionoBK06Vg(int[] iArr, int i4, int i10) {
        int m223getpVg5ArA = UIntArray.m223getpVg5ArA(iArr, (i4 + i10) / 2);
        while (i4 <= i10) {
            while (UnsignedKt.uintCompare(UIntArray.m223getpVg5ArA(iArr, i4), m223getpVg5ArA) < 0) {
                i4++;
            }
            while (UnsignedKt.uintCompare(UIntArray.m223getpVg5ArA(iArr, i10), m223getpVg5ArA) > 0) {
                i10--;
            }
            if (i4 <= i10) {
                int m223getpVg5ArA2 = UIntArray.m223getpVg5ArA(iArr, i4);
                UIntArray.m228setVXSXFK8(iArr, i4, UIntArray.m223getpVg5ArA(iArr, i10));
                UIntArray.m228setVXSXFK8(iArr, i10, m223getpVg5ArA2);
                i4++;
                i10--;
            }
        }
        return i4;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort--nroSd4  reason: not valid java name */
    private static final void m525quickSortnroSd4(long[] jArr, int i4, int i10) {
        int m521partitionnroSd4 = m521partitionnroSd4(jArr, i4, i10);
        int i11 = m521partitionnroSd4 - 1;
        if (i4 < i11) {
            m525quickSortnroSd4(jArr, i4, i11);
        }
        if (m521partitionnroSd4 < i10) {
            m525quickSortnroSd4(jArr, m521partitionnroSd4, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-4UcCI2c  reason: not valid java name */
    private static final void m526quickSort4UcCI2c(byte[] bArr, int i4, int i10) {
        int m522partition4UcCI2c = m522partition4UcCI2c(bArr, i4, i10);
        int i11 = m522partition4UcCI2c - 1;
        if (i4 < i11) {
            m526quickSort4UcCI2c(bArr, i4, i11);
        }
        if (m522partition4UcCI2c < i10) {
            m526quickSort4UcCI2c(bArr, m522partition4UcCI2c, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-Aa5vz7o  reason: not valid java name */
    private static final void m527quickSortAa5vz7o(short[] sArr, int i4, int i10) {
        int m523partitionAa5vz7o = m523partitionAa5vz7o(sArr, i4, i10);
        int i11 = m523partitionAa5vz7o - 1;
        if (i4 < i11) {
            m527quickSortAa5vz7o(sArr, i4, i11);
        }
        if (m523partitionAa5vz7o < i10) {
            m527quickSortAa5vz7o(sArr, m523partitionAa5vz7o, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-oBK06Vg  reason: not valid java name */
    private static final void m528quickSortoBK06Vg(int[] iArr, int i4, int i10) {
        int m524partitionoBK06Vg = m524partitionoBK06Vg(iArr, i4, i10);
        int i11 = m524partitionoBK06Vg - 1;
        if (i4 < i11) {
            m528quickSortoBK06Vg(iArr, i4, i11);
        }
        if (m524partitionoBK06Vg < i10) {
            m528quickSortoBK06Vg(iArr, m524partitionoBK06Vg, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray--nroSd4  reason: not valid java name */
    public static final void m529sortArraynroSd4(@g long[] array, int i4, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m525quickSortnroSd4(array, i4, i10 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-4UcCI2c  reason: not valid java name */
    public static final void m530sortArray4UcCI2c(@g byte[] array, int i4, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m526quickSort4UcCI2c(array, i4, i10 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-Aa5vz7o  reason: not valid java name */
    public static final void m531sortArrayAa5vz7o(@g short[] array, int i4, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m527quickSortAa5vz7o(array, i4, i10 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-oBK06Vg  reason: not valid java name */
    public static final void m532sortArrayoBK06Vg(@g int[] array, int i4, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m528quickSortoBK06Vg(array, i4, i10 - 1);
    }
}
