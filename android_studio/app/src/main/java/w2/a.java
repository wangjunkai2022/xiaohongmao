package w2;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class a {
    private a() {
    }

    public static void A(@NonNull Parcel parcel, int i4, @NonNull SparseArray<Float> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeFloat(sparseArray.valueAt(i10).floatValue());
        }
        g0(parcel, f02);
    }

    public static void B(@NonNull Parcel parcel, int i4, @NonNull IBinder iBinder, boolean z9) {
        if (iBinder == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeStrongBinder(iBinder);
        g0(parcel, f02);
    }

    public static void C(@NonNull Parcel parcel, int i4, @NonNull IBinder[] iBinderArr, boolean z9) {
        if (iBinderArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeBinderArray(iBinderArr);
        g0(parcel, f02);
    }

    public static void D(@NonNull Parcel parcel, int i4, @NonNull List<IBinder> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeBinderList(list);
        g0(parcel, f02);
    }

    public static void E(@NonNull Parcel parcel, int i4, @NonNull SparseArray<IBinder> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeStrongBinder(sparseArray.valueAt(i10));
        }
        g0(parcel, f02);
    }

    public static void F(@NonNull Parcel parcel, int i4, int i10) {
        h0(parcel, i4, 4);
        parcel.writeInt(i10);
    }

    public static void G(@NonNull Parcel parcel, int i4, @NonNull int[] iArr, boolean z9) {
        if (iArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeIntArray(iArr);
        g0(parcel, f02);
    }

    public static void H(@NonNull Parcel parcel, int i4, @NonNull List<Integer> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(list.get(i10).intValue());
        }
        g0(parcel, f02);
    }

    public static void I(@NonNull Parcel parcel, int i4, @NonNull Integer num, boolean z9) {
        if (num != null) {
            h0(parcel, i4, 4);
            parcel.writeInt(num.intValue());
        } else if (z9) {
            h0(parcel, i4, 0);
        }
    }

    public static void J(@NonNull Parcel parcel, int i4, @NonNull List list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeList(list);
        g0(parcel, f02);
    }

    public static void K(@NonNull Parcel parcel, int i4, long j4) {
        h0(parcel, i4, 8);
        parcel.writeLong(j4);
    }

    public static void L(@NonNull Parcel parcel, int i4, @NonNull long[] jArr, boolean z9) {
        if (jArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeLongArray(jArr);
        g0(parcel, f02);
    }

    public static void M(@NonNull Parcel parcel, int i4, @NonNull List<Long> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeLong(list.get(i10).longValue());
        }
        g0(parcel, f02);
    }

    public static void N(@NonNull Parcel parcel, int i4, @NonNull Long l10, boolean z9) {
        if (l10 != null) {
            h0(parcel, i4, 8);
            parcel.writeLong(l10.longValue());
        } else if (z9) {
            h0(parcel, i4, 0);
        }
    }

    public static void O(@NonNull Parcel parcel, int i4, @NonNull Parcel parcel2, boolean z9) {
        if (parcel2 == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        g0(parcel, f02);
    }

    public static void P(@NonNull Parcel parcel, int i4, @NonNull Parcel[] parcelArr, boolean z9) {
        if (parcelArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeInt(parcelArr.length);
        for (Parcel parcel2 : parcelArr) {
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        g0(parcel, f02);
    }

    public static void Q(@NonNull Parcel parcel, int i4, @NonNull List<Parcel> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            Parcel parcel2 = list.get(i10);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        g0(parcel, f02);
    }

    public static void R(@NonNull Parcel parcel, int i4, @NonNull SparseArray<Parcel> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            Parcel valueAt = sparseArray.valueAt(i10);
            if (valueAt != null) {
                parcel.writeInt(valueAt.dataSize());
                parcel.appendFrom(valueAt, 0, valueAt.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        g0(parcel, f02);
    }

    public static void S(@NonNull Parcel parcel, int i4, @NonNull Parcelable parcelable, int i10, boolean z9) {
        if (parcelable == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcelable.writeToParcel(parcel, i10);
        g0(parcel, f02);
    }

    public static void T(@NonNull Parcel parcel, int i4, @NonNull PendingIntent pendingIntent, boolean z9) {
        if (pendingIntent == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        PendingIntent.writePendingIntentOrNullToParcel(pendingIntent, parcel);
        g0(parcel, f02);
    }

    public static void U(@NonNull Parcel parcel, int i4, short s9) {
        h0(parcel, i4, 4);
        parcel.writeInt(s9);
    }

    public static void V(@NonNull Parcel parcel, int i4, @NonNull SparseBooleanArray sparseBooleanArray, boolean z9) {
        if (sparseBooleanArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeSparseBooleanArray(sparseBooleanArray);
        g0(parcel, f02);
    }

    public static void W(@NonNull Parcel parcel, int i4, @NonNull SparseIntArray sparseIntArray, boolean z9) {
        if (sparseIntArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseIntArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseIntArray.keyAt(i10));
            parcel.writeInt(sparseIntArray.valueAt(i10));
        }
        g0(parcel, f02);
    }

    public static void X(@NonNull Parcel parcel, int i4, @NonNull SparseLongArray sparseLongArray, boolean z9) {
        if (sparseLongArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseLongArray.keyAt(i10));
            parcel.writeLong(sparseLongArray.valueAt(i10));
        }
        g0(parcel, f02);
    }

    public static void Y(@NonNull Parcel parcel, int i4, @NonNull String str, boolean z9) {
        if (str == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeString(str);
        g0(parcel, f02);
    }

    public static void Z(@NonNull Parcel parcel, int i4, @NonNull String[] strArr, boolean z9) {
        if (strArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeStringArray(strArr);
        g0(parcel, f02);
    }

    public static int a(@NonNull Parcel parcel) {
        return f0(parcel, 20293);
    }

    public static void a0(@NonNull Parcel parcel, int i4, @NonNull List<String> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeStringList(list);
        g0(parcel, f02);
    }

    public static void b(@NonNull Parcel parcel, int i4) {
        g0(parcel, i4);
    }

    public static void b0(@NonNull Parcel parcel, int i4, @NonNull SparseArray<String> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeString(sparseArray.valueAt(i10));
        }
        g0(parcel, f02);
    }

    public static void c(@NonNull Parcel parcel, int i4, @NonNull BigDecimal bigDecimal, boolean z9) {
        if (bigDecimal == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        g0(parcel, f02);
    }

    public static <T extends Parcelable> void c0(@NonNull Parcel parcel, int i4, @NonNull T[] tArr, int i10, boolean z9) {
        if (tArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeInt(tArr.length);
        for (T t9 : tArr) {
            if (t9 == null) {
                parcel.writeInt(0);
            } else {
                i0(parcel, t9, i10);
            }
        }
        g0(parcel, f02);
    }

    public static void d(@NonNull Parcel parcel, int i4, @NonNull BigDecimal[] bigDecimalArr, boolean z9) {
        if (bigDecimalArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            parcel.writeByteArray(bigDecimalArr[i10].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i10].scale());
        }
        g0(parcel, f02);
    }

    public static <T extends Parcelable> void d0(@NonNull Parcel parcel, int i4, @NonNull List<T> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            T t9 = list.get(i10);
            if (t9 == null) {
                parcel.writeInt(0);
            } else {
                i0(parcel, t9, 0);
            }
        }
        g0(parcel, f02);
    }

    public static void e(@NonNull Parcel parcel, int i4, @NonNull BigInteger bigInteger, boolean z9) {
        if (bigInteger == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeByteArray(bigInteger.toByteArray());
        g0(parcel, f02);
    }

    public static <T extends Parcelable> void e0(@NonNull Parcel parcel, int i4, @NonNull SparseArray<T> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            T valueAt = sparseArray.valueAt(i10);
            if (valueAt == null) {
                parcel.writeInt(0);
            } else {
                i0(parcel, valueAt, 0);
            }
        }
        g0(parcel, f02);
    }

    public static void f(@NonNull Parcel parcel, int i4, @NonNull BigInteger[] bigIntegerArr, boolean z9) {
        if (bigIntegerArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        g0(parcel, f02);
    }

    private static int f0(Parcel parcel, int i4) {
        parcel.writeInt(i4 | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void g(@NonNull Parcel parcel, int i4, boolean z9) {
        h0(parcel, i4, 4);
        parcel.writeInt(z9 ? 1 : 0);
    }

    private static void g0(Parcel parcel, int i4) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i4 - 4);
        parcel.writeInt(dataPosition - i4);
        parcel.setDataPosition(dataPosition);
    }

    public static void h(@NonNull Parcel parcel, int i4, @NonNull boolean[] zArr, boolean z9) {
        if (zArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeBooleanArray(zArr);
        g0(parcel, f02);
    }

    private static void h0(Parcel parcel, int i4, int i10) {
        parcel.writeInt(i4 | (i10 << 16));
    }

    public static void i(@NonNull Parcel parcel, int i4, @NonNull List<Boolean> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(list.get(i10).booleanValue() ? 1 : 0);
        }
        g0(parcel, f02);
    }

    private static <T extends Parcelable> void i0(Parcel parcel, T t9, int i4) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t9.writeToParcel(parcel, i4);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static void j(@NonNull Parcel parcel, int i4, @NonNull Boolean bool, boolean z9) {
        if (bool != null) {
            h0(parcel, i4, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z9) {
            h0(parcel, i4, 0);
        }
    }

    public static void k(@NonNull Parcel parcel, int i4, @NonNull Bundle bundle, boolean z9) {
        if (bundle == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeBundle(bundle);
        g0(parcel, f02);
    }

    public static void l(@NonNull Parcel parcel, int i4, byte b10) {
        h0(parcel, i4, 4);
        parcel.writeInt(b10);
    }

    public static void m(@NonNull Parcel parcel, int i4, @NonNull byte[] bArr, boolean z9) {
        if (bArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeByteArray(bArr);
        g0(parcel, f02);
    }

    public static void n(@NonNull Parcel parcel, int i4, @NonNull byte[][] bArr, boolean z9) {
        if (bArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        g0(parcel, f02);
    }

    public static void o(@NonNull Parcel parcel, int i4, @NonNull SparseArray<byte[]> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeByteArray(sparseArray.valueAt(i10));
        }
        g0(parcel, f02);
    }

    public static void p(@NonNull Parcel parcel, int i4, char c10) {
        h0(parcel, i4, 4);
        parcel.writeInt(c10);
    }

    public static void q(@NonNull Parcel parcel, int i4, @NonNull char[] cArr, boolean z9) {
        if (cArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeCharArray(cArr);
        g0(parcel, f02);
    }

    public static void r(@NonNull Parcel parcel, int i4, double d4) {
        h0(parcel, i4, 8);
        parcel.writeDouble(d4);
    }

    public static void s(@NonNull Parcel parcel, int i4, @NonNull double[] dArr, boolean z9) {
        if (dArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeDoubleArray(dArr);
        g0(parcel, f02);
    }

    public static void t(@NonNull Parcel parcel, int i4, @NonNull List<Double> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeDouble(list.get(i10).doubleValue());
        }
        g0(parcel, f02);
    }

    public static void u(@NonNull Parcel parcel, int i4, @NonNull Double d4, boolean z9) {
        if (d4 != null) {
            h0(parcel, i4, 8);
            parcel.writeDouble(d4.doubleValue());
        } else if (z9) {
            h0(parcel, i4, 0);
        }
    }

    public static void v(@NonNull Parcel parcel, int i4, @NonNull SparseArray<Double> sparseArray, boolean z9) {
        if (sparseArray == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeDouble(sparseArray.valueAt(i10).doubleValue());
        }
        g0(parcel, f02);
    }

    public static void w(@NonNull Parcel parcel, int i4, float f10) {
        h0(parcel, i4, 4);
        parcel.writeFloat(f10);
    }

    public static void x(@NonNull Parcel parcel, int i4, @NonNull float[] fArr, boolean z9) {
        if (fArr == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        parcel.writeFloatArray(fArr);
        g0(parcel, f02);
    }

    public static void y(@NonNull Parcel parcel, int i4, @NonNull List<Float> list, boolean z9) {
        if (list == null) {
            if (z9) {
                h0(parcel, i4, 0);
                return;
            }
            return;
        }
        int f02 = f0(parcel, i4);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeFloat(list.get(i10).floatValue());
        }
        g0(parcel, f02);
    }

    public static void z(@NonNull Parcel parcel, int i4, @NonNull Float f10, boolean z9) {
        if (f10 != null) {
            h0(parcel, i4, 4);
            parcel.writeFloat(f10.floatValue());
        } else if (z9) {
            h0(parcel, i4, 0);
        }
    }
}
