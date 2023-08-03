package org.bouncycastle.pqc.crypto.xmss;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class XMSSUtil {

    /* loaded from: classes5.dex */
    private static class CheckingStream extends ObjectInputStream {
        private static final Set components;
        private boolean found;
        private final Class mainClass;

        static {
            HashSet hashSet = new HashSet();
            components = hashSet;
            hashSet.add("java.util.TreeMap");
            hashSet.add("java.lang.Integer");
            hashSet.add("java.lang.Number");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDS");
            hashSet.add("java.util.ArrayList");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
            hashSet.add("[B");
            hashSet.add("java.util.LinkedList");
            hashSet.add("java.util.Stack");
            hashSet.add("java.util.Vector");
            hashSet.add("[Ljava.lang.Object;");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
        }

        CheckingStream(Class cls, InputStream inputStream) throws IOException {
            super(inputStream);
            this.found = false;
            this.mainClass = cls;
        }

        @Override // java.io.ObjectInputStream
        protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            if (this.found) {
                if (!components.contains(objectStreamClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
            } else if (!objectStreamClass.getName().equals(this.mainClass.getName())) {
                throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
            } else {
                this.found = true;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    public static boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (hasNullPointer(bArr) || hasNullPointer(bArr2)) {
            throw new NullPointerException("a or b == null");
        }
        for (int i4 = 0; i4 < bArr.length; i4++) {
            if (!Arrays.areEqual(bArr[i4], bArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    public static long bytesToXBigEndian(byte[] bArr, int i4, int i10) {
        Objects.requireNonNull(bArr, "in == null");
        long j4 = 0;
        for (int i11 = i4; i11 < i4 + i10; i11++) {
            j4 = (j4 << 8) | (bArr[i11] & 255);
        }
        return j4;
    }

    public static int calculateTau(int i4, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (((i4 >> i11) & 1) == 0) {
                return i11;
            }
        }
        return 0;
    }

    public static byte[] cloneArray(byte[] bArr) {
        Objects.requireNonNull(bArr, "in == null");
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[][] cloneArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            throw new NullPointerException("in has null pointers");
        }
        byte[][] bArr2 = new byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr2[i4] = new byte[bArr[i4].length];
            System.arraycopy(bArr[i4], 0, bArr2[i4], 0, bArr[i4].length);
        }
        return bArr2;
    }

    public static void copyBytesAtOffset(byte[] bArr, byte[] bArr2, int i4) {
        Objects.requireNonNull(bArr, "dst == null");
        Objects.requireNonNull(bArr2, "src == null");
        if (i4 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (bArr2.length + i4 > bArr.length) {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            bArr[i4 + i10] = bArr2[i10];
        }
    }

    public static Object deserialize(byte[] bArr, Class cls) throws IOException, ClassNotFoundException {
        CheckingStream checkingStream = new CheckingStream(cls, new ByteArrayInputStream(bArr));
        Object readObject = checkingStream.readObject();
        if (checkingStream.available() == 0) {
            if (cls.isInstance(readObject)) {
                return readObject;
            }
            throw new IOException("unexpected class found in ObjectInputStream");
        }
        throw new IOException("unexpected data found at end of ObjectInputStream");
    }

    public static void dumpByteArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            throw new NullPointerException("x has null pointers");
        }
        for (byte[] bArr2 : bArr) {
            System.out.println(Hex.toHexString(bArr2));
        }
    }

    public static byte[] extractBytesAtOffset(byte[] bArr, int i4, int i10) {
        Objects.requireNonNull(bArr, "src == null");
        if (i4 >= 0) {
            if (i10 >= 0) {
                if (i4 + i10 <= bArr.length) {
                    byte[] bArr2 = new byte[i10];
                    for (int i11 = 0; i11 < i10; i11++) {
                        bArr2[i11] = bArr[i4 + i11];
                    }
                    return bArr2;
                }
                throw new IllegalArgumentException("offset + length must not be greater then size of source array");
            }
            throw new IllegalArgumentException("length hast to be >= 0");
        }
        throw new IllegalArgumentException("offset hast to be >= 0");
    }

    public static int getDigestSize(Digest digest) {
        Objects.requireNonNull(digest, "digest == null");
        String algorithmName = digest.getAlgorithmName();
        if (algorithmName.equals("SHAKE128")) {
            return 32;
        }
        if (algorithmName.equals("SHAKE256")) {
            return 64;
        }
        return digest.getDigestSize();
    }

    public static int getLeafIndex(long j4, int i4) {
        return (int) (j4 & ((1 << i4) - 1));
    }

    public static long getTreeIndex(long j4, int i4) {
        return j4 >> i4;
    }

    public static boolean hasNullPointer(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean isIndexValid(int i4, long j4) {
        if (j4 >= 0) {
            return j4 < (1 << i4);
        }
        throw new IllegalStateException("index must not be negative");
    }

    public static boolean isNewAuthenticationPathNeeded(long j4, int i4, int i10) {
        return j4 != 0 && (j4 + 1) % ((long) Math.pow((double) (1 << i4), (double) i10)) == 0;
    }

    public static boolean isNewBDSInitNeeded(long j4, int i4, int i10) {
        return j4 != 0 && j4 % ((long) Math.pow((double) (1 << i4), (double) (i10 + 1))) == 0;
    }

    public static int log2(int i4) {
        int i10 = 0;
        while (true) {
            i4 >>= 1;
            if (i4 == 0) {
                return i10;
            }
            i10++;
        }
    }

    public static void longToBigEndian(long j4, byte[] bArr, int i4) {
        Objects.requireNonNull(bArr, "in == null");
        if (bArr.length - i4 < 8) {
            throw new IllegalArgumentException("not enough space in array");
        }
        bArr[i4] = (byte) ((j4 >> 56) & 255);
        bArr[i4 + 1] = (byte) ((j4 >> 48) & 255);
        bArr[i4 + 2] = (byte) ((j4 >> 40) & 255);
        bArr[i4 + 3] = (byte) ((j4 >> 32) & 255);
        bArr[i4 + 4] = (byte) ((j4 >> 24) & 255);
        bArr[i4 + 5] = (byte) ((j4 >> 16) & 255);
        bArr[i4 + 6] = (byte) ((j4 >> 8) & 255);
        bArr[i4 + 7] = (byte) (j4 & 255);
    }

    public static byte[] serialize(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toBytesBigEndian(long j4, int i4) {
        byte[] bArr = new byte[i4];
        for (int i10 = i4 - 1; i10 >= 0; i10--) {
            bArr[i10] = (byte) j4;
            j4 >>>= 8;
        }
        return bArr;
    }
}
