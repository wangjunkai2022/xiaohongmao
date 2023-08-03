package org.bouncycastle.pqc.math.linearalgebra;

/* loaded from: classes5.dex */
public final class IntUtils {
    private IntUtils() {
    }

    public static int[] clone(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static boolean equals(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        boolean z9 = true;
        for (int length = iArr.length - 1; length >= 0; length--) {
            z9 &= iArr[length] == iArr2[length];
        }
        return z9;
    }

    public static void fill(int[] iArr, int i4) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = i4;
        }
    }

    private static int partition(int[] iArr, int i4, int i10, int i11) {
        int i12 = iArr[i11];
        iArr[i11] = iArr[i10];
        iArr[i10] = i12;
        int i13 = i4;
        while (i4 < i10) {
            if (iArr[i4] <= i12) {
                int i14 = iArr[i13];
                iArr[i13] = iArr[i4];
                iArr[i4] = i14;
                i13++;
            }
            i4++;
        }
        int i15 = iArr[i13];
        iArr[i13] = iArr[i10];
        iArr[i10] = i15;
        return i13;
    }

    public static void quicksort(int[] iArr) {
        quicksort(iArr, 0, iArr.length - 1);
    }

    public static void quicksort(int[] iArr, int i4, int i10) {
        if (i10 > i4) {
            int partition = partition(iArr, i4, i10, i10);
            quicksort(iArr, i4, partition - 1);
            quicksort(iArr, partition + 1, i10);
        }
    }

    public static int[] subArray(int[] iArr, int i4, int i10) {
        int i11 = i10 - i4;
        int[] iArr2 = new int[i11];
        System.arraycopy(iArr, i4, iArr2, 0, i11);
        return iArr2;
    }

    public static String toHexString(int[] iArr) {
        return ByteUtils.toHexString(BigEndianConversions.toByteArray(iArr));
    }

    public static String toString(int[] iArr) {
        String str = "";
        for (int i4 = 0; i4 < iArr.length; i4++) {
            str = str + iArr[i4] + " ";
        }
        return str;
    }
}
