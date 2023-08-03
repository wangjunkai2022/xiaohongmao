package androidx.core.content.res;

import java.lang.reflect.Array;

/* loaded from: classes.dex */
final class GrowingArrayUtils {
    private GrowingArrayUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object[], java.lang.Object] */
    public static <T> T[] append(T[] tArr, int i4, T t9) {
        if (i4 + 1 > tArr.length) {
            ?? r02 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i4));
            System.arraycopy(tArr, 0, r02, 0, i4);
            tArr = r02;
        }
        tArr[i4] = t9;
        return tArr;
    }

    public static int growSize(int i4) {
        if (i4 <= 4) {
            return 8;
        }
        return i4 * 2;
    }

    public static <T> T[] insert(T[] tArr, int i4, int i10, T t9) {
        if (i4 + 1 <= tArr.length) {
            System.arraycopy(tArr, i10, tArr, i10 + 1, i4 - i10);
            tArr[i10] = t9;
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i4)));
        System.arraycopy(tArr, 0, tArr2, 0, i10);
        tArr2[i10] = t9;
        System.arraycopy(tArr, i10, tArr2, i10 + 1, tArr.length - i10);
        return tArr2;
    }

    public static int[] append(int[] iArr, int i4, int i10) {
        if (i4 + 1 > iArr.length) {
            int[] iArr2 = new int[growSize(i4)];
            System.arraycopy(iArr, 0, iArr2, 0, i4);
            iArr = iArr2;
        }
        iArr[i4] = i10;
        return iArr;
    }

    public static int[] insert(int[] iArr, int i4, int i10, int i11) {
        if (i4 + 1 <= iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i4 - i10);
            iArr[i10] = i11;
            return iArr;
        }
        int[] iArr2 = new int[growSize(i4)];
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        iArr2[i10] = i11;
        System.arraycopy(iArr, i10, iArr2, i10 + 1, iArr.length - i10);
        return iArr2;
    }

    public static long[] append(long[] jArr, int i4, long j4) {
        if (i4 + 1 > jArr.length) {
            long[] jArr2 = new long[growSize(i4)];
            System.arraycopy(jArr, 0, jArr2, 0, i4);
            jArr = jArr2;
        }
        jArr[i4] = j4;
        return jArr;
    }

    public static boolean[] append(boolean[] zArr, int i4, boolean z9) {
        if (i4 + 1 > zArr.length) {
            boolean[] zArr2 = new boolean[growSize(i4)];
            System.arraycopy(zArr, 0, zArr2, 0, i4);
            zArr = zArr2;
        }
        zArr[i4] = z9;
        return zArr;
    }

    public static long[] insert(long[] jArr, int i4, int i10, long j4) {
        if (i4 + 1 <= jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i4 - i10);
            jArr[i10] = j4;
            return jArr;
        }
        long[] jArr2 = new long[growSize(i4)];
        System.arraycopy(jArr, 0, jArr2, 0, i10);
        jArr2[i10] = j4;
        System.arraycopy(jArr, i10, jArr2, i10 + 1, jArr.length - i10);
        return jArr2;
    }

    public static boolean[] insert(boolean[] zArr, int i4, int i10, boolean z9) {
        if (i4 + 1 <= zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i4 - i10);
            zArr[i10] = z9;
            return zArr;
        }
        boolean[] zArr2 = new boolean[growSize(i4)];
        System.arraycopy(zArr, 0, zArr2, 0, i10);
        zArr2[i10] = z9;
        System.arraycopy(zArr, i10, zArr2, i10 + 1, zArr.length - i10);
        return zArr2;
    }
}
