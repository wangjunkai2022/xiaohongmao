package shaded.org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;
import shaded.org.apache.commons.codec.binary.m;

/* compiled from: RFC1522Codec.java */
/* loaded from: classes5.dex */
abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected static final char f93737a = '?';

    /* renamed from: b  reason: collision with root package name */
    protected static final String f93738b = "?=";

    /* renamed from: c  reason: collision with root package name */
    protected static final String f93739c = "=?";

    /* JADX INFO: Access modifiers changed from: protected */
    public String f(String str) throws DecoderException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        if (str.startsWith(f93739c) && str.endsWith(f93738b)) {
            int length = str.length() - 2;
            int indexOf = str.indexOf(63, 2);
            if (indexOf != length) {
                String substring = str.substring(2, indexOf);
                if (!substring.equals("")) {
                    int i4 = indexOf + 1;
                    int indexOf2 = str.indexOf(63, i4);
                    if (indexOf2 != length) {
                        String substring2 = str.substring(i4, indexOf2);
                        if (k().equalsIgnoreCase(substring2)) {
                            int i10 = indexOf2 + 1;
                            return new String(g(m.g(str.substring(i10, str.indexOf(63, i10)))), substring);
                        }
                        throw new DecoderException("This codec cannot decode " + substring2 + " encoded content");
                    }
                    throw new DecoderException("RFC 1522 violation: encoding token not found");
                }
                throw new DecoderException("RFC 1522 violation: charset not specified");
            }
            throw new DecoderException("RFC 1522 violation: charset token not found");
        }
        throw new DecoderException("RFC 1522 violation: malformed encoded content");
    }

    protected abstract byte[] g(byte[] bArr) throws DecoderException;

    protected abstract byte[] h(byte[] bArr) throws EncoderException;

    /* JADX INFO: Access modifiers changed from: protected */
    public String i(String str, String str2) throws EncoderException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return j(str, Charset.forName(str2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String j(String str, Charset charset) throws EncoderException {
        if (str == null) {
            return null;
        }
        return f93739c + charset + f93737a + k() + f93737a + m.p(h(str.getBytes(charset))) + f93738b;
    }

    protected abstract String k();
}
