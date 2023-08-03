package com.google.android.gms.common.internal.safeparcel;

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
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class SafeParcelReader {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public ParseException(@androidx.annotation.NonNull java.lang.String r4, @androidx.annotation.NonNull android.os.Parcel r5) {
            /*
                r3 = this;
                int r0 = r5.dataPosition()
                int r5 = r5.dataSize()
                java.lang.String r1 = java.lang.String.valueOf(r4)
                int r1 = r1.length()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                int r1 = r1 + 41
                r2.<init>(r1)
                r2.append(r4)
                java.lang.String r4 = " Parcel: pos="
                r2.append(r4)
                r2.append(r0)
                java.lang.String r4 = " size="
                r2.append(r4)
                r2.append(r5)
                java.lang.String r4 = r2.toString()
                r3.<init>(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ParseException.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    private SafeParcelReader() {
    }

    @NonNull
    public static ArrayList<Parcel> A(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        ArrayList<Parcel> arrayList = new ArrayList<>();
        for (int i10 = 0; i10 < readInt; i10++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                arrayList.add(obtain);
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                arrayList.add(null);
            }
        }
        parcel.setDataPosition(dataPosition + g02);
        return arrayList;
    }

    @NonNull
    public static SparseArray<Parcel> B(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<Parcel> sparseArray = new SparseArray<>();
        for (int i10 = 0; i10 < readInt; i10++) {
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            if (readInt3 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt3);
                sparseArray.append(readInt2, obtain);
                parcel.setDataPosition(dataPosition2 + readInt3);
            } else {
                sparseArray.append(readInt2, null);
            }
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    @NonNull
    public static <T extends Parcelable> T C(@NonNull Parcel parcel, int i4, @NonNull Parcelable.Creator<T> creator) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + g02);
        return createFromParcel;
    }

    @NonNull
    public static SparseBooleanArray D(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        SparseBooleanArray readSparseBooleanArray = parcel.readSparseBooleanArray();
        parcel.setDataPosition(dataPosition + g02);
        return readSparseBooleanArray;
    }

    @NonNull
    public static SparseIntArray E(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        SparseIntArray sparseIntArray = new SparseIntArray();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseIntArray.append(parcel.readInt(), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseIntArray;
    }

    @NonNull
    public static SparseLongArray F(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        SparseLongArray sparseLongArray = new SparseLongArray();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseLongArray.append(parcel.readInt(), parcel.readLong());
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseLongArray;
    }

    @NonNull
    public static String G(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + g02);
        return readString;
    }

    @NonNull
    public static String[] H(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + g02);
        return createStringArray;
    }

    @NonNull
    public static ArrayList<String> I(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + g02);
        return createStringArrayList;
    }

    @NonNull
    public static SparseArray<String> J(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        SparseArray<String> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseArray.append(parcel.readInt(), parcel.readString());
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    @NonNull
    public static <T> T[] K(@NonNull Parcel parcel, int i4, @NonNull Parcelable.Creator<T> creator) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + g02);
        return tArr;
    }

    @NonNull
    public static <T> ArrayList<T> L(@NonNull Parcel parcel, int i4, @NonNull Parcelable.Creator<T> creator) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + g02);
        return createTypedArrayList;
    }

    @NonNull
    public static <T> SparseArray<T> M(@NonNull Parcel parcel, int i4, @NonNull Parcelable.Creator<T> creator) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<T> sparseArray = new SparseArray<>();
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseArray.append(parcel.readInt(), parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null);
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    public static void N(@NonNull Parcel parcel, int i4) {
        if (parcel.dataPosition() == i4) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i4);
        throw new ParseException(sb.toString(), parcel);
    }

    public static int O(int i4) {
        return (char) i4;
    }

    public static boolean P(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 4);
        return parcel.readInt() != 0;
    }

    @NonNull
    public static Boolean Q(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        if (g02 == 0) {
            return null;
        }
        j0(parcel, i4, g02, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static byte R(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 4);
        return (byte) parcel.readInt();
    }

    public static char S(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 4);
        return (char) parcel.readInt();
    }

    public static double T(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 8);
        return parcel.readDouble();
    }

    @NonNull
    public static Double U(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        if (g02 == 0) {
            return null;
        }
        j0(parcel, i4, g02, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float V(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 4);
        return parcel.readFloat();
    }

    @NonNull
    public static Float W(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        if (g02 == 0) {
            return null;
        }
        j0(parcel, i4, g02, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int X(@NonNull Parcel parcel) {
        return parcel.readInt();
    }

    @NonNull
    public static IBinder Y(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + g02);
        return readStrongBinder;
    }

    public static int Z(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 4);
        return parcel.readInt();
    }

    @NonNull
    public static BigDecimal a(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + g02);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    @NonNull
    public static Integer a0(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        if (g02 == 0) {
            return null;
        }
        j0(parcel, i4, g02, 4);
        return Integer.valueOf(parcel.readInt());
    }

    @NonNull
    public static BigDecimal[] b(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i10] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + g02);
        return bigDecimalArr;
    }

    public static void b0(@NonNull Parcel parcel, int i4, @NonNull List list, @NonNull ClassLoader classLoader) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return;
        }
        parcel.readList(list, classLoader);
        parcel.setDataPosition(dataPosition + g02);
    }

    @NonNull
    public static BigInteger c(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + g02);
        return new BigInteger(createByteArray);
    }

    public static long c0(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 8);
        return parcel.readLong();
    }

    @NonNull
    public static BigInteger[] d(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            bigIntegerArr[i10] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + g02);
        return bigIntegerArr;
    }

    @NonNull
    public static Long d0(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        if (g02 == 0) {
            return null;
        }
        j0(parcel, i4, g02, 8);
        return Long.valueOf(parcel.readLong());
    }

    @NonNull
    public static boolean[] e(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + g02);
        return createBooleanArray;
    }

    @NonNull
    public static PendingIntent e0(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        PendingIntent readPendingIntentOrNullFromParcel = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        parcel.setDataPosition(dataPosition + g02);
        return readPendingIntentOrNullFromParcel;
    }

    @NonNull
    public static ArrayList<Boolean> f(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<Boolean> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(Boolean.valueOf(parcel.readInt() != 0));
        }
        parcel.setDataPosition(dataPosition + g02);
        return arrayList;
    }

    public static short f0(@NonNull Parcel parcel, int i4) {
        k0(parcel, i4, 4);
        return (short) parcel.readInt();
    }

    @NonNull
    public static Bundle g(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + g02);
        return readBundle;
    }

    public static int g0(@NonNull Parcel parcel, int i4) {
        return (i4 & SupportMenu.CATEGORY_MASK) != -65536 ? (char) (i4 >> 16) : parcel.readInt();
    }

    @NonNull
    public static byte[] h(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + g02);
        return createByteArray;
    }

    public static void h0(@NonNull Parcel parcel, int i4) {
        parcel.setDataPosition(parcel.dataPosition() + g0(parcel, i4));
    }

    @NonNull
    public static byte[][] i(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        byte[][] bArr = new byte[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            bArr[i10] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + g02);
        return bArr;
    }

    public static int i0(@NonNull Parcel parcel) {
        int X = X(parcel);
        int g02 = g0(parcel, X);
        int dataPosition = parcel.dataPosition();
        if (O(X) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(X));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i4 = g02 + dataPosition;
        if (i4 < dataPosition || i4 > parcel.dataSize()) {
            StringBuilder sb = new StringBuilder(54);
            sb.append("Size read is invalid start=");
            sb.append(dataPosition);
            sb.append(" end=");
            sb.append(i4);
            throw new ParseException(sb.toString(), parcel);
        }
        return i4;
    }

    @NonNull
    public static SparseArray<byte[]> j(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<byte[]> sparseArray = new SparseArray<>(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseArray.append(parcel.readInt(), parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    private static void j0(Parcel parcel, int i4, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        String hexString = Integer.toHexString(i10);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i11);
        sb.append(" got ");
        sb.append(i10);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    @NonNull
    public static char[] k(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        char[] createCharArray = parcel.createCharArray();
        parcel.setDataPosition(dataPosition + g02);
        return createCharArray;
    }

    private static void k0(Parcel parcel, int i4, int i10) {
        int g02 = g0(parcel, i4);
        if (g02 == i10) {
            return;
        }
        String hexString = Integer.toHexString(g02);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i10);
        sb.append(" got ");
        sb.append(g02);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    @NonNull
    public static double[] l(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + g02);
        return createDoubleArray;
    }

    @NonNull
    public static ArrayList<Double> m(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<Double> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(Double.valueOf(parcel.readDouble()));
        }
        parcel.setDataPosition(dataPosition + g02);
        return arrayList;
    }

    @NonNull
    public static SparseArray<Double> n(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        SparseArray<Double> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseArray.append(parcel.readInt(), Double.valueOf(parcel.readDouble()));
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    @NonNull
    public static float[] o(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + g02);
        return createFloatArray;
    }

    @NonNull
    public static ArrayList<Float> p(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<Float> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(Float.valueOf(parcel.readFloat()));
        }
        parcel.setDataPosition(dataPosition + g02);
        return arrayList;
    }

    @NonNull
    public static SparseArray<Float> q(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        SparseArray<Float> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseArray.append(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    @NonNull
    public static IBinder[] r(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        IBinder[] createBinderArray = parcel.createBinderArray();
        parcel.setDataPosition(dataPosition + g02);
        return createBinderArray;
    }

    @NonNull
    public static ArrayList<IBinder> s(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<IBinder> createBinderArrayList = parcel.createBinderArrayList();
        parcel.setDataPosition(dataPosition + g02);
        return createBinderArrayList;
    }

    @NonNull
    public static SparseArray<IBinder> t(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<IBinder> sparseArray = new SparseArray<>(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            sparseArray.append(parcel.readInt(), parcel.readStrongBinder());
        }
        parcel.setDataPosition(dataPosition + g02);
        return sparseArray;
    }

    @NonNull
    public static int[] u(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + g02);
        return createIntArray;
    }

    @NonNull
    public static ArrayList<Integer> v(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + g02);
        return arrayList;
    }

    @NonNull
    public static long[] w(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + g02);
        return createLongArray;
    }

    @NonNull
    public static ArrayList<Long> x(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(Long.valueOf(parcel.readLong()));
        }
        parcel.setDataPosition(dataPosition + g02);
        return arrayList;
    }

    @NonNull
    public static Parcel y(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, g02);
        parcel.setDataPosition(dataPosition + g02);
        return obtain;
    }

    @NonNull
    public static Parcel[] z(@NonNull Parcel parcel, int i4) {
        int g02 = g0(parcel, i4);
        int dataPosition = parcel.dataPosition();
        if (g02 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i10] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i10] = null;
            }
        }
        parcel.setDataPosition(dataPosition + g02);
        return parcelArr;
    }
}
