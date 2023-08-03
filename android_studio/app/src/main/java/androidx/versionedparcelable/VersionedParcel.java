package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import g3.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = "VersionedParcel";
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_FLOAT = 8;
    private static final int TYPE_INTEGER = 7;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;
    protected final ArrayMap<String, Class> mParcelizerCache;
    protected final ArrayMap<String, Method> mReadCache;
    protected final ArrayMap<String, Method> mWriteCache;

    /* loaded from: classes.dex */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    private Exception createException(int i4, String str) {
        switch (i4) {
            case -9:
                return (Exception) readParcelable();
            case a.T1 /* -8 */:
            default:
                return new RuntimeException("Unknown exception code: " + i4 + " msg " + str);
            case -7:
                return new UnsupportedOperationException(str);
            case -6:
                return new NetworkOnMainThreadException();
            case -5:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    private Class findParcelClass(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.mParcelizerCache.get(cls.getName());
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.mParcelizerCache.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    private Method getReadMethod(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.mReadCache.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.mReadCache.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    @NonNull
    protected static Throwable getRootCause(@NonNull Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    private <T> int getType(T t9) {
        if (t9 instanceof String) {
            return 4;
        }
        if (t9 instanceof Parcelable) {
            return 2;
        }
        if (t9 instanceof VersionedParcelable) {
            return 1;
        }
        if (t9 instanceof Serializable) {
            return 3;
        }
        if (t9 instanceof IBinder) {
            return 5;
        }
        if (t9 instanceof Integer) {
            return 7;
        }
        if (t9 instanceof Float) {
            return 8;
        }
        throw new IllegalArgumentException(t9.getClass().getName() + " cannot be VersionedParcelled");
    }

    private Method getWriteMethod(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.mWriteCache.get(cls.getName());
        if (method == null) {
            Class findParcelClass = findParcelClass(cls);
            System.currentTimeMillis();
            Method declaredMethod = findParcelClass.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.mWriteCache.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    private <T, S extends Collection<T>> S readCollection(S s9) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        if (readInt != 0) {
            int readInt2 = readInt();
            if (readInt < 0) {
                return null;
            }
            if (readInt2 == 1) {
                while (readInt > 0) {
                    s9.add(readVersionedParcelable());
                    readInt--;
                }
            } else if (readInt2 == 2) {
                while (readInt > 0) {
                    s9.add(readParcelable());
                    readInt--;
                }
            } else if (readInt2 == 3) {
                while (readInt > 0) {
                    s9.add(readSerializable());
                    readInt--;
                }
            } else if (readInt2 == 4) {
                while (readInt > 0) {
                    s9.add(readString());
                    readInt--;
                }
            } else if (readInt2 == 5) {
                while (readInt > 0) {
                    s9.add(readStrongBinder());
                    readInt--;
                }
            }
        }
        return s9;
    }

    private int readExceptionCode() {
        return readInt();
    }

    private <T> void writeCollection(Collection<T> collection, int i4) {
        setOutputField(i4);
        writeCollection(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e4);
        }
    }

    protected abstract void closeField();

    protected abstract VersionedParcel createSubParcel();

    public boolean isStream() {
        return false;
    }

    public <T> T[] readArray(T[] tArr, int i4) {
        return !readField(i4) ? tArr : (T[]) readArray(tArr);
    }

    protected abstract boolean readBoolean();

    public boolean readBoolean(boolean z9, int i4) {
        return !readField(i4) ? z9 : readBoolean();
    }

    public boolean[] readBooleanArray(boolean[] zArr, int i4) {
        return !readField(i4) ? zArr : readBooleanArray();
    }

    protected abstract Bundle readBundle();

    public Bundle readBundle(Bundle bundle, int i4) {
        return !readField(i4) ? bundle : readBundle();
    }

    public byte readByte(byte b10, int i4) {
        return !readField(i4) ? b10 : (byte) (readInt() & 255);
    }

    protected abstract byte[] readByteArray();

    public byte[] readByteArray(byte[] bArr, int i4) {
        return !readField(i4) ? bArr : readByteArray();
    }

    public char[] readCharArray(char[] cArr, int i4) {
        if (readField(i4)) {
            int readInt = readInt();
            if (readInt < 0) {
                return null;
            }
            char[] cArr2 = new char[readInt];
            for (int i10 = 0; i10 < readInt; i10++) {
                cArr2[i10] = (char) readInt();
            }
            return cArr2;
        }
        return cArr;
    }

    protected abstract CharSequence readCharSequence();

    public CharSequence readCharSequence(CharSequence charSequence, int i4) {
        return !readField(i4) ? charSequence : readCharSequence();
    }

    protected abstract double readDouble();

    public double readDouble(double d4, int i4) {
        return !readField(i4) ? d4 : readDouble();
    }

    public double[] readDoubleArray(double[] dArr, int i4) {
        return !readField(i4) ? dArr : readDoubleArray();
    }

    public Exception readException(Exception exc, int i4) {
        int readExceptionCode;
        return (readField(i4) && (readExceptionCode = readExceptionCode()) != 0) ? readException(readExceptionCode, readString()) : exc;
    }

    protected abstract boolean readField(int i4);

    protected abstract float readFloat();

    public float readFloat(float f10, int i4) {
        return !readField(i4) ? f10 : readFloat();
    }

    public float[] readFloatArray(float[] fArr, int i4) {
        return !readField(i4) ? fArr : readFloatArray();
    }

    protected <T extends VersionedParcelable> T readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (T) getReadMethod(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e4);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e11);
        } catch (InvocationTargetException e12) {
            if (e12.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e12.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e12);
        }
    }

    protected abstract int readInt();

    public int readInt(int i4, int i10) {
        return !readField(i10) ? i4 : readInt();
    }

    public int[] readIntArray(int[] iArr, int i4) {
        return !readField(i4) ? iArr : readIntArray();
    }

    public <T> List<T> readList(List<T> list, int i4) {
        return !readField(i4) ? list : (List) readCollection(new ArrayList());
    }

    protected abstract long readLong();

    public long readLong(long j4, int i4) {
        return !readField(i4) ? j4 : readLong();
    }

    public long[] readLongArray(long[] jArr, int i4) {
        return !readField(i4) ? jArr : readLongArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> Map<K, V> readMap(Map<K, V> map, int i4) {
        if (readField(i4)) {
            int readInt = readInt();
            if (readInt < 0) {
                return null;
            }
            ArrayMap arrayMap = new ArrayMap();
            if (readInt == 0) {
                return arrayMap;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            readCollection(arrayList);
            readCollection(arrayList2);
            for (int i10 = 0; i10 < readInt; i10++) {
                arrayMap.put(arrayList.get(i10), arrayList2.get(i10));
            }
            return arrayMap;
        }
        return map;
    }

    protected abstract <T extends Parcelable> T readParcelable();

    public <T extends Parcelable> T readParcelable(T t9, int i4) {
        return !readField(i4) ? t9 : (T) readParcelable();
    }

    protected Serializable readSerializable() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(readByteArray())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e4) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + readString + ")", e4);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + readString + ")", e10);
        }
    }

    public <T> Set<T> readSet(Set<T> set, int i4) {
        return !readField(i4) ? set : (Set) readCollection(new ArraySet());
    }

    @RequiresApi(api = 21)
    public Size readSize(Size size, int i4) {
        if (readField(i4)) {
            if (readBoolean()) {
                return new Size(readInt(), readInt());
            }
            return null;
        }
        return size;
    }

    @RequiresApi(api = 21)
    public SizeF readSizeF(SizeF sizeF, int i4) {
        if (readField(i4)) {
            if (readBoolean()) {
                return new SizeF(readFloat(), readFloat());
            }
            return null;
        }
        return sizeF;
    }

    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i4) {
        if (readField(i4)) {
            int readInt = readInt();
            if (readInt < 0) {
                return null;
            }
            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(readInt);
            for (int i10 = 0; i10 < readInt; i10++) {
                sparseBooleanArray2.put(readInt(), readBoolean());
            }
            return sparseBooleanArray2;
        }
        return sparseBooleanArray;
    }

    protected abstract String readString();

    public String readString(String str, int i4) {
        return !readField(i4) ? str : readString();
    }

    protected abstract IBinder readStrongBinder();

    public IBinder readStrongBinder(IBinder iBinder, int i4) {
        return !readField(i4) ? iBinder : readStrongBinder();
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t9, int i4) {
        return !readField(i4) ? t9 : (T) readVersionedParcelable();
    }

    protected abstract void setOutputField(int i4);

    public void setSerializationFlags(boolean z9, boolean z10) {
    }

    public <T> void writeArray(T[] tArr, int i4) {
        setOutputField(i4);
        writeArray(tArr);
    }

    protected abstract void writeBoolean(boolean z9);

    public void writeBoolean(boolean z9, int i4) {
        setOutputField(i4);
        writeBoolean(z9);
    }

    public void writeBooleanArray(boolean[] zArr, int i4) {
        setOutputField(i4);
        writeBooleanArray(zArr);
    }

    protected abstract void writeBundle(Bundle bundle);

    public void writeBundle(Bundle bundle, int i4) {
        setOutputField(i4);
        writeBundle(bundle);
    }

    public void writeByte(byte b10, int i4) {
        setOutputField(i4);
        writeInt(b10);
    }

    protected abstract void writeByteArray(byte[] bArr);

    public void writeByteArray(byte[] bArr, int i4) {
        setOutputField(i4);
        writeByteArray(bArr);
    }

    protected abstract void writeByteArray(byte[] bArr, int i4, int i10);

    public void writeCharArray(char[] cArr, int i4) {
        setOutputField(i4);
        if (cArr != null) {
            writeInt(cArr.length);
            for (char c10 : cArr) {
                writeInt(c10);
            }
            return;
        }
        writeInt(-1);
    }

    protected abstract void writeCharSequence(CharSequence charSequence);

    public void writeCharSequence(CharSequence charSequence, int i4) {
        setOutputField(i4);
        writeCharSequence(charSequence);
    }

    protected abstract void writeDouble(double d4);

    public void writeDouble(double d4, int i4) {
        setOutputField(i4);
        writeDouble(d4);
    }

    public void writeDoubleArray(double[] dArr, int i4) {
        setOutputField(i4);
        writeDoubleArray(dArr);
    }

    public void writeException(Exception exc, int i4) {
        setOutputField(i4);
        if (exc == null) {
            writeNoException();
            return;
        }
        int i10 = 0;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i10 = -9;
        } else if (exc instanceof SecurityException) {
            i10 = -1;
        } else if (exc instanceof BadParcelableException) {
            i10 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i10 = -3;
        } else if (exc instanceof NullPointerException) {
            i10 = -4;
        } else if (exc instanceof IllegalStateException) {
            i10 = -5;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i10 = -6;
        } else if (exc instanceof UnsupportedOperationException) {
            i10 = -7;
        }
        writeInt(i10);
        if (i10 == 0) {
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            throw new RuntimeException(exc);
        }
        writeString(exc.getMessage());
        if (i10 != -9) {
            return;
        }
        writeParcelable((Parcelable) exc);
    }

    protected abstract void writeFloat(float f10);

    public void writeFloat(float f10, int i4) {
        setOutputField(i4);
        writeFloat(f10);
    }

    public void writeFloatArray(float[] fArr, int i4) {
        setOutputField(i4);
        writeFloatArray(fArr);
    }

    protected abstract void writeInt(int i4);

    public void writeInt(int i4, int i10) {
        setOutputField(i10);
        writeInt(i4);
    }

    public void writeIntArray(int[] iArr, int i4) {
        setOutputField(i4);
        writeIntArray(iArr);
    }

    public <T> void writeList(List<T> list, int i4) {
        writeCollection(list, i4);
    }

    protected abstract void writeLong(long j4);

    public void writeLong(long j4, int i4) {
        setOutputField(i4);
        writeLong(j4);
    }

    public void writeLongArray(long[] jArr, int i4) {
        setOutputField(i4);
        writeLongArray(jArr);
    }

    public <K, V> void writeMap(Map<K, V> map, int i4) {
        setOutputField(i4);
        if (map == null) {
            writeInt(-1);
            return;
        }
        int size = map.size();
        writeInt(size);
        if (size == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        writeCollection(arrayList);
        writeCollection(arrayList2);
    }

    protected void writeNoException() {
        writeInt(0);
    }

    protected abstract void writeParcelable(Parcelable parcelable);

    public void writeParcelable(Parcelable parcelable, int i4) {
        setOutputField(i4);
        writeParcelable(parcelable);
    }

    public void writeSerializable(Serializable serializable, int i4) {
        setOutputField(i4);
        writeSerializable(serializable);
    }

    public <T> void writeSet(Set<T> set, int i4) {
        writeCollection(set, i4);
    }

    @RequiresApi(api = 21)
    public void writeSize(Size size, int i4) {
        setOutputField(i4);
        writeBoolean(size != null);
        if (size != null) {
            writeInt(size.getWidth());
            writeInt(size.getHeight());
        }
    }

    @RequiresApi(api = 21)
    public void writeSizeF(SizeF sizeF, int i4) {
        setOutputField(i4);
        writeBoolean(sizeF != null);
        if (sizeF != null) {
            writeFloat(sizeF.getWidth());
            writeFloat(sizeF.getHeight());
        }
    }

    public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i4) {
        setOutputField(i4);
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            writeInt(sparseBooleanArray.keyAt(i10));
            writeBoolean(sparseBooleanArray.valueAt(i10));
        }
    }

    protected abstract void writeString(String str);

    public void writeString(String str, int i4) {
        setOutputField(i4);
        writeString(str);
    }

    protected abstract void writeStrongBinder(IBinder iBinder);

    public void writeStrongBinder(IBinder iBinder, int i4) {
        setOutputField(i4);
        writeStrongBinder(iBinder);
    }

    protected abstract void writeStrongInterface(IInterface iInterface);

    public void writeStrongInterface(IInterface iInterface, int i4) {
        setOutputField(i4);
        writeStrongInterface(iInterface);
    }

    protected <T extends VersionedParcelable> void writeToParcel(T t9, VersionedParcel versionedParcel) {
        try {
            getWriteMethod(t9.getClass()).invoke(null, t9, versionedParcel);
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e4);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e11);
        } catch (InvocationTargetException e12) {
            if (e12.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e12.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e12);
        }
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int i4) {
        setOutputField(i4);
        writeVersionedParcelable(versionedParcelable);
    }

    private <T> void writeCollection(Collection<T> collection) {
        if (collection == null) {
            writeInt(-1);
            return;
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    for (T t9 : collection) {
                        writeVersionedParcelable(t9);
                    }
                    return;
                case 2:
                    for (T t10 : collection) {
                        writeParcelable(t10);
                    }
                    return;
                case 3:
                    for (T t11 : collection) {
                        writeSerializable(t11);
                    }
                    return;
                case 4:
                    for (T t12 : collection) {
                        writeString(t12);
                    }
                    return;
                case 5:
                    for (T t13 : collection) {
                        writeStrongBinder(t13);
                    }
                    return;
                case 6:
                default:
                    return;
                case 7:
                    for (T t14 : collection) {
                        writeInt(t14.intValue());
                    }
                    return;
                case 8:
                    for (T t15 : collection) {
                        writeFloat(t15.floatValue());
                    }
                    return;
            }
        }
    }

    private void writeSerializable(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e4) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T[] readArray(T[] tArr) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(readInt);
        if (readInt != 0) {
            int readInt2 = readInt();
            if (readInt < 0) {
                return null;
            }
            if (readInt2 == 1) {
                while (readInt > 0) {
                    arrayList.add(readVersionedParcelable());
                    readInt--;
                }
            } else if (readInt2 == 2) {
                while (readInt > 0) {
                    arrayList.add(readParcelable());
                    readInt--;
                }
            } else if (readInt2 == 3) {
                while (readInt > 0) {
                    arrayList.add(readSerializable());
                    readInt--;
                }
            } else if (readInt2 == 4) {
                while (readInt > 0) {
                    arrayList.add(readString());
                    readInt--;
                }
            } else if (readInt2 == 5) {
                while (readInt > 0) {
                    arrayList.add(readStrongBinder());
                    readInt--;
                }
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean[] readBooleanArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        boolean[] zArr = new boolean[readInt];
        for (int i4 = 0; i4 < readInt; i4++) {
            zArr[i4] = readInt() != 0;
        }
        return zArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double[] readDoubleArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        double[] dArr = new double[readInt];
        for (int i4 = 0; i4 < readInt; i4++) {
            dArr[i4] = readDouble();
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float[] readFloatArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i4 = 0; i4 < readInt; i4++) {
            fArr[i4] = readFloat();
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] readIntArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        int[] iArr = new int[readInt];
        for (int i4 = 0; i4 < readInt; i4++) {
            iArr[i4] = readInt();
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long[] readLongArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        long[] jArr = new long[readInt];
        for (int i4 = 0; i4 < readInt; i4++) {
            jArr[i4] = readLong();
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends VersionedParcelable> T readVersionedParcelable() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        return (T) readFromParcel(readString, createSubParcel());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> void writeArray(T[] tArr) {
        if (tArr == null) {
            writeInt(-1);
            return;
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int i4 = 0;
            int type = getType(tArr[0]);
            writeInt(type);
            if (type == 1) {
                while (i4 < length) {
                    writeVersionedParcelable((VersionedParcelable) tArr[i4]);
                    i4++;
                }
            } else if (type == 2) {
                while (i4 < length) {
                    writeParcelable((Parcelable) tArr[i4]);
                    i4++;
                }
            } else if (type == 3) {
                while (i4 < length) {
                    writeSerializable((Serializable) tArr[i4]);
                    i4++;
                }
            } else if (type == 4) {
                while (i4 < length) {
                    writeString((String) tArr[i4]);
                    i4++;
                }
            } else if (type != 5) {
            } else {
                while (i4 < length) {
                    writeStrongBinder((IBinder) tArr[i4]);
                    i4++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeBooleanArray(boolean[] zArr) {
        if (zArr != null) {
            writeInt(zArr.length);
            for (boolean z9 : zArr) {
                writeInt(z9 ? 1 : 0);
            }
            return;
        }
        writeInt(-1);
    }

    public void writeByteArray(byte[] bArr, int i4, int i10, int i11) {
        setOutputField(i11);
        writeByteArray(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeDoubleArray(double[] dArr) {
        if (dArr != null) {
            writeInt(dArr.length);
            for (double d4 : dArr) {
                writeDouble(d4);
            }
            return;
        }
        writeInt(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeFloatArray(float[] fArr) {
        if (fArr != null) {
            writeInt(fArr.length);
            for (float f10 : fArr) {
                writeFloat(f10);
            }
            return;
        }
        writeInt(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeIntArray(int[] iArr) {
        if (iArr != null) {
            writeInt(iArr.length);
            for (int i4 : iArr) {
                writeInt(i4);
            }
            return;
        }
        writeInt(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeLongArray(long[] jArr) {
        if (jArr != null) {
            writeInt(jArr.length);
            for (long j4 : jArr) {
                writeLong(j4);
            }
            return;
        }
        writeInt(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeVersionedParcelable(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        writeVersionedParcelableCreator(versionedParcelable);
        VersionedParcel createSubParcel = createSubParcel();
        writeToParcel(versionedParcelable, createSubParcel);
        createSubParcel.closeField();
    }

    private Exception readException(int i4, String str) {
        return createException(i4, str);
    }
}
