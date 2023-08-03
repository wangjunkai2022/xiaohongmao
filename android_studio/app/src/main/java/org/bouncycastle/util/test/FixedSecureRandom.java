package org.bouncycastle.util.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.Provider;
import java.security.SecureRandom;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class FixedSecureRandom extends SecureRandom {
    private static final boolean isAndroidStyle;
    private static final boolean isClasspathStyle;
    private static final boolean isRegularStyle;
    private byte[] _data;
    private int _index;
    private static java.math.BigInteger REGULAR = new java.math.BigInteger("01020304ffffffff0506070811111111", 16);
    private static java.math.BigInteger ANDROID = new java.math.BigInteger("1111111105060708ffffffff01020304", 16);
    private static java.math.BigInteger CLASSPATH = new java.math.BigInteger("3020104ffffffff05060708111111", 16);

    /* loaded from: classes5.dex */
    public static class BigInteger extends Source {
        public BigInteger(int i4, String str) {
            super(FixedSecureRandom.expandToBitLength(i4, Hex.decode(str)));
        }

        public BigInteger(int i4, byte[] bArr) {
            super(FixedSecureRandom.expandToBitLength(i4, bArr));
        }

        public BigInteger(String str) {
            this(Hex.decode(str));
        }

        public BigInteger(byte[] bArr) {
            super(bArr);
        }
    }

    /* loaded from: classes5.dex */
    public static class Data extends Source {
        public Data(byte[] bArr) {
            super(bArr);
        }
    }

    /* loaded from: classes5.dex */
    private static class DummyProvider extends Provider {
        DummyProvider() {
            super("BCFIPS_FIXED_RNG", 1.0d, "BCFIPS Fixed Secure Random Provider");
        }
    }

    /* loaded from: classes5.dex */
    private static class RandomChecker extends SecureRandom {
        byte[] data;
        int index;

        RandomChecker() {
            super(null, new DummyProvider());
            this.data = Hex.decode("01020304ffffffff0506070811111111");
            this.index = 0;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void nextBytes(byte[] bArr) {
            System.arraycopy(this.data, this.index, bArr, 0, bArr.length);
            this.index += bArr.length;
        }
    }

    /* loaded from: classes5.dex */
    public static class Source {
        byte[] data;

        Source(byte[] bArr) {
            this.data = bArr;
        }
    }

    static {
        java.math.BigInteger bigInteger = new java.math.BigInteger(128, new RandomChecker());
        java.math.BigInteger bigInteger2 = new java.math.BigInteger(120, new RandomChecker());
        isAndroidStyle = bigInteger.equals(ANDROID);
        isRegularStyle = bigInteger.equals(REGULAR);
        isClasspathStyle = bigInteger2.equals(CLASSPATH);
    }

    public FixedSecureRandom(byte[] bArr) {
        this(new Source[]{new Data(bArr)});
    }

    public FixedSecureRandom(Source[] sourceArr) {
        super(null, new DummyProvider());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i4 = 0;
        if (isRegularStyle) {
            if (isClasspathStyle) {
                while (i4 != sourceArr.length) {
                    try {
                        if (sourceArr[i4] instanceof BigInteger) {
                            byte[] bArr = sourceArr[i4].data;
                            int length = bArr.length - (bArr.length % 4);
                            for (int length2 = (bArr.length - length) - 1; length2 >= 0; length2--) {
                                byteArrayOutputStream.write(bArr[length2]);
                            }
                            for (int length3 = bArr.length - length; length3 < bArr.length; length3 += 4) {
                                byteArrayOutputStream.write(bArr, length3, 4);
                            }
                        } else {
                            byteArrayOutputStream.write(sourceArr[i4].data);
                        }
                        i4++;
                    } catch (IOException unused) {
                        throw new IllegalArgumentException("can't save value source.");
                    }
                }
            } else {
                while (i4 != sourceArr.length) {
                    try {
                        byteArrayOutputStream.write(sourceArr[i4].data);
                        i4++;
                    } catch (IOException unused2) {
                        throw new IllegalArgumentException("can't save value source.");
                    }
                }
            }
        } else if (!isAndroidStyle) {
            throw new IllegalStateException("Unrecognized BigInteger implementation");
        } else {
            for (int i10 = 0; i10 != sourceArr.length; i10++) {
                try {
                    if (sourceArr[i10] instanceof BigInteger) {
                        byte[] bArr2 = sourceArr[i10].data;
                        int length4 = bArr2.length - (bArr2.length % 4);
                        int i11 = 0;
                        while (i11 < length4) {
                            i11 += 4;
                            byteArrayOutputStream.write(bArr2, bArr2.length - i11, 4);
                        }
                        if (bArr2.length - length4 != 0) {
                            for (int i12 = 0; i12 != 4 - (bArr2.length - length4); i12++) {
                                byteArrayOutputStream.write(0);
                            }
                        }
                        for (int i13 = 0; i13 != bArr2.length - length4; i13++) {
                            byteArrayOutputStream.write(bArr2[length4 + i13]);
                        }
                    } else {
                        byteArrayOutputStream.write(sourceArr[i10].data);
                    }
                } catch (IOException unused3) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        }
        this._data = byteArrayOutputStream.toByteArray();
    }

    public FixedSecureRandom(byte[][] bArr) {
        this(buildDataArray(bArr));
    }

    private static Data[] buildDataArray(byte[][] bArr) {
        Data[] dataArr = new Data[bArr.length];
        for (int i4 = 0; i4 != bArr.length; i4++) {
            dataArr[i4] = new Data(bArr[i4]);
        }
        return dataArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] expandToBitLength(int i4, byte[] bArr) {
        int i10;
        int i11;
        int i12 = (i4 + 7) / 8;
        if (i12 <= bArr.length) {
            if (isAndroidStyle && i4 < bArr.length * 8 && (i10 = i4 % 8) != 0) {
                Pack.intToBigEndian(Pack.bigEndianToInt(bArr, 0) << (8 - i10), bArr, 0);
            }
            return bArr;
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, 0, bArr2, i12 - bArr.length, bArr.length);
        if (isAndroidStyle && (i11 = i4 % 8) != 0) {
            Pack.intToBigEndian(Pack.bigEndianToInt(bArr2, 0) << (8 - i11), bArr2, 0);
        }
        return bArr2;
    }

    private int nextValue() {
        byte[] bArr = this._data;
        int i4 = this._index;
        this._index = i4 + 1;
        return bArr[i4] & 255;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i4) {
        byte[] bArr = new byte[i4];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        return (nextValue() << 24) | 0 | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }

    @Override // java.util.Random
    public long nextLong() {
        return (nextValue() << 56) | 0 | (nextValue() << 48) | (nextValue() << 40) | (nextValue() << 32) | (nextValue() << 24) | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }
}
