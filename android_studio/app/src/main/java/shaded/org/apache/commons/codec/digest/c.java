package shaded.org.apache.commons.codec.digest;

import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import shaded.org.apache.commons.codec.binary.l;
import shaded.org.apache.commons.codec.binary.m;

/* compiled from: DigestUtils.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final int f93501b = 1024;

    /* renamed from: a  reason: collision with root package name */
    private final MessageDigest f93502a;

    @Deprecated
    public c() {
        this.f93502a = null;
    }

    public static byte[] A(String str) {
        return B(m.k(str));
    }

    public static byte[] B(byte[] bArr) {
        return q().digest(bArr);
    }

    public static String C(InputStream inputStream) throws IOException {
        return l.r(z(inputStream));
    }

    public static String D(String str) {
        return l.r(A(str));
    }

    public static String E(byte[] bArr) {
        return l.r(B(bArr));
    }

    public static byte[] F(InputStream inputStream) throws IOException {
        return f(r(), inputStream);
    }

    public static byte[] G(String str) {
        return H(m.k(str));
    }

    public static byte[] H(byte[] bArr) {
        return r().digest(bArr);
    }

    public static String I(InputStream inputStream) throws IOException {
        return l.r(F(inputStream));
    }

    public static String J(String str) {
        return l.r(G(str));
    }

    public static String K(byte[] bArr) {
        return l.r(H(bArr));
    }

    @Deprecated
    public static byte[] L(InputStream inputStream) throws IOException {
        return O(inputStream);
    }

    @Deprecated
    public static byte[] M(String str) {
        return P(str);
    }

    @Deprecated
    public static byte[] N(byte[] bArr) {
        return Q(bArr);
    }

    public static byte[] O(InputStream inputStream) throws IOException {
        return f(t(), inputStream);
    }

    public static byte[] P(String str) {
        return Q(m.k(str));
    }

    public static byte[] Q(byte[] bArr) {
        return t().digest(bArr);
    }

    public static String R(InputStream inputStream) throws IOException {
        return l.r(O(inputStream));
    }

    public static String S(String str) {
        return l.r(P(str));
    }

    public static String T(byte[] bArr) {
        return l.r(Q(bArr));
    }

    public static byte[] U(InputStream inputStream) throws IOException {
        return f(u(), inputStream);
    }

    public static byte[] V(String str) {
        return W(m.k(str));
    }

    public static byte[] W(byte[] bArr) {
        return u().digest(bArr);
    }

    public static String X(InputStream inputStream) throws IOException {
        return l.r(U(inputStream));
    }

    public static String Y(String str) {
        return l.r(V(str));
    }

    public static String Z(byte[] bArr) {
        return l.r(W(bArr));
    }

    public static byte[] a0(InputStream inputStream) throws IOException {
        return f(v(), inputStream);
    }

    public static byte[] b0(String str) {
        return c0(m.k(str));
    }

    public static byte[] c0(byte[] bArr) {
        return v().digest(bArr);
    }

    public static String d0(InputStream inputStream) throws IOException {
        return l.r(a0(inputStream));
    }

    public static byte[] e(MessageDigest messageDigest, File file) throws IOException {
        return p0(messageDigest, file).digest();
    }

    public static String e0(String str) {
        return l.r(b0(str));
    }

    public static byte[] f(MessageDigest messageDigest, InputStream inputStream) throws IOException {
        return q0(messageDigest, inputStream).digest();
    }

    public static String f0(byte[] bArr) {
        return l.r(c0(bArr));
    }

    public static byte[] g(MessageDigest messageDigest, ByteBuffer byteBuffer) {
        messageDigest.update(byteBuffer);
        return messageDigest.digest();
    }

    public static byte[] g0(InputStream inputStream) throws IOException {
        return f(w(), inputStream);
    }

    public static byte[] h(MessageDigest messageDigest, byte[] bArr) {
        return messageDigest.digest(bArr);
    }

    public static byte[] h0(String str) {
        return i0(m.k(str));
    }

    public static byte[] i0(byte[] bArr) {
        return w().digest(bArr);
    }

    public static String j0(InputStream inputStream) throws IOException {
        return l.r(g0(inputStream));
    }

    public static String k0(String str) {
        return l.r(h0(str));
    }

    public static String l0(byte[] bArr) {
        return l.r(i0(bArr));
    }

    @Deprecated
    public static String m0(InputStream inputStream) throws IOException {
        return R(inputStream);
    }

    @Deprecated
    public static String n0(String str) {
        return S(str);
    }

    public static MessageDigest o(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    @Deprecated
    public static String o0(byte[] bArr) {
        return T(bArr);
    }

    public static MessageDigest p(String str, MessageDigest messageDigest) {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception unused) {
            return messageDigest;
        }
    }

    public static MessageDigest p0(MessageDigest messageDigest, File file) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(h.b.a(new FileInputStream(file), file));
        try {
            return q0(messageDigest, bufferedInputStream);
        } finally {
            bufferedInputStream.close();
        }
    }

    public static MessageDigest q() {
        return o(f.f93509a);
    }

    public static MessageDigest q0(MessageDigest messageDigest, InputStream inputStream) throws IOException {
        byte[] bArr = new byte[1024];
        int read = inputStream.read(bArr, 0, 1024);
        while (read > -1) {
            messageDigest.update(bArr, 0, read);
            read = inputStream.read(bArr, 0, 1024);
        }
        return messageDigest;
    }

    public static MessageDigest r() {
        return o(f.f93510b);
    }

    public static MessageDigest r0(MessageDigest messageDigest, String str) {
        messageDigest.update(m.k(str));
        return messageDigest;
    }

    public static MessageDigest s0(MessageDigest messageDigest, ByteBuffer byteBuffer) {
        messageDigest.update(byteBuffer);
        return messageDigest;
    }

    public static MessageDigest t() {
        return o("SHA-1");
    }

    public static MessageDigest t0(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        return messageDigest;
    }

    public static MessageDigest u() {
        return o("SHA-256");
    }

    public static MessageDigest v() {
        return o("SHA-384");
    }

    public static MessageDigest w() {
        return o("SHA-512");
    }

    @Deprecated
    public static MessageDigest x() {
        return t();
    }

    public static boolean y(String str) {
        return p(str, null) != null;
    }

    public static byte[] z(InputStream inputStream) throws IOException {
        return f(q(), inputStream);
    }

    public byte[] a(File file) throws IOException {
        return p0(this.f93502a, file).digest();
    }

    public byte[] b(InputStream inputStream) throws IOException {
        return q0(this.f93502a, inputStream).digest();
    }

    public byte[] c(String str) {
        return r0(this.f93502a, str).digest();
    }

    public byte[] d(ByteBuffer byteBuffer) {
        return s0(this.f93502a, byteBuffer).digest();
    }

    public byte[] i(byte[] bArr) {
        return t0(this.f93502a, bArr).digest();
    }

    public String j(File file) throws IOException {
        return l.r(a(file));
    }

    public String k(InputStream inputStream) throws IOException {
        return l.r(b(inputStream));
    }

    public String l(String str) {
        return l.r(c(str));
    }

    public String m(ByteBuffer byteBuffer) {
        return l.r(d(byteBuffer));
    }

    public String n(byte[] bArr) {
        return l.r(i(bArr));
    }

    public MessageDigest s() {
        return this.f93502a;
    }

    public c(MessageDigest messageDigest) {
        this.f93502a = messageDigest;
    }

    public c(String str) {
        this(o(str));
    }
}
