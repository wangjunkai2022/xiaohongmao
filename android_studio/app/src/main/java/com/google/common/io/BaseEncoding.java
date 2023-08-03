package com.google.common.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class BaseEncoding {

    /* renamed from: a  reason: collision with root package name */
    private static final BaseEncoding f34387a = new h("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b  reason: collision with root package name */
    private static final BaseEncoding f34388b = new h("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    /* renamed from: c  reason: collision with root package name */
    private static final BaseEncoding f34389c = new j("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d  reason: collision with root package name */
    private static final BaseEncoding f34390d = new j("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    /* renamed from: e  reason: collision with root package name */
    private static final BaseEncoding f34391e = new g("base16()", "0123456789ABCDEF");

    /* loaded from: classes2.dex */
    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }

        DecodingException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes2.dex */
    class a extends com.google.common.io.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.io.i f34392a;

        a(com.google.common.io.i iVar) {
            this.f34392a = iVar;
        }

        @Override // com.google.common.io.e
        public OutputStream c() throws IOException {
            return BaseEncoding.this.p(this.f34392a.b());
        }
    }

    /* loaded from: classes2.dex */
    class b extends com.google.common.io.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.io.j f34394a;

        b(com.google.common.io.j jVar) {
            this.f34394a = jVar;
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return BaseEncoding.this.k(this.f34394a.m());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class e extends Writer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Appendable f34402a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Writer f34403b;

        e(Appendable appendable, Writer writer) {
            this.f34402a = appendable;
            this.f34403b = writer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f34403b.close();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f34403b.flush();
        }

        @Override // java.io.Writer
        public void write(int i4) throws IOException {
            this.f34402a.append((char) i4);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i4, int i10) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final String f34404a;

        /* renamed from: b  reason: collision with root package name */
        private final char[] f34405b;

        /* renamed from: c  reason: collision with root package name */
        final int f34406c;

        /* renamed from: d  reason: collision with root package name */
        final int f34407d;

        /* renamed from: e  reason: collision with root package name */
        final int f34408e;

        /* renamed from: f  reason: collision with root package name */
        final int f34409f;

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f34410g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean[] f34411h;

        f(String str, char[] cArr) {
            this.f34404a = (String) com.google.common.base.a0.E(str);
            this.f34405b = (char[]) com.google.common.base.a0.E(cArr);
            try {
                int p9 = com.google.common.math.d.p(cArr.length, RoundingMode.UNNECESSARY);
                this.f34407d = p9;
                int min = Math.min(8, Integer.lowestOneBit(p9));
                try {
                    this.f34408e = 8 / min;
                    this.f34409f = p9 / min;
                    this.f34406c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i4 = 0; i4 < cArr.length; i4++) {
                        char c10 = cArr[i4];
                        com.google.common.base.a0.f(c10 < 128, "Non-ASCII character: %s", c10);
                        com.google.common.base.a0.f(bArr[c10] == -1, "Duplicate character: %s", c10);
                        bArr[c10] = (byte) i4;
                    }
                    this.f34410g = bArr;
                    boolean[] zArr = new boolean[this.f34408e];
                    for (int i10 = 0; i10 < this.f34409f; i10++) {
                        zArr[com.google.common.math.d.g(i10 * 8, this.f34407d, RoundingMode.CEILING)] = true;
                    }
                    this.f34411h = zArr;
                } catch (ArithmeticException e4) {
                    throw new IllegalArgumentException("Illegal alphabet " + new String(cArr), e4);
                }
            } catch (ArithmeticException e10) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e10);
            }
        }

        private boolean e() {
            for (char c10 : this.f34405b) {
                if (com.google.common.base.c.c(c10)) {
                    return true;
                }
            }
            return false;
        }

        private boolean f() {
            for (char c10 : this.f34405b) {
                if (com.google.common.base.c.d(c10)) {
                    return true;
                }
            }
            return false;
        }

        boolean b(char c10) {
            return c10 <= 127 && this.f34410g[c10] != -1;
        }

        int c(char c10) throws DecodingException {
            if (c10 <= 127) {
                byte b10 = this.f34410g[c10];
                if (b10 == -1) {
                    if (c10 > ' ' && c10 != 127) {
                        throw new DecodingException("Unrecognized character: " + c10);
                    }
                    throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c10));
                }
                return b10;
            }
            throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c10));
        }

        char d(int i4) {
            return this.f34405b[i4];
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return Arrays.equals(this.f34405b, ((f) obj).f34405b);
            }
            return false;
        }

        boolean g(int i4) {
            return this.f34411h[i4 % this.f34408e];
        }

        f h() {
            if (!f()) {
                return this;
            }
            com.google.common.base.a0.h0(!e(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f34405b.length];
            int i4 = 0;
            while (true) {
                char[] cArr2 = this.f34405b;
                if (i4 < cArr2.length) {
                    cArr[i4] = com.google.common.base.c.e(cArr2[i4]);
                    i4++;
                } else {
                    return new f(this.f34404a + ".lowerCase()", cArr);
                }
            }
        }

        public int hashCode() {
            return Arrays.hashCode(this.f34405b);
        }

        public boolean i(char c10) {
            byte[] bArr = this.f34410g;
            return c10 < bArr.length && bArr[c10] != -1;
        }

        f j() {
            if (!e()) {
                return this;
            }
            com.google.common.base.a0.h0(!f(), "Cannot call upperCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f34405b.length];
            int i4 = 0;
            while (true) {
                char[] cArr2 = this.f34405b;
                if (i4 < cArr2.length) {
                    cArr[i4] = com.google.common.base.c.h(cArr2[i4]);
                    i4++;
                } else {
                    return new f(this.f34404a + ".upperCase()", cArr);
                }
            }
        }

        public String toString() {
            return this.f34404a;
        }
    }

    /* loaded from: classes2.dex */
    static final class g extends j {

        /* renamed from: j  reason: collision with root package name */
        final char[] f34412j;

        g(String str, String str2) {
            this(new f(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.j
        BaseEncoding D(f fVar, @NullableDecl Character ch) {
            return new g(fVar);
        }

        @Override // com.google.common.io.BaseEncoding.j, com.google.common.io.BaseEncoding
        int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            com.google.common.base.a0.E(bArr);
            if (charSequence.length() % 2 != 1) {
                int i4 = 0;
                int i10 = 0;
                while (i4 < charSequence.length()) {
                    bArr[i10] = (byte) ((this.f34416f.c(charSequence.charAt(i4)) << 4) | this.f34416f.c(charSequence.charAt(i4 + 1)));
                    i4 += 2;
                    i10++;
                }
                return i10;
            }
            throw new DecodingException("Invalid input length " + charSequence.length());
        }

        @Override // com.google.common.io.BaseEncoding.j, com.google.common.io.BaseEncoding
        void n(Appendable appendable, byte[] bArr, int i4, int i10) throws IOException {
            com.google.common.base.a0.E(appendable);
            com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = bArr[i4 + i11] & 255;
                appendable.append(this.f34412j[i12]);
                appendable.append(this.f34412j[i12 | 256]);
            }
        }

        private g(f fVar) {
            super(fVar, null);
            this.f34412j = new char[512];
            com.google.common.base.a0.d(fVar.f34405b.length == 16);
            for (int i4 = 0; i4 < 256; i4++) {
                this.f34412j[i4] = fVar.d(i4 >>> 4);
                this.f34412j[i4 | 256] = fVar.d(i4 & 15);
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class h extends j {
        h(String str, String str2, @NullableDecl Character ch) {
            this(new f(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding.j
        BaseEncoding D(f fVar, @NullableDecl Character ch) {
            return new h(fVar, ch);
        }

        @Override // com.google.common.io.BaseEncoding.j, com.google.common.io.BaseEncoding
        int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            com.google.common.base.a0.E(bArr);
            CharSequence y9 = y(charSequence);
            if (this.f34416f.g(y9.length())) {
                int i4 = 0;
                int i10 = 0;
                while (i4 < y9.length()) {
                    int i11 = i4 + 1;
                    int i12 = i11 + 1;
                    int c10 = (this.f34416f.c(y9.charAt(i4)) << 18) | (this.f34416f.c(y9.charAt(i11)) << 12);
                    int i13 = i10 + 1;
                    bArr[i10] = (byte) (c10 >>> 16);
                    if (i12 < y9.length()) {
                        int i14 = i12 + 1;
                        int c11 = c10 | (this.f34416f.c(y9.charAt(i12)) << 6);
                        i10 = i13 + 1;
                        bArr[i13] = (byte) ((c11 >>> 8) & 255);
                        if (i14 < y9.length()) {
                            i12 = i14 + 1;
                            i13 = i10 + 1;
                            bArr[i10] = (byte) ((c11 | this.f34416f.c(y9.charAt(i14))) & 255);
                        } else {
                            i4 = i14;
                        }
                    }
                    i10 = i13;
                    i4 = i12;
                }
                return i10;
            }
            throw new DecodingException("Invalid input length " + y9.length());
        }

        @Override // com.google.common.io.BaseEncoding.j, com.google.common.io.BaseEncoding
        void n(Appendable appendable, byte[] bArr, int i4, int i10) throws IOException {
            com.google.common.base.a0.E(appendable);
            int i11 = i4 + i10;
            com.google.common.base.a0.f0(i4, i11, bArr.length);
            while (i10 >= 3) {
                int i12 = i4 + 1;
                int i13 = i12 + 1;
                int i14 = ((bArr[i4] & 255) << 16) | ((bArr[i12] & 255) << 8) | (bArr[i13] & 255);
                appendable.append(this.f34416f.d(i14 >>> 18));
                appendable.append(this.f34416f.d((i14 >>> 12) & 63));
                appendable.append(this.f34416f.d((i14 >>> 6) & 63));
                appendable.append(this.f34416f.d(i14 & 63));
                i10 -= 3;
                i4 = i13 + 1;
            }
            if (i4 < i11) {
                C(appendable, bArr, i4, i11 - i4);
            }
        }

        private h(f fVar, @NullableDecl Character ch) {
            super(fVar, ch);
            com.google.common.base.a0.d(fVar.f34405b.length == 64);
        }
    }

    /* loaded from: classes2.dex */
    static final class i extends BaseEncoding {

        /* renamed from: f  reason: collision with root package name */
        private final BaseEncoding f34413f;

        /* renamed from: g  reason: collision with root package name */
        private final String f34414g;

        /* renamed from: h  reason: collision with root package name */
        private final int f34415h;

        i(BaseEncoding baseEncoding, String str, int i4) {
            this.f34413f = (BaseEncoding) com.google.common.base.a0.E(baseEncoding);
            this.f34414g = (String) com.google.common.base.a0.E(str);
            this.f34415h = i4;
            com.google.common.base.a0.k(i4 > 0, "Cannot add a separator after every %s chars", i4);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding A(char c10) {
            return this.f34413f.A(c10).B(this.f34414g, this.f34415h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding B(String str, int i4) {
            throw new UnsupportedOperationException("Already have a separator");
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean f(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < charSequence.length(); i4++) {
                char charAt = charSequence.charAt(i4);
                if (this.f34414g.indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.f34413f.f(sb);
        }

        @Override // com.google.common.io.BaseEncoding
        int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i4 = 0; i4 < charSequence.length(); i4++) {
                char charAt = charSequence.charAt(i4);
                if (this.f34414g.indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.f34413f.i(bArr, sb);
        }

        @Override // com.google.common.io.BaseEncoding
        @h3.c
        public InputStream k(Reader reader) {
            return this.f34413f.k(BaseEncoding.r(reader, this.f34414g));
        }

        @Override // com.google.common.io.BaseEncoding
        void n(Appendable appendable, byte[] bArr, int i4, int i10) throws IOException {
            this.f34413f.n(BaseEncoding.w(appendable, this.f34414g, this.f34415h), bArr, i4, i10);
        }

        @Override // com.google.common.io.BaseEncoding
        @h3.c
        public OutputStream p(Writer writer) {
            return this.f34413f.p(BaseEncoding.x(writer, this.f34414g, this.f34415h));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding s() {
            return this.f34413f.s().B(this.f34414g, this.f34415h);
        }

        @Override // com.google.common.io.BaseEncoding
        int t(int i4) {
            return this.f34413f.t(i4);
        }

        public String toString() {
            return this.f34413f + ".withSeparator(\"" + this.f34414g + "\", " + this.f34415h + ")";
        }

        @Override // com.google.common.io.BaseEncoding
        int u(int i4) {
            int u9 = this.f34413f.u(i4);
            return u9 + (this.f34414g.length() * com.google.common.math.d.g(Math.max(0, u9 - 1), this.f34415h, RoundingMode.FLOOR));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding v() {
            return this.f34413f.v().B(this.f34414g, this.f34415h);
        }

        @Override // com.google.common.io.BaseEncoding
        CharSequence y(CharSequence charSequence) {
            return this.f34413f.y(charSequence);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding z() {
            return this.f34413f.z().B(this.f34414g, this.f34415h);
        }
    }

    /* loaded from: classes2.dex */
    static class j extends BaseEncoding {

        /* renamed from: f  reason: collision with root package name */
        final f f34416f;
        @NullableDecl

        /* renamed from: g  reason: collision with root package name */
        final Character f34417g;
        @MonotonicNonNullDecl

        /* renamed from: h  reason: collision with root package name */
        private transient BaseEncoding f34418h;
        @MonotonicNonNullDecl

        /* renamed from: i  reason: collision with root package name */
        private transient BaseEncoding f34419i;

        /* loaded from: classes2.dex */
        class a extends OutputStream {

            /* renamed from: a  reason: collision with root package name */
            int f34420a = 0;

            /* renamed from: b  reason: collision with root package name */
            int f34421b = 0;

            /* renamed from: c  reason: collision with root package name */
            int f34422c = 0;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Writer f34423d;

            a(Writer writer) {
                this.f34423d = writer;
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                int i4 = this.f34421b;
                if (i4 > 0) {
                    int i10 = this.f34420a;
                    f fVar = j.this.f34416f;
                    this.f34423d.write(fVar.d((i10 << (fVar.f34407d - i4)) & fVar.f34406c));
                    this.f34422c++;
                    if (j.this.f34417g != null) {
                        while (true) {
                            int i11 = this.f34422c;
                            j jVar = j.this;
                            if (i11 % jVar.f34416f.f34408e == 0) {
                                break;
                            }
                            this.f34423d.write(jVar.f34417g.charValue());
                            this.f34422c++;
                        }
                    }
                }
                this.f34423d.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                this.f34423d.flush();
            }

            @Override // java.io.OutputStream
            public void write(int i4) throws IOException {
                this.f34420a = (i4 & 255) | (this.f34420a << 8);
                this.f34421b += 8;
                while (true) {
                    int i10 = this.f34421b;
                    f fVar = j.this.f34416f;
                    int i11 = fVar.f34407d;
                    if (i10 < i11) {
                        return;
                    }
                    this.f34423d.write(fVar.d((this.f34420a >> (i10 - i11)) & fVar.f34406c));
                    this.f34422c++;
                    this.f34421b -= j.this.f34416f.f34407d;
                }
            }
        }

        /* loaded from: classes2.dex */
        class b extends InputStream {

            /* renamed from: a  reason: collision with root package name */
            int f34425a = 0;

            /* renamed from: b  reason: collision with root package name */
            int f34426b = 0;

            /* renamed from: c  reason: collision with root package name */
            int f34427c = 0;

            /* renamed from: d  reason: collision with root package name */
            boolean f34428d = false;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Reader f34429e;

            b(Reader reader) {
                this.f34429e = reader;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.f34429e.close();
            }

            /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
                throw new com.google.common.io.BaseEncoding.DecodingException("Padding cannot start at index " + r4.f34427c);
             */
            @Override // java.io.InputStream
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public int read() throws java.io.IOException {
                /*
                    r4 = this;
                L0:
                    java.io.Reader r0 = r4.f34429e
                    int r0 = r0.read()
                    r1 = -1
                    if (r0 != r1) goto L34
                    boolean r0 = r4.f34428d
                    if (r0 != 0) goto L33
                    com.google.common.io.BaseEncoding$j r0 = com.google.common.io.BaseEncoding.j.this
                    com.google.common.io.BaseEncoding$f r0 = r0.f34416f
                    int r2 = r4.f34427c
                    boolean r0 = r0.g(r2)
                    if (r0 == 0) goto L1a
                    goto L33
                L1a:
                    com.google.common.io.BaseEncoding$DecodingException r0 = new com.google.common.io.BaseEncoding$DecodingException
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    java.lang.String r2 = "Invalid input length "
                    r1.append(r2)
                    int r2 = r4.f34427c
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    r0.<init>(r1)
                    throw r0
                L33:
                    return r1
                L34:
                    int r1 = r4.f34427c
                    r2 = 1
                    int r1 = r1 + r2
                    r4.f34427c = r1
                    char r0 = (char) r0
                    com.google.common.io.BaseEncoding$j r1 = com.google.common.io.BaseEncoding.j.this
                    java.lang.Character r1 = r1.f34417g
                    if (r1 == 0) goto L78
                    char r1 = r1.charValue()
                    if (r1 != r0) goto L78
                    boolean r0 = r4.f34428d
                    if (r0 != 0) goto L75
                    int r0 = r4.f34427c
                    if (r0 == r2) goto L5c
                    com.google.common.io.BaseEncoding$j r1 = com.google.common.io.BaseEncoding.j.this
                    com.google.common.io.BaseEncoding$f r1 = r1.f34416f
                    int r0 = r0 + (-1)
                    boolean r0 = r1.g(r0)
                    if (r0 == 0) goto L5c
                    goto L75
                L5c:
                    com.google.common.io.BaseEncoding$DecodingException r0 = new com.google.common.io.BaseEncoding$DecodingException
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    java.lang.String r2 = "Padding cannot start at index "
                    r1.append(r2)
                    int r2 = r4.f34427c
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    r0.<init>(r1)
                    throw r0
                L75:
                    r4.f34428d = r2
                    goto L0
                L78:
                    boolean r1 = r4.f34428d
                    if (r1 != 0) goto La4
                    int r1 = r4.f34425a
                    com.google.common.io.BaseEncoding$j r2 = com.google.common.io.BaseEncoding.j.this
                    com.google.common.io.BaseEncoding$f r2 = r2.f34416f
                    int r3 = r2.f34407d
                    int r1 = r1 << r3
                    r4.f34425a = r1
                    int r0 = r2.c(r0)
                    r0 = r0 | r1
                    r4.f34425a = r0
                    int r1 = r4.f34426b
                    com.google.common.io.BaseEncoding$j r2 = com.google.common.io.BaseEncoding.j.this
                    com.google.common.io.BaseEncoding$f r2 = r2.f34416f
                    int r2 = r2.f34407d
                    int r1 = r1 + r2
                    r4.f34426b = r1
                    r2 = 8
                    if (r1 < r2) goto L0
                    int r1 = r1 - r2
                    r4.f34426b = r1
                    int r0 = r0 >> r1
                    r0 = r0 & 255(0xff, float:3.57E-43)
                    return r0
                La4:
                    com.google.common.io.BaseEncoding$DecodingException r1 = new com.google.common.io.BaseEncoding$DecodingException
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    r2.<init>()
                    java.lang.String r3 = "Expected padding character but found '"
                    r2.append(r3)
                    r2.append(r0)
                    java.lang.String r0 = "' at index "
                    r2.append(r0)
                    int r0 = r4.f34427c
                    r2.append(r0)
                    java.lang.String r0 = r2.toString()
                    r1.<init>(r0)
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.j.b.read():int");
            }
        }

        j(String str, String str2, @NullableDecl Character ch) {
            this(new f(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding A(char c10) {
            Character ch;
            return (8 % this.f34416f.f34407d == 0 || ((ch = this.f34417g) != null && ch.charValue() == c10)) ? this : D(this.f34416f, Character.valueOf(c10));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding B(String str, int i4) {
            for (int i10 = 0; i10 < str.length(); i10++) {
                com.google.common.base.a0.u(!this.f34416f.i(str.charAt(i10)), "Separator (%s) cannot contain alphabet characters", str);
            }
            Character ch = this.f34417g;
            if (ch != null) {
                com.google.common.base.a0.u(str.indexOf(ch.charValue()) < 0, "Separator (%s) cannot contain padding character", str);
            }
            return new i(this, str, i4);
        }

        void C(Appendable appendable, byte[] bArr, int i4, int i10) throws IOException {
            com.google.common.base.a0.E(appendable);
            com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
            int i11 = 0;
            com.google.common.base.a0.d(i10 <= this.f34416f.f34409f);
            long j4 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                j4 = (j4 | (bArr[i4 + i12] & 255)) << 8;
            }
            int i13 = ((i10 + 1) * 8) - this.f34416f.f34407d;
            while (i11 < i10 * 8) {
                f fVar = this.f34416f;
                appendable.append(fVar.d(((int) (j4 >>> (i13 - i11))) & fVar.f34406c));
                i11 += this.f34416f.f34407d;
            }
            if (this.f34417g != null) {
                while (i11 < this.f34416f.f34409f * 8) {
                    appendable.append(this.f34417g.charValue());
                    i11 += this.f34416f.f34407d;
                }
            }
        }

        BaseEncoding D(f fVar, @NullableDecl Character ch) {
            return new j(fVar, ch);
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                return this.f34416f.equals(jVar.f34416f) && com.google.common.base.w.a(this.f34417g, jVar.f34417g);
            }
            return false;
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean f(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            CharSequence y9 = y(charSequence);
            if (this.f34416f.g(y9.length())) {
                for (int i4 = 0; i4 < y9.length(); i4++) {
                    if (!this.f34416f.b(y9.charAt(i4))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f34416f.hashCode() ^ com.google.common.base.w.b(this.f34417g);
        }

        @Override // com.google.common.io.BaseEncoding
        int i(byte[] bArr, CharSequence charSequence) throws DecodingException {
            f fVar;
            com.google.common.base.a0.E(bArr);
            CharSequence y9 = y(charSequence);
            if (this.f34416f.g(y9.length())) {
                int i4 = 0;
                int i10 = 0;
                while (i4 < y9.length()) {
                    long j4 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    while (true) {
                        fVar = this.f34416f;
                        if (i11 >= fVar.f34408e) {
                            break;
                        }
                        j4 <<= fVar.f34407d;
                        if (i4 + i11 < y9.length()) {
                            j4 |= this.f34416f.c(y9.charAt(i12 + i4));
                            i12++;
                        }
                        i11++;
                    }
                    int i13 = fVar.f34409f;
                    int i14 = (i13 * 8) - (i12 * fVar.f34407d);
                    int i15 = (i13 - 1) * 8;
                    while (i15 >= i14) {
                        bArr[i10] = (byte) ((j4 >>> i15) & 255);
                        i15 -= 8;
                        i10++;
                    }
                    i4 += this.f34416f.f34408e;
                }
                return i10;
            }
            throw new DecodingException("Invalid input length " + y9.length());
        }

        @Override // com.google.common.io.BaseEncoding
        @h3.c
        public InputStream k(Reader reader) {
            com.google.common.base.a0.E(reader);
            return new b(reader);
        }

        @Override // com.google.common.io.BaseEncoding
        void n(Appendable appendable, byte[] bArr, int i4, int i10) throws IOException {
            com.google.common.base.a0.E(appendable);
            com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
            int i11 = 0;
            while (i11 < i10) {
                C(appendable, bArr, i4 + i11, Math.min(this.f34416f.f34409f, i10 - i11));
                i11 += this.f34416f.f34409f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        @h3.c
        public OutputStream p(Writer writer) {
            com.google.common.base.a0.E(writer);
            return new a(writer);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding s() {
            BaseEncoding baseEncoding = this.f34419i;
            if (baseEncoding == null) {
                f h4 = this.f34416f.h();
                baseEncoding = h4 == this.f34416f ? this : D(h4, this.f34417g);
                this.f34419i = baseEncoding;
            }
            return baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        int t(int i4) {
            return (int) (((this.f34416f.f34407d * i4) + 7) / 8);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f34416f.toString());
            if (8 % this.f34416f.f34407d != 0) {
                if (this.f34417g == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f34417g);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        @Override // com.google.common.io.BaseEncoding
        int u(int i4) {
            f fVar = this.f34416f;
            return fVar.f34408e * com.google.common.math.d.g(i4, fVar.f34409f, RoundingMode.CEILING);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding v() {
            return this.f34417g == null ? this : D(this.f34416f, null);
        }

        @Override // com.google.common.io.BaseEncoding
        CharSequence y(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            Character ch = this.f34417g;
            if (ch == null) {
                return charSequence;
            }
            char charValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding z() {
            BaseEncoding baseEncoding = this.f34418h;
            if (baseEncoding == null) {
                f j4 = this.f34416f.j();
                baseEncoding = j4 == this.f34416f ? this : D(j4, this.f34417g);
                this.f34418h = baseEncoding;
            }
            return baseEncoding;
        }

        j(f fVar, @NullableDecl Character ch) {
            this.f34416f = (f) com.google.common.base.a0.E(fVar);
            com.google.common.base.a0.u(ch == null || !fVar.i(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f34417g = ch;
        }
    }

    BaseEncoding() {
    }

    public static BaseEncoding a() {
        return f34391e;
    }

    public static BaseEncoding b() {
        return f34389c;
    }

    public static BaseEncoding c() {
        return f34390d;
    }

    public static BaseEncoding d() {
        return f34387a;
    }

    public static BaseEncoding e() {
        return f34388b;
    }

    private static byte[] q(byte[] bArr, int i4) {
        if (i4 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        return bArr2;
    }

    @h3.c
    static Reader r(Reader reader, String str) {
        com.google.common.base.a0.E(reader);
        com.google.common.base.a0.E(str);
        return new c(reader, str);
    }

    static Appendable w(Appendable appendable, String str, int i4) {
        com.google.common.base.a0.E(appendable);
        com.google.common.base.a0.E(str);
        com.google.common.base.a0.d(i4 > 0);
        return new d(i4, appendable, str);
    }

    @h3.c
    static Writer x(Writer writer, String str, int i4) {
        return new e(w(writer, str, i4), writer);
    }

    public abstract BaseEncoding A(char c10);

    public abstract BaseEncoding B(String str, int i4);

    public abstract boolean f(CharSequence charSequence);

    public final byte[] g(CharSequence charSequence) {
        try {
            return h(charSequence);
        } catch (DecodingException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    final byte[] h(CharSequence charSequence) throws DecodingException {
        CharSequence y9 = y(charSequence);
        byte[] bArr = new byte[t(y9.length())];
        return q(bArr, i(bArr, y9));
    }

    abstract int i(byte[] bArr, CharSequence charSequence) throws DecodingException;

    @h3.c
    public final com.google.common.io.f j(com.google.common.io.j jVar) {
        com.google.common.base.a0.E(jVar);
        return new b(jVar);
    }

    @h3.c
    public abstract InputStream k(Reader reader);

    public String l(byte[] bArr) {
        return m(bArr, 0, bArr.length);
    }

    public final String m(byte[] bArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
        StringBuilder sb = new StringBuilder(u(i10));
        try {
            n(sb, bArr, i4, i10);
            return sb.toString();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    abstract void n(Appendable appendable, byte[] bArr, int i4, int i10) throws IOException;

    @h3.c
    public final com.google.common.io.e o(com.google.common.io.i iVar) {
        com.google.common.base.a0.E(iVar);
        return new a(iVar);
    }

    @h3.c
    public abstract OutputStream p(Writer writer);

    public abstract BaseEncoding s();

    abstract int t(int i4);

    abstract int u(int i4);

    public abstract BaseEncoding v();

    CharSequence y(CharSequence charSequence) {
        return (CharSequence) com.google.common.base.a0.E(charSequence);
    }

    public abstract BaseEncoding z();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends Reader {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Reader f34396a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f34397b;

        c(Reader reader, String str) {
            this.f34396a = reader;
            this.f34397b = str;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f34396a.close();
        }

        @Override // java.io.Reader
        public int read() throws IOException {
            int read;
            do {
                read = this.f34396a.read();
                if (read == -1) {
                    break;
                }
            } while (this.f34397b.indexOf((char) read) >= 0);
            return read;
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i4, int i10) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class d implements Appendable {

        /* renamed from: a  reason: collision with root package name */
        int f34398a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f34399b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Appendable f34400c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f34401d;

        d(int i4, Appendable appendable, String str) {
            this.f34399b = i4;
            this.f34400c = appendable;
            this.f34401d = str;
            this.f34398a = i4;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c10) throws IOException {
            if (this.f34398a == 0) {
                this.f34400c.append(this.f34401d);
                this.f34398a = this.f34399b;
            }
            this.f34400c.append(c10);
            this.f34398a--;
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@NullableDecl CharSequence charSequence, int i4, int i10) throws IOException {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Appendable
        public Appendable append(@NullableDecl CharSequence charSequence) throws IOException {
            throw new UnsupportedOperationException();
        }
    }
}
