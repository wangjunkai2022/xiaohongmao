package shaded.org.apache.commons.codec.net;

import h9.g;
import h9.h;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;
import shaded.org.apache.commons.codec.binary.m;

/* compiled from: URLCodec.java */
/* loaded from: classes5.dex */
public class e implements h9.b, h9.a, h, g {

    /* renamed from: b  reason: collision with root package name */
    protected static final byte f93740b = 37;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    protected static final BitSet f93741c;

    /* renamed from: d  reason: collision with root package name */
    private static final BitSet f93742d = new BitSet(256);
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    protected volatile String f93743a;

    static {
        for (int i4 = 97; i4 <= 122; i4++) {
            f93742d.set(i4);
        }
        for (int i10 = 65; i10 <= 90; i10++) {
            f93742d.set(i10);
        }
        for (int i11 = 48; i11 <= 57; i11++) {
            f93742d.set(i11);
        }
        BitSet bitSet = f93742d;
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        bitSet.set(42);
        bitSet.set(32);
        f93741c = (BitSet) bitSet.clone();
    }

    public e() {
        this("UTF-8");
    }

    public static final byte[] g(byte[] bArr) throws DecoderException {
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i4 = 0;
        while (i4 < bArr.length) {
            byte b10 = bArr[i4];
            if (b10 == 43) {
                byteArrayOutputStream.write(32);
            } else if (b10 == 37) {
                int i10 = i4 + 1;
                try {
                    int a10 = f.a(bArr[i10]);
                    i4 = i10 + 1;
                    byteArrayOutputStream.write((char) ((a10 << 4) + f.a(bArr[i4])));
                } catch (ArrayIndexOutOfBoundsException e4) {
                    throw new DecoderException("Invalid URL encoding: ", e4);
                }
            } else {
                byteArrayOutputStream.write(b10);
            }
            i4++;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static final byte[] i(BitSet bitSet, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bitSet == null) {
            bitSet = f93742d;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int length = bArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = bArr[i4];
            if (i10 < 0) {
                i10 += 256;
            }
            if (bitSet.get(i10)) {
                if (i10 == 32) {
                    i10 = 43;
                }
                byteArrayOutputStream.write(i10);
            } else {
                byteArrayOutputStream.write(37);
                char b10 = f.b(i10 >> 4);
                char b11 = f.b(i10);
                byteArrayOutputStream.write(b10);
                byteArrayOutputStream.write(b11);
            }
        }
        return byteArrayOutputStream.toByteArray();
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
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be URL encoded");
    }

    @Override // h9.g
    public String b(String str) throws DecoderException {
        if (str == null) {
            return null;
        }
        try {
            return f(str, j());
        } catch (UnsupportedEncodingException e4) {
            throw new DecoderException(e4.getMessage(), e4);
        }
    }

    @Override // h9.h
    public String c(String str) throws EncoderException {
        if (str == null) {
            return null;
        }
        try {
            return h(str, j());
        } catch (UnsupportedEncodingException e4) {
            throw new EncoderException(e4.getMessage(), e4);
        }
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
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be URL decoded");
    }

    @Override // h9.a
    public byte[] decode(byte[] bArr) throws DecoderException {
        return g(bArr);
    }

    @Override // h9.b
    public byte[] e(byte[] bArr) {
        return i(f93742d, bArr);
    }

    public String f(String str, String str2) throws DecoderException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return new String(decode(m.g(str)), str2);
    }

    public String h(String str, String str2) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return m.p(e(str.getBytes(str2)));
    }

    public String j() {
        return this.f93743a;
    }

    @Deprecated
    public String k() {
        return this.f93743a;
    }

    public e(String str) {
        this.f93743a = str;
    }
}
