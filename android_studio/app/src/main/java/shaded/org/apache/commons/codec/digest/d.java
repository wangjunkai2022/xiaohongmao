package shaded.org.apache.commons.codec.digest;

import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import shaded.org.apache.commons.codec.binary.l;
import shaded.org.apache.commons.codec.binary.m;

/* compiled from: HmacUtils.java */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final int f93503b = 1024;

    /* renamed from: a  reason: collision with root package name */
    private final Mac f93504a;

    @Deprecated
    public d() {
        this(null);
    }

    @Deprecated
    public static String A(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_1, str).o(str2);
    }

    @Deprecated
    public static String B(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_1, bArr).n(inputStream);
    }

    @Deprecated
    public static String C(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_1, bArr).q(bArr2);
    }

    @Deprecated
    public static byte[] D(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_256, str).j(str2);
    }

    @Deprecated
    public static byte[] E(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_256, bArr).i(inputStream);
    }

    @Deprecated
    public static byte[] F(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_256, bArr).l(bArr2);
    }

    @Deprecated
    public static String G(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_256, str).o(str2);
    }

    @Deprecated
    public static String H(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_256, bArr).n(inputStream);
    }

    @Deprecated
    public static String I(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_256, bArr).q(bArr2);
    }

    @Deprecated
    public static byte[] J(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_384, str).j(str2);
    }

    @Deprecated
    public static byte[] K(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_384, bArr).i(inputStream);
    }

    @Deprecated
    public static byte[] L(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_384, bArr).l(bArr2);
    }

    @Deprecated
    public static String M(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_384, str).o(str2);
    }

    @Deprecated
    public static String N(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_384, bArr).n(inputStream);
    }

    @Deprecated
    public static String O(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_384, bArr).q(bArr2);
    }

    @Deprecated
    public static byte[] P(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_512, str).j(str2);
    }

    @Deprecated
    public static byte[] Q(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_512, bArr).i(inputStream);
    }

    @Deprecated
    public static byte[] R(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_512, bArr).l(bArr2);
    }

    @Deprecated
    public static String S(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_512, str).o(str2);
    }

    @Deprecated
    public static String T(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_512, bArr).n(inputStream);
    }

    @Deprecated
    public static String U(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_512, bArr).q(bArr2);
    }

    public static boolean V(String str) {
        try {
            Mac.getInstance(str);
            return true;
        } catch (NoSuchAlgorithmException unused) {
            return false;
        }
    }

    public static boolean W(HmacAlgorithms hmacAlgorithms) {
        try {
            Mac.getInstance(hmacAlgorithms.getName());
            return true;
        } catch (NoSuchAlgorithmException unused) {
            return false;
        }
    }

    public static Mac X(Mac mac, InputStream inputStream) throws IOException {
        mac.reset();
        byte[] bArr = new byte[1024];
        int read = inputStream.read(bArr, 0, 1024);
        while (read > -1) {
            mac.update(bArr, 0, read);
            read = inputStream.read(bArr, 0, 1024);
        }
        return mac;
    }

    public static Mac Y(Mac mac, String str) {
        mac.reset();
        mac.update(m.k(str));
        return mac;
    }

    public static Mac Z(Mac mac, byte[] bArr) {
        mac.reset();
        mac.update(bArr);
        return mac;
    }

    @Deprecated
    public static Mac a(byte[] bArr) {
        return g(HmacAlgorithms.HMAC_MD5, bArr);
    }

    @Deprecated
    public static Mac b(byte[] bArr) {
        return g(HmacAlgorithms.HMAC_SHA_1, bArr);
    }

    @Deprecated
    public static Mac c(byte[] bArr) {
        return g(HmacAlgorithms.HMAC_SHA_256, bArr);
    }

    @Deprecated
    public static Mac d(byte[] bArr) {
        return g(HmacAlgorithms.HMAC_SHA_384, bArr);
    }

    @Deprecated
    public static Mac e(byte[] bArr) {
        return g(HmacAlgorithms.HMAC_SHA_512, bArr);
    }

    public static Mac f(String str, byte[] bArr) {
        if (bArr != null) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, str);
                Mac mac = Mac.getInstance(str);
                mac.init(secretKeySpec);
                return mac;
            } catch (InvalidKeyException e4) {
                throw new IllegalArgumentException(e4);
            } catch (NoSuchAlgorithmException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        throw new IllegalArgumentException("Null key");
    }

    public static Mac g(HmacAlgorithms hmacAlgorithms, byte[] bArr) {
        return f(hmacAlgorithms.getName(), bArr);
    }

    @Deprecated
    public static byte[] r(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_MD5, str).j(str2);
    }

    @Deprecated
    public static byte[] s(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_MD5, bArr).i(inputStream);
    }

    @Deprecated
    public static byte[] t(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_MD5, bArr).l(bArr2);
    }

    @Deprecated
    public static String u(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_MD5, str).o(str2);
    }

    @Deprecated
    public static String v(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_MD5, bArr).n(inputStream);
    }

    @Deprecated
    public static String w(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_MD5, bArr).q(bArr2);
    }

    @Deprecated
    public static byte[] x(String str, String str2) {
        return new d(HmacAlgorithms.HMAC_SHA_1, str).j(str2);
    }

    @Deprecated
    public static byte[] y(byte[] bArr, InputStream inputStream) throws IOException {
        return new d(HmacAlgorithms.HMAC_SHA_1, bArr).i(inputStream);
    }

    @Deprecated
    public static byte[] z(byte[] bArr, byte[] bArr2) {
        return new d(HmacAlgorithms.HMAC_SHA_1, bArr).l(bArr2);
    }

    public byte[] h(File file) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(h.b.a(new FileInputStream(file), file));
        try {
            return i(bufferedInputStream);
        } finally {
            bufferedInputStream.close();
        }
    }

    public byte[] i(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr, 0, 1024);
            if (read > -1) {
                this.f93504a.update(bArr, 0, read);
            } else {
                return this.f93504a.doFinal();
            }
        }
    }

    public byte[] j(String str) {
        return this.f93504a.doFinal(m.k(str));
    }

    public byte[] k(ByteBuffer byteBuffer) {
        this.f93504a.update(byteBuffer);
        return this.f93504a.doFinal();
    }

    public byte[] l(byte[] bArr) {
        return this.f93504a.doFinal(bArr);
    }

    public String m(File file) throws IOException {
        return l.r(h(file));
    }

    public String n(InputStream inputStream) throws IOException {
        return l.r(i(inputStream));
    }

    public String o(String str) {
        return l.r(j(str));
    }

    public String p(ByteBuffer byteBuffer) {
        return l.r(k(byteBuffer));
    }

    public String q(byte[] bArr) {
        return l.r(l(bArr));
    }

    private d(Mac mac) {
        this.f93504a = mac;
    }

    public d(String str, byte[] bArr) {
        this(f(str, bArr));
    }

    public d(String str, String str2) {
        this(str, m.k(str2));
    }

    public d(HmacAlgorithms hmacAlgorithms, String str) {
        this(hmacAlgorithms.getName(), m.k(str));
    }

    public d(HmacAlgorithms hmacAlgorithms, byte[] bArr) {
        this(hmacAlgorithms.getName(), bArr);
    }
}
