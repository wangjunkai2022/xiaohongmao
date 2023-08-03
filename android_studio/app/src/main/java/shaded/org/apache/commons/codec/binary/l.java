package shaded.org.apache.commons.codec.binary;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: Hex.java */
/* loaded from: classes5.dex */
public class l implements h9.b, h9.a {

    /* renamed from: c  reason: collision with root package name */
    public static final String f93494c = "UTF-8";

    /* renamed from: a  reason: collision with root package name */
    private final Charset f93497a;

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f93493b = h9.d.f69074f;

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f93495d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f93496e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public l() {
        this.f93497a = f93493b;
    }

    public static byte[] g(String str) throws DecoderException {
        return h(str.toCharArray());
    }

    public static byte[] h(char[] cArr) throws DecoderException {
        int length = cArr.length;
        if ((length & 1) == 0) {
            byte[] bArr = new byte[length >> 1];
            int i4 = 0;
            int i10 = 0;
            while (i4 < length) {
                int i11 = i4 + 1;
                i4 = i11 + 1;
                bArr[i10] = (byte) (((v(cArr[i4], i4) << 4) | v(cArr[i11], i11)) & 255);
                i10++;
            }
            return bArr;
        }
        throw new DecoderException("Odd number of characters.");
    }

    public static char[] j(ByteBuffer byteBuffer) {
        return k(byteBuffer, true);
    }

    public static char[] k(ByteBuffer byteBuffer, boolean z9) {
        return l(byteBuffer, z9 ? f93495d : f93496e);
    }

    protected static char[] l(ByteBuffer byteBuffer, char[] cArr) {
        return o(byteBuffer.array(), cArr);
    }

    public static char[] m(byte[] bArr) {
        return n(bArr, true);
    }

    public static char[] n(byte[] bArr, boolean z9) {
        return o(bArr, z9 ? f93495d : f93496e);
    }

    protected static char[] o(byte[] bArr, char[] cArr) {
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i4 + 1;
            cArr2[i4] = cArr[(bArr[i10] & 240) >>> 4];
            i4 = i11 + 1;
            cArr2[i11] = cArr[bArr[i10] & com.google.common.base.c.f32110q];
        }
        return cArr2;
    }

    public static String p(ByteBuffer byteBuffer) {
        return new String(j(byteBuffer));
    }

    public static String q(ByteBuffer byteBuffer, boolean z9) {
        return new String(k(byteBuffer, z9));
    }

    public static String r(byte[] bArr) {
        return new String(m(bArr));
    }

    public static String s(byte[] bArr, boolean z9) {
        return new String(n(bArr, z9));
    }

    protected static int v(char c10, int i4) throws DecoderException {
        int digit = Character.digit(c10, 16);
        if (digit != -1) {
            return digit;
        }
        throw new DecoderException("Illegal hexadecimal character " + c10 + " at index " + i4);
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        byte[] bArr;
        if (obj instanceof String) {
            bArr = ((String) obj).getBytes(t());
        } else if (obj instanceof ByteBuffer) {
            bArr = ((ByteBuffer) obj).array();
        } else {
            try {
                bArr = (byte[]) obj;
            } catch (ClassCastException e4) {
                throw new EncoderException(e4.getMessage(), e4);
            }
        }
        return m(bArr);
    }

    @Override // h9.e
    public Object d(Object obj) throws DecoderException {
        if (obj instanceof String) {
            return d(((String) obj).toCharArray());
        }
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        if (obj instanceof ByteBuffer) {
            return f((ByteBuffer) obj);
        }
        try {
            return h((char[]) obj);
        } catch (ClassCastException e4) {
            throw new DecoderException(e4.getMessage(), e4);
        }
    }

    @Override // h9.a
    public byte[] decode(byte[] bArr) throws DecoderException {
        return h(new String(bArr, t()).toCharArray());
    }

    @Override // h9.b
    public byte[] e(byte[] bArr) {
        return r(bArr).getBytes(t());
    }

    public byte[] f(ByteBuffer byteBuffer) throws DecoderException {
        return h(new String(byteBuffer.array(), t()).toCharArray());
    }

    public byte[] i(ByteBuffer byteBuffer) {
        return p(byteBuffer).getBytes(t());
    }

    public Charset t() {
        return this.f93497a;
    }

    public String toString() {
        return super.toString() + "[charsetName=" + this.f93497a + "]";
    }

    public String u() {
        return this.f93497a.name();
    }

    public l(Charset charset) {
        this.f93497a = charset;
    }

    public l(String str) {
        this(Charset.forName(str));
    }
}
