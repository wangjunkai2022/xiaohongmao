package com.google.common.io;

import com.google.common.base.Optional;
import com.google.common.base.f0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.b3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: CharSource.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharSource.java */
    /* loaded from: classes2.dex */
    public final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final Charset f34469a;

        a(Charset charset) {
            this.f34469a = (Charset) com.google.common.base.a0.E(charset);
        }

        @Override // com.google.common.io.f
        public j a(Charset charset) {
            if (charset.equals(this.f34469a)) {
                return j.this;
            }
            return super.a(charset);
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return new a0(j.this.m(), this.f34469a, 8192);
        }

        public String toString() {
            return j.this.toString() + ".asByteSource(" + this.f34469a + ")";
        }
    }

    /* compiled from: CharSource.java */
    /* loaded from: classes2.dex */
    private static class b extends j {

        /* renamed from: b  reason: collision with root package name */
        private static final f0 f34471b = f0.m("\r\n|\n|\r");

        /* renamed from: a  reason: collision with root package name */
        protected final CharSequence f34472a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CharSource.java */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<String> {

            /* renamed from: c  reason: collision with root package name */
            Iterator<String> f34473c;

            a() {
                this.f34473c = b.f34471b.n(b.this.f34472a).iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public String a() {
                if (this.f34473c.hasNext()) {
                    String next = this.f34473c.next();
                    if (this.f34473c.hasNext() || !next.isEmpty()) {
                        return next;
                    }
                }
                return b();
            }
        }

        protected b(CharSequence charSequence) {
            this.f34472a = (CharSequence) com.google.common.base.a0.E(charSequence);
        }

        private Iterator<String> t() {
            return new a();
        }

        @Override // com.google.common.io.j
        public boolean i() {
            return this.f34472a.length() == 0;
        }

        @Override // com.google.common.io.j
        public long j() {
            return this.f34472a.length();
        }

        @Override // com.google.common.io.j
        public Optional<Long> k() {
            return Optional.of(Long.valueOf(this.f34472a.length()));
        }

        @Override // com.google.common.io.j
        public Reader m() {
            return new h(this.f34472a);
        }

        @Override // com.google.common.io.j
        public String n() {
            return this.f34472a.toString();
        }

        @Override // com.google.common.io.j
        public String o() {
            Iterator<String> t9 = t();
            if (t9.hasNext()) {
                return t9.next();
            }
            return null;
        }

        @Override // com.google.common.io.j
        public ImmutableList<String> p() {
            return ImmutableList.copyOf(t());
        }

        @Override // com.google.common.io.j
        public <T> T q(t<T> tVar) throws IOException {
            Iterator<String> t9 = t();
            while (t9.hasNext() && tVar.b(t9.next())) {
            }
            return tVar.a();
        }

        public String toString() {
            return "CharSource.wrap(" + com.google.common.base.c.k(this.f34472a, 30, "...") + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharSource.java */
    /* loaded from: classes2.dex */
    public static final class c extends j {

        /* renamed from: a  reason: collision with root package name */
        private final Iterable<? extends j> f34475a;

        c(Iterable<? extends j> iterable) {
            this.f34475a = (Iterable) com.google.common.base.a0.E(iterable);
        }

        @Override // com.google.common.io.j
        public boolean i() throws IOException {
            for (j jVar : this.f34475a) {
                if (!jVar.i()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.j
        public long j() throws IOException {
            long j4 = 0;
            for (j jVar : this.f34475a) {
                j4 += jVar.j();
            }
            return j4;
        }

        @Override // com.google.common.io.j
        public Optional<Long> k() {
            long j4 = 0;
            for (j jVar : this.f34475a) {
                Optional<Long> k10 = jVar.k();
                if (!k10.isPresent()) {
                    return Optional.absent();
                }
                j4 += k10.get().longValue();
            }
            return Optional.of(Long.valueOf(j4));
        }

        @Override // com.google.common.io.j
        public Reader m() throws IOException {
            return new y(this.f34475a.iterator());
        }

        public String toString() {
            return "CharSource.concat(" + this.f34475a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharSource.java */
    /* loaded from: classes2.dex */
    public static final class d extends e {

        /* renamed from: c  reason: collision with root package name */
        private static final d f34476c = new d();

        private d() {
            super("");
        }

        @Override // com.google.common.io.j.b
        public String toString() {
            return "CharSource.empty()";
        }
    }

    /* compiled from: CharSource.java */
    /* loaded from: classes2.dex */
    private static class e extends b {
        protected e(String str) {
            super(str);
        }

        @Override // com.google.common.io.j
        public long e(i iVar) throws IOException {
            m a10;
            com.google.common.base.a0.E(iVar);
            try {
                ((Writer) m.a().b(iVar.b())).write((String) this.f34472a);
                return this.f34472a.length();
            } finally {
            }
        }

        @Override // com.google.common.io.j
        public long f(Appendable appendable) throws IOException {
            appendable.append(this.f34472a);
            return this.f34472a.length();
        }

        @Override // com.google.common.io.j.b, com.google.common.io.j
        public Reader m() {
            return new StringReader((String) this.f34472a);
        }
    }

    public static j b(Iterable<? extends j> iterable) {
        return new c(iterable);
    }

    public static j c(Iterator<? extends j> it) {
        return b(ImmutableList.copyOf(it));
    }

    public static j d(j... jVarArr) {
        return b(ImmutableList.copyOf(jVarArr));
    }

    private long g(Reader reader) throws IOException {
        long j4 = 0;
        while (true) {
            long skip = reader.skip(Long.MAX_VALUE);
            if (skip == 0) {
                return j4;
            }
            j4 += skip;
        }
    }

    public static j h() {
        return d.f34476c;
    }

    public static j r(CharSequence charSequence) {
        return charSequence instanceof String ? new e((String) charSequence) : new b(charSequence);
    }

    @h3.a
    public f a(Charset charset) {
        return new a(charset);
    }

    @CanIgnoreReturnValue
    public long e(i iVar) throws IOException {
        com.google.common.base.a0.E(iVar);
        m a10 = m.a();
        try {
            return k.b((Reader) a10.b(m()), (Writer) a10.b(iVar.b()));
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long f(Appendable appendable) throws IOException {
        com.google.common.base.a0.E(appendable);
        try {
            return k.b((Reader) m.a().b(m()), appendable);
        } finally {
        }
    }

    public boolean i() throws IOException {
        Optional<Long> k10 = k();
        if (k10.isPresent()) {
            return k10.get().longValue() == 0;
        }
        m a10 = m.a();
        try {
            return ((Reader) a10.b(m())).read() == -1;
        } catch (Throwable th) {
            try {
                throw a10.d(th);
            } finally {
                a10.close();
            }
        }
    }

    @h3.a
    public long j() throws IOException {
        Optional<Long> k10 = k();
        if (k10.isPresent()) {
            return k10.get().longValue();
        }
        try {
            return g((Reader) m.a().b(m()));
        } finally {
        }
    }

    @h3.a
    public Optional<Long> k() {
        return Optional.absent();
    }

    public BufferedReader l() throws IOException {
        Reader m9 = m();
        return m9 instanceof BufferedReader ? (BufferedReader) m9 : new BufferedReader(m9);
    }

    public abstract Reader m() throws IOException;

    public String n() throws IOException {
        try {
            return k.k((Reader) m.a().b(m()));
        } finally {
        }
    }

    @NullableDecl
    public String o() throws IOException {
        try {
            return ((BufferedReader) m.a().b(l())).readLine();
        } finally {
        }
    }

    public ImmutableList<String> p() throws IOException {
        try {
            BufferedReader bufferedReader = (BufferedReader) m.a().b(l());
            ArrayList q9 = b3.q();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    q9.add(readLine);
                } else {
                    return ImmutableList.copyOf((Collection) q9);
                }
            }
        } finally {
        }
    }

    @CanIgnoreReturnValue
    @h3.a
    public <T> T q(t<T> tVar) throws IOException {
        com.google.common.base.a0.E(tVar);
        try {
            return (T) k.h((Reader) m.a().b(m()), tVar);
        } finally {
        }
    }
}
