package shaded.org.apache.commons.codec.net;

import h9.g;
import h9.h;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.BitSet;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: QCodec.java */
/* loaded from: classes5.dex */
public class b extends d implements h, g {

    /* renamed from: f  reason: collision with root package name */
    private static final BitSet f93723f;

    /* renamed from: g  reason: collision with root package name */
    private static final byte f93724g = 32;

    /* renamed from: h  reason: collision with root package name */
    private static final byte f93725h = 95;

    /* renamed from: d  reason: collision with root package name */
    private final Charset f93726d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f93727e;

    static {
        BitSet bitSet = new BitSet(256);
        f93723f = bitSet;
        bitSet.set(32);
        bitSet.set(33);
        bitSet.set(34);
        bitSet.set(35);
        bitSet.set(36);
        bitSet.set(37);
        bitSet.set(38);
        bitSet.set(39);
        bitSet.set(40);
        bitSet.set(41);
        bitSet.set(42);
        bitSet.set(43);
        bitSet.set(44);
        bitSet.set(45);
        bitSet.set(46);
        bitSet.set(47);
        for (int i4 = 48; i4 <= 57; i4++) {
            f93723f.set(i4);
        }
        BitSet bitSet2 = f93723f;
        bitSet2.set(58);
        bitSet2.set(59);
        bitSet2.set(60);
        bitSet2.set(62);
        bitSet2.set(64);
        for (int i10 = 65; i10 <= 90; i10++) {
            f93723f.set(i10);
        }
        BitSet bitSet3 = f93723f;
        bitSet3.set(91);
        bitSet3.set(92);
        bitSet3.set(93);
        bitSet3.set(94);
        bitSet3.set(96);
        for (int i11 = 97; i11 <= 122; i11++) {
            f93723f.set(i11);
        }
        BitSet bitSet4 = f93723f;
        bitSet4.set(123);
        bitSet4.set(124);
        bitSet4.set(125);
        bitSet4.set(126);
    }

    public b() {
        this(h9.d.f69074f);
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be encoded using Q codec");
    }

    @Override // h9.g
    public String b(String str) throws DecoderException {
        if (str == null) {
            return null;
        }
        try {
            return f(str);
        } catch (UnsupportedEncodingException e4) {
            throw new DecoderException(e4.getMessage(), e4);
        }
    }

    @Override // h9.h
    public String c(String str) throws EncoderException {
        if (str == null) {
            return null;
        }
        return m(str, n());
    }

    @Override // h9.e
    public Object d(Object obj) throws DecoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return b((String) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be decoded using Q codec");
    }

    @Override // shaded.org.apache.commons.codec.net.d
    protected byte[] g(byte[] bArr) throws DecoderException {
        boolean z9;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                z9 = false;
                break;
            } else if (bArr[i4] == 95) {
                z9 = true;
                break;
            } else {
                i4++;
            }
        }
        if (z9) {
            byte[] bArr2 = new byte[bArr.length];
            for (int i10 = 0; i10 < bArr.length; i10++) {
                byte b10 = bArr[i10];
                if (b10 != 95) {
                    bArr2[i10] = b10;
                } else {
                    bArr2[i10] = 32;
                }
            }
            return c.h(bArr2);
        }
        return c.h(bArr);
    }

    @Override // shaded.org.apache.commons.codec.net.d
    protected byte[] h(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] m9 = c.m(f93723f, bArr);
        if (this.f93727e) {
            for (int i4 = 0; i4 < m9.length; i4++) {
                if (m9[i4] == 32) {
                    m9[i4] = f93725h;
                }
            }
        }
        return m9;
    }

    @Override // shaded.org.apache.commons.codec.net.d
    protected String k() {
        return "Q";
    }

    public String l(String str, String str2) throws EncoderException {
        if (str == null) {
            return null;
        }
        try {
            return i(str, str2);
        } catch (UnsupportedEncodingException e4) {
            throw new EncoderException(e4.getMessage(), e4);
        }
    }

    public String m(String str, Charset charset) throws EncoderException {
        if (str == null) {
            return null;
        }
        return j(str, charset);
    }

    public Charset n() {
        return this.f93726d;
    }

    public String o() {
        return this.f93726d.name();
    }

    public boolean p() {
        return this.f93727e;
    }

    public void q(boolean z9) {
        this.f93727e = z9;
    }

    public b(Charset charset) {
        this.f93727e = false;
        this.f93726d = charset;
    }

    public b(String str) {
        this(Charset.forName(str));
    }
}
