package com.google.common.io;

import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: ByteSource.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class f {

    /* compiled from: ByteSource.java */
    /* loaded from: classes2.dex */
    class a extends j {

        /* renamed from: a  reason: collision with root package name */
        final Charset f34446a;

        a(Charset charset) {
            this.f34446a = (Charset) com.google.common.base.a0.E(charset);
        }

        @Override // com.google.common.io.j
        public f a(Charset charset) {
            if (charset.equals(this.f34446a)) {
                return f.this;
            }
            return super.a(charset);
        }

        @Override // com.google.common.io.j
        public Reader m() throws IOException {
            return new InputStreamReader(f.this.m(), this.f34446a);
        }

        @Override // com.google.common.io.j
        public String n() throws IOException {
            return new String(f.this.o(), this.f34446a);
        }

        public String toString() {
            return f.this.toString() + ".asCharSource(" + this.f34446a + ")";
        }
    }

    /* compiled from: ByteSource.java */
    /* loaded from: classes2.dex */
    private static class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final byte[] f34448a;

        /* renamed from: b  reason: collision with root package name */
        final int f34449b;

        /* renamed from: c  reason: collision with root package name */
        final int f34450c;

        b(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // com.google.common.io.f
        public long g(OutputStream outputStream) throws IOException {
            outputStream.write(this.f34448a, this.f34449b, this.f34450c);
            return this.f34450c;
        }

        @Override // com.google.common.io.f
        public com.google.common.hash.l j(com.google.common.hash.m mVar) throws IOException {
            return mVar.m(this.f34448a, this.f34449b, this.f34450c);
        }

        @Override // com.google.common.io.f
        public boolean k() {
            return this.f34450c == 0;
        }

        @Override // com.google.common.io.f
        public InputStream l() throws IOException {
            return m();
        }

        @Override // com.google.common.io.f
        public InputStream m() {
            return new ByteArrayInputStream(this.f34448a, this.f34449b, this.f34450c);
        }

        @Override // com.google.common.io.f
        public <T> T n(com.google.common.io.d<T> dVar) throws IOException {
            dVar.b(this.f34448a, this.f34449b, this.f34450c);
            return dVar.a();
        }

        @Override // com.google.common.io.f
        public byte[] o() {
            byte[] bArr = this.f34448a;
            int i4 = this.f34449b;
            return Arrays.copyOfRange(bArr, i4, this.f34450c + i4);
        }

        @Override // com.google.common.io.f
        public long p() {
            return this.f34450c;
        }

        @Override // com.google.common.io.f
        public Optional<Long> q() {
            return Optional.of(Long.valueOf(this.f34450c));
        }

        @Override // com.google.common.io.f
        public f r(long j4, long j10) {
            com.google.common.base.a0.p(j4 >= 0, "offset (%s) may not be negative", j4);
            com.google.common.base.a0.p(j10 >= 0, "length (%s) may not be negative", j10);
            long min = Math.min(j4, this.f34450c);
            return new b(this.f34448a, this.f34449b + ((int) min), (int) Math.min(j10, this.f34450c - min));
        }

        public String toString() {
            return "ByteSource.wrap(" + com.google.common.base.c.k(BaseEncoding.a().m(this.f34448a, this.f34449b, this.f34450c), 30, "...") + ")";
        }

        b(byte[] bArr, int i4, int i10) {
            this.f34448a = bArr;
            this.f34449b = i4;
            this.f34450c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ByteSource.java */
    /* loaded from: classes2.dex */
    public static final class c extends f {

        /* renamed from: a  reason: collision with root package name */
        final Iterable<? extends f> f34451a;

        c(Iterable<? extends f> iterable) {
            this.f34451a = (Iterable) com.google.common.base.a0.E(iterable);
        }

        @Override // com.google.common.io.f
        public boolean k() throws IOException {
            for (f fVar : this.f34451a) {
                if (!fVar.k()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return new x(this.f34451a.iterator());
        }

        @Override // com.google.common.io.f
        public long p() throws IOException {
            long j4 = 0;
            for (f fVar : this.f34451a) {
                j4 += fVar.p();
                if (j4 < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return j4;
        }

        @Override // com.google.common.io.f
        public Optional<Long> q() {
            Iterable<? extends f> iterable = this.f34451a;
            if (!(iterable instanceof Collection)) {
                return Optional.absent();
            }
            long j4 = 0;
            for (f fVar : iterable) {
                Optional<Long> q9 = fVar.q();
                if (!q9.isPresent()) {
                    return Optional.absent();
                }
                j4 += q9.get().longValue();
                if (j4 < 0) {
                    return Optional.of(Long.MAX_VALUE);
                }
            }
            return Optional.of(Long.valueOf(j4));
        }

        public String toString() {
            return "ByteSource.concat(" + this.f34451a + ")";
        }
    }

    /* compiled from: ByteSource.java */
    /* loaded from: classes2.dex */
    private static final class d extends b {

        /* renamed from: d  reason: collision with root package name */
        static final d f34452d = new d();

        d() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.f
        public j a(Charset charset) {
            com.google.common.base.a0.E(charset);
            return j.h();
        }

        @Override // com.google.common.io.f.b, com.google.common.io.f
        public byte[] o() {
            return this.f34448a;
        }

        @Override // com.google.common.io.f.b
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ByteSource.java */
    /* loaded from: classes2.dex */
    public final class e extends f {

        /* renamed from: a  reason: collision with root package name */
        final long f34453a;

        /* renamed from: b  reason: collision with root package name */
        final long f34454b;

        e(long j4, long j10) {
            com.google.common.base.a0.p(j4 >= 0, "offset (%s) may not be negative", j4);
            com.google.common.base.a0.p(j10 >= 0, "length (%s) may not be negative", j10);
            this.f34453a = j4;
            this.f34454b = j10;
        }

        private InputStream t(InputStream inputStream) throws IOException {
            long j4 = this.f34453a;
            if (j4 > 0) {
                try {
                    if (g.t(inputStream, j4) < this.f34453a) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return g.f(inputStream, this.f34454b);
        }

        @Override // com.google.common.io.f
        public boolean k() throws IOException {
            return this.f34454b == 0 || super.k();
        }

        @Override // com.google.common.io.f
        public InputStream l() throws IOException {
            return t(f.this.l());
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return t(f.this.m());
        }

        @Override // com.google.common.io.f
        public Optional<Long> q() {
            Optional<Long> q9 = f.this.q();
            if (q9.isPresent()) {
                long longValue = q9.get().longValue();
                return Optional.of(Long.valueOf(Math.min(this.f34454b, longValue - Math.min(this.f34453a, longValue))));
            }
            return Optional.absent();
        }

        @Override // com.google.common.io.f
        public f r(long j4, long j10) {
            com.google.common.base.a0.p(j4 >= 0, "offset (%s) may not be negative", j4);
            com.google.common.base.a0.p(j10 >= 0, "length (%s) may not be negative", j10);
            return f.this.r(this.f34453a + j4, Math.min(j10, this.f34454b - j4));
        }

        public String toString() {
            return f.this.toString() + ".slice(" + this.f34453a + ", " + this.f34454b + ")";
        }
    }

    public static f b(Iterable<? extends f> iterable) {
        return new c(iterable);
    }

    public static f c(Iterator<? extends f> it) {
        return b(ImmutableList.copyOf(it));
    }

    public static f d(f... fVarArr) {
        return b(ImmutableList.copyOf(fVarArr));
    }

    private long h(InputStream inputStream) throws IOException {
        long j4 = 0;
        while (true) {
            long t9 = g.t(inputStream, 2147483647L);
            if (t9 <= 0) {
                return j4;
            }
            j4 += t9;
        }
    }

    public static f i() {
        return d.f34452d;
    }

    public static f s(byte[] bArr) {
        return new b(bArr);
    }

    public j a(Charset charset) {
        return new a(charset);
    }

    public boolean e(f fVar) throws IOException {
        int n9;
        com.google.common.base.a0.E(fVar);
        byte[] d4 = g.d();
        byte[] d10 = g.d();
        m a10 = m.a();
        try {
            InputStream inputStream = (InputStream) a10.b(m());
            InputStream inputStream2 = (InputStream) a10.b(fVar.m());
            do {
                n9 = g.n(inputStream, d4, 0, d4.length);
                if (n9 == g.n(inputStream2, d10, 0, d10.length) && Arrays.equals(d4, d10)) {
                }
                return false;
            } while (n9 == d4.length);
            return true;
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long f(com.google.common.io.e eVar) throws IOException {
        com.google.common.base.a0.E(eVar);
        m a10 = m.a();
        try {
            return g.b((InputStream) a10.b(m()), (OutputStream) a10.b(eVar.c()));
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long g(OutputStream outputStream) throws IOException {
        com.google.common.base.a0.E(outputStream);
        try {
            return g.b((InputStream) m.a().b(m()), outputStream);
        } finally {
        }
    }

    public com.google.common.hash.l j(com.google.common.hash.m mVar) throws IOException {
        com.google.common.hash.n h4 = mVar.h();
        g(com.google.common.hash.k.a(h4));
        return h4.i();
    }

    public boolean k() throws IOException {
        Optional<Long> q9 = q();
        if (q9.isPresent()) {
            return q9.get().longValue() == 0;
        }
        m a10 = m.a();
        try {
            return ((InputStream) a10.b(m())).read() == -1;
        } catch (Throwable th) {
            try {
                throw a10.d(th);
            } finally {
                a10.close();
            }
        }
    }

    public InputStream l() throws IOException {
        InputStream m9 = m();
        return m9 instanceof BufferedInputStream ? (BufferedInputStream) m9 : new BufferedInputStream(m9);
    }

    public abstract InputStream m() throws IOException;

    @CanIgnoreReturnValue
    @h3.a
    public <T> T n(com.google.common.io.d<T> dVar) throws IOException {
        com.google.common.base.a0.E(dVar);
        try {
            return (T) g.o((InputStream) m.a().b(m()), dVar);
        } finally {
        }
    }

    public byte[] o() throws IOException {
        byte[] u9;
        m a10 = m.a();
        try {
            InputStream inputStream = (InputStream) a10.b(m());
            Optional<Long> q9 = q();
            if (q9.isPresent()) {
                u9 = g.v(inputStream, q9.get().longValue());
            } else {
                u9 = g.u(inputStream);
            }
            return u9;
        } catch (Throwable th) {
            try {
                throw a10.d(th);
            } finally {
                a10.close();
            }
        }
    }

    public long p() throws IOException {
        Optional<Long> q9 = q();
        if (q9.isPresent()) {
            return q9.get().longValue();
        }
        m a10 = m.a();
        try {
            return h((InputStream) a10.b(m()));
        } catch (IOException unused) {
            a10.close();
            try {
                return g.e((InputStream) m.a().b(m()));
            } finally {
            }
        } finally {
        }
    }

    @h3.a
    public Optional<Long> q() {
        return Optional.absent();
    }

    public f r(long j4, long j10) {
        return new e(j4, j10);
    }
}
