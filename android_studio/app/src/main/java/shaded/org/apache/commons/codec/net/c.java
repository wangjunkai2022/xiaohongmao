package shaded.org.apache.commons.codec.net;

import h9.g;
import h9.h;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.BitSet;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;
import shaded.org.apache.commons.codec.binary.m;

/* compiled from: QuotedPrintableCodec.java */
/* loaded from: classes5.dex */
public class c implements h9.b, h9.a, h, g {

    /* renamed from: c  reason: collision with root package name */
    private static final BitSet f93728c = new BitSet(256);

    /* renamed from: d  reason: collision with root package name */
    private static final byte f93729d = 61;

    /* renamed from: e  reason: collision with root package name */
    private static final byte f93730e = 9;

    /* renamed from: f  reason: collision with root package name */
    private static final byte f93731f = 32;

    /* renamed from: g  reason: collision with root package name */
    private static final byte f93732g = 13;

    /* renamed from: h  reason: collision with root package name */
    private static final byte f93733h = 10;

    /* renamed from: i  reason: collision with root package name */
    private static final int f93734i = 73;

    /* renamed from: a  reason: collision with root package name */
    private final Charset f93735a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f93736b;

    static {
        for (int i4 = 33; i4 <= 60; i4++) {
            f93728c.set(i4);
        }
        for (int i10 = 62; i10 <= 126; i10++) {
            f93728c.set(i10);
        }
        BitSet bitSet = f93728c;
        bitSet.set(9);
        bitSet.set(32);
    }

    public c() {
        this(h9.d.f69074f, false);
    }

    public static final byte[] h(byte[] bArr) throws DecoderException {
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i4 = 0;
        while (i4 < bArr.length) {
            byte b10 = bArr[i4];
            if (b10 == 61) {
                i4++;
                try {
                    if (bArr[i4] != 13) {
                        int a10 = f.a(bArr[i4]);
                        i4++;
                        byteArrayOutputStream.write((char) ((a10 << 4) + f.a(bArr[i4])));
                    }
                } catch (ArrayIndexOutOfBoundsException e4) {
                    throw new DecoderException("Invalid quoted-printable encoding", e4);
                }
            } else if (b10 != 13 && b10 != 10) {
                byteArrayOutputStream.write(b10);
            }
            i4++;
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static int k(int i4, boolean z9, ByteArrayOutputStream byteArrayOutputStream) {
        if (z9) {
            return l(i4, byteArrayOutputStream);
        }
        byteArrayOutputStream.write(i4);
        return 1;
    }

    private static final int l(int i4, ByteArrayOutputStream byteArrayOutputStream) {
        byteArrayOutputStream.write(61);
        char b10 = f.b(i4 >> 4);
        char b11 = f.b(i4);
        byteArrayOutputStream.write(b10);
        byteArrayOutputStream.write(b11);
        return 3;
    }

    public static final byte[] m(BitSet bitSet, byte[] bArr) {
        return n(bitSet, bArr, false);
    }

    public static final byte[] n(BitSet bitSet, byte[] bArr, boolean z9) {
        if (bArr == null) {
            return null;
        }
        if (bitSet == null) {
            bitSet = f93728c;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (z9) {
            int i4 = 1;
            for (int i10 = 0; i10 < bArr.length - 3; i10++) {
                int q9 = q(i10, bArr);
                if (i4 < 73) {
                    i4 += k(q9, !bitSet.get(q9), byteArrayOutputStream);
                } else {
                    k(q9, !bitSet.get(q9) || r(q9), byteArrayOutputStream);
                    byteArrayOutputStream.write(61);
                    byteArrayOutputStream.write(13);
                    byteArrayOutputStream.write(10);
                    i4 = 1;
                }
            }
            int q10 = q(bArr.length - 3, bArr);
            if (i4 + k(q10, !bitSet.get(q10) || (r(q10) && i4 > 68), byteArrayOutputStream) > 71) {
                byteArrayOutputStream.write(61);
                byteArrayOutputStream.write(13);
                byteArrayOutputStream.write(10);
            }
            int length = bArr.length - 2;
            while (length < bArr.length) {
                int q11 = q(length, bArr);
                k(q11, !bitSet.get(q11) || (length > bArr.length + (-2) && r(q11)), byteArrayOutputStream);
                length++;
            }
        } else {
            int length2 = bArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                int i12 = bArr[i11];
                if (i12 < 0) {
                    i12 += 256;
                }
                if (bitSet.get(i12)) {
                    byteArrayOutputStream.write(i12);
                } else {
                    l(i12, byteArrayOutputStream);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static int q(int i4, byte[] bArr) {
        byte b10 = bArr[i4];
        return b10 < 0 ? b10 + 256 : b10;
    }

    private static boolean r(int i4) {
        return i4 == 32 || i4 == 9;
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return e((byte[]) obj);
        }
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be quoted-printable encoded");
    }

    @Override // h9.g
    public String b(String str) throws DecoderException {
        return g(str, o());
    }

    @Override // h9.h
    public String c(String str) throws EncoderException {
        return j(str, o());
    }

    @Override // h9.e
    public Object d(Object obj) throws DecoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        if (obj instanceof String) {
            return b((String) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be quoted-printable decoded");
    }

    @Override // h9.a
    public byte[] decode(byte[] bArr) throws DecoderException {
        return h(bArr);
    }

    @Override // h9.b
    public byte[] e(byte[] bArr) {
        return n(f93728c, bArr, this.f93736b);
    }

    public String f(String str, String str2) throws DecoderException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return new String(decode(m.g(str)), str2);
    }

    public String g(String str, Charset charset) throws DecoderException {
        if (str == null) {
            return null;
        }
        return new String(decode(m.g(str)), charset);
    }

    public String i(String str, String str2) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return m.p(e(str.getBytes(str2)));
    }

    public String j(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        return m.p(e(str.getBytes(charset)));
    }

    public Charset o() {
        return this.f93735a;
    }

    public String p() {
        return this.f93735a.name();
    }

    public c(boolean z9) {
        this(h9.d.f69074f, z9);
    }

    public c(Charset charset) {
        this(charset, false);
    }

    public c(Charset charset, boolean z9) {
        this.f93735a = charset;
        this.f93736b = z9;
    }

    public c(String str) throws IllegalCharsetNameException, IllegalArgumentException, UnsupportedCharsetException {
        this(Charset.forName(str), false);
    }
}
