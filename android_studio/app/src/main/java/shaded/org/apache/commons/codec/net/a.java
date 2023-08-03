package shaded.org.apache.commons.codec.net;

import h9.g;
import h9.h;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: BCodec.java */
/* loaded from: classes5.dex */
public class a extends d implements h, g {

    /* renamed from: d  reason: collision with root package name */
    private final Charset f93722d;

    public a() {
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
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be encoded using BCodec");
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
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be decoded using BCodec");
    }

    @Override // shaded.org.apache.commons.codec.net.d
    protected byte[] g(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return shaded.org.apache.commons.codec.binary.d.y(bArr);
    }

    @Override // shaded.org.apache.commons.codec.net.d
    protected byte[] h(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return shaded.org.apache.commons.codec.binary.d.A(bArr);
    }

    @Override // shaded.org.apache.commons.codec.net.d
    protected String k() {
        return "B";
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
        return this.f93722d;
    }

    public String o() {
        return this.f93722d.name();
    }

    public a(Charset charset) {
        this.f93722d = charset;
    }

    public a(String str) {
        this(Charset.forName(str));
    }
}
