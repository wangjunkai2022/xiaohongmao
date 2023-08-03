package y2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@d0
/* loaded from: classes2.dex */
public final class b {
    private b() {
    }

    @NonNull
    @u2.a
    public static <T> T[] a(@NonNull T[]... tArr) {
        if (tArr.length != 0) {
            int i4 = 0;
            for (T[] tArr2 : tArr) {
                i4 += tArr2.length;
            }
            T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i4);
            int length = tArr[0].length;
            for (int i10 = 1; i10 < tArr.length; i10++) {
                T[] tArr4 = tArr[i10];
                int length2 = tArr4.length;
                System.arraycopy(tArr4, 0, tArr3, length, length2);
                length += length2;
            }
            return tArr3;
        }
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
    }

    @NonNull
    @u2.a
    public static byte[] b(@NonNull byte[]... bArr) {
        if (bArr.length != 0) {
            int i4 = 0;
            for (byte[] bArr2 : bArr) {
                i4 += bArr2.length;
            }
            byte[] copyOf = Arrays.copyOf(bArr[0], i4);
            int length = bArr[0].length;
            for (int i10 = 1; i10 < bArr.length; i10++) {
                byte[] bArr3 = bArr[i10];
                int length2 = bArr3.length;
                System.arraycopy(bArr3, 0, copyOf, length, length2);
                length += length2;
            }
            return copyOf;
        }
        return new byte[0];
    }

    @u2.a
    public static boolean c(@NonNull int[] iArr, int i4) {
        if (iArr == null) {
            return false;
        }
        for (int i10 : iArr) {
            if (i10 == i4) {
                return true;
            }
        }
        return false;
    }

    @u2.a
    public static <T> boolean d(@NonNull T[] tArr, @NonNull T t9) {
        int length = tArr != null ? tArr.length : 0;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            } else if (!com.google.android.gms.common.internal.s.b(tArr[i4], t9)) {
                i4++;
            } else if (i4 >= 0) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    @u2.a
    public static <T> ArrayList<T> e() {
        return new ArrayList<>();
    }

    @Nullable
    @u2.a
    public static <T> T[] f(@NonNull T[] tArr, @NonNull T... tArr2) {
        int length;
        int i4;
        if (tArr == null) {
            return null;
        }
        if (tArr2 != null && (length = tArr2.length) != 0) {
            T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr2.getClass().getComponentType(), tArr.length));
            if (length == 1) {
                i4 = 0;
                for (T t9 : tArr) {
                    if (!com.google.android.gms.common.internal.s.b(tArr2[0], t9)) {
                        tArr3[i4] = t9;
                        i4++;
                    }
                }
            } else {
                int i10 = 0;
                for (T t10 : tArr) {
                    if (!d(tArr2, t10)) {
                        tArr3[i10] = t10;
                        i10++;
                    }
                }
                i4 = i10;
            }
            if (tArr3 == null) {
                return null;
            }
            return i4 == tArr3.length ? tArr3 : (T[]) Arrays.copyOf(tArr3, i4);
        }
        return (T[]) Arrays.copyOf(tArr, tArr.length);
    }

    @NonNull
    @u2.a
    public static <T> ArrayList<T> g(@NonNull T[] tArr) {
        ArrayList<T> arrayList = new ArrayList<>(tArr.length);
        for (T t9 : tArr) {
            arrayList.add(t9);
        }
        return arrayList;
    }

    @NonNull
    @u2.a
    public static int[] h(@NonNull Collection<Integer> collection) {
        int i4 = 0;
        if (collection == null || collection.size() == 0) {
            return new int[0];
        }
        int[] iArr = new int[collection.size()];
        for (Integer num : collection) {
            iArr[i4] = num.intValue();
            i4++;
        }
        return iArr;
    }

    @Nullable
    @u2.a
    public static Integer[] i(@NonNull int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i4 = 0; i4 < length; i4++) {
            numArr[i4] = Integer.valueOf(iArr[i4]);
        }
        return numArr;
    }

    @u2.a
    public static void j(@NonNull StringBuilder sb, @NonNull double[] dArr) {
        int length = dArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(dArr[i4]));
        }
    }

    @u2.a
    public static void k(@NonNull StringBuilder sb, @NonNull float[] fArr) {
        int length = fArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(fArr[i4]));
        }
    }

    @u2.a
    public static void l(@NonNull StringBuilder sb, @NonNull int[] iArr) {
        int length = iArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(iArr[i4]));
        }
    }

    @u2.a
    public static void m(@NonNull StringBuilder sb, @NonNull long[] jArr) {
        int length = jArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(jArr[i4]));
        }
    }

    @u2.a
    public static <T> void n(@NonNull StringBuilder sb, @NonNull T[] tArr) {
        int length = tArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append(tArr[i4]);
        }
    }

    @u2.a
    public static void o(@NonNull StringBuilder sb, @NonNull boolean[] zArr) {
        int length = zArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(zArr[i4]));
        }
    }

    @u2.a
    public static void p(@NonNull StringBuilder sb, @NonNull String[] strArr) {
        int length = strArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(strArr[i4]);
            sb.append("\"");
        }
    }
}
