package shaded.org.apache.commons.codec.binary;

import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: BinaryCodec.java */
/* loaded from: classes5.dex */
public class j implements h9.a, h9.b {

    /* renamed from: c  reason: collision with root package name */
    private static final int f93484c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f93485d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final int f93486e = 4;

    /* renamed from: f  reason: collision with root package name */
    private static final int f93487f = 8;

    /* renamed from: g  reason: collision with root package name */
    private static final int f93488g = 16;

    /* renamed from: h  reason: collision with root package name */
    private static final int f93489h = 32;

    /* renamed from: i  reason: collision with root package name */
    private static final int f93490i = 64;

    /* renamed from: j  reason: collision with root package name */
    private static final int f93491j = 128;

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f93482a = new char[0];

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f93483b = new byte[0];

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f93492k = {1, 2, 4, 8, 16, 32, 64, 128};

    public static byte[] f(byte[] bArr) {
        if (h(bArr)) {
            return f93483b;
        }
        int length = bArr.length >> 3;
        byte[] bArr2 = new byte[length];
        int length2 = bArr.length - 1;
        int i4 = 0;
        while (i4 < length) {
            int i10 = 0;
            while (true) {
                int[] iArr = f93492k;
                if (i10 < iArr.length) {
                    if (bArr[length2 - i10] == 49) {
                        bArr2[i4] = (byte) (iArr[i10] | bArr2[i4]);
                    }
                    i10++;
                }
            }
            i4++;
            length2 -= 8;
        }
        return bArr2;
    }

    public static byte[] g(char[] cArr) {
        if (cArr != null && cArr.length != 0) {
            int length = cArr.length >> 3;
            byte[] bArr = new byte[length];
            int length2 = cArr.length - 1;
            int i4 = 0;
            while (i4 < length) {
                int i10 = 0;
                while (true) {
                    int[] iArr = f93492k;
                    if (i10 < iArr.length) {
                        if (cArr[length2 - i10] == '1') {
                            bArr[i4] = (byte) (iArr[i10] | bArr[i4]);
                        }
                        i10++;
                    }
                }
                i4++;
                length2 -= 8;
            }
            return bArr;
        }
        return f93483b;
    }

    private static boolean h(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static byte[] i(byte[] bArr) {
        if (h(bArr)) {
            return f93483b;
        }
        int length = bArr.length << 3;
        byte[] bArr2 = new byte[length];
        int i4 = length - 1;
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = 0;
            while (true) {
                int[] iArr = f93492k;
                if (i11 < iArr.length) {
                    if ((iArr[i11] & bArr[i10]) == 0) {
                        bArr2[i4 - i11] = 48;
                    } else {
                        bArr2[i4 - i11] = 49;
                    }
                    i11++;
                }
            }
            i10++;
            i4 -= 8;
        }
        return bArr2;
    }

    public static char[] j(byte[] bArr) {
        if (h(bArr)) {
            return f93482a;
        }
        int length = bArr.length << 3;
        char[] cArr = new char[length];
        int i4 = length - 1;
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = 0;
            while (true) {
                int[] iArr = f93492k;
                if (i11 < iArr.length) {
                    if ((iArr[i11] & bArr[i10]) == 0) {
                        cArr[i4 - i11] = '0';
                    } else {
                        cArr[i4 - i11] = '1';
                    }
                    i11++;
                }
            }
            i10++;
            i4 -= 8;
        }
        return cArr;
    }

    public static String k(byte[] bArr) {
        return new String(j(bArr));
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof byte[]) {
            return j((byte[]) obj);
        }
        throw new EncoderException("argument not a byte array");
    }

    @Override // h9.e
    public Object d(Object obj) throws DecoderException {
        if (obj == null) {
            return f93483b;
        }
        if (obj instanceof byte[]) {
            return f((byte[]) obj);
        }
        if (obj instanceof char[]) {
            return g((char[]) obj);
        }
        if (obj instanceof String) {
            return g(((String) obj).toCharArray());
        }
        throw new DecoderException("argument not a byte array");
    }

    @Override // h9.a
    public byte[] decode(byte[] bArr) {
        return f(bArr);
    }

    @Override // h9.b
    public byte[] e(byte[] bArr) {
        return i(bArr);
    }

    public byte[] l(String str) {
        if (str == null) {
            return f93483b;
        }
        return g(str.toCharArray());
    }
}
