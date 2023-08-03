package com.google.common.hash;

import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Funnels.java */
@h3.a
/* loaded from: classes2.dex */
public final class k {

    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    private enum a implements Funnel<byte[]> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* renamed from: a */
        public void funnel(byte[] bArr, a0 a0Var) {
            a0Var.a(bArr);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    private enum b implements Funnel<Integer> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* renamed from: a */
        public void funnel(Integer num, a0 a0Var) {
            a0Var.putInt(num.intValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    private enum c implements Funnel<Long> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* renamed from: a */
        public void funnel(Long l10, a0 a0Var) {
            a0Var.putLong(l10.longValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.longFunnel()";
        }
    }

    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    private static class d<E> implements Funnel<Iterable<? extends E>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Funnel<E> f34308a;

        d(Funnel<E> funnel) {
            this.f34308a = (Funnel) com.google.common.base.a0.E(funnel);
        }

        @Override // com.google.common.hash.Funnel
        /* renamed from: a */
        public void funnel(Iterable<? extends E> iterable, a0 a0Var) {
            for (E e4 : iterable) {
                this.f34308a.funnel(e4, a0Var);
            }
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                return this.f34308a.equals(((d) obj).f34308a);
            }
            return false;
        }

        public int hashCode() {
            return d.class.hashCode() ^ this.f34308a.hashCode();
        }

        public String toString() {
            return "Funnels.sequentialFunnel(" + this.f34308a + ")";
        }
    }

    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    private static class e extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        final a0 f34309a;

        e(a0 a0Var) {
            this.f34309a = (a0) com.google.common.base.a0.E(a0Var);
        }

        public String toString() {
            return "Funnels.asOutputStream(" + this.f34309a + ")";
        }

        @Override // java.io.OutputStream
        public void write(int i4) {
            this.f34309a.c((byte) i4);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.f34309a.a(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i4, int i10) {
            this.f34309a.e(bArr, i4, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    public static class f implements Funnel<CharSequence>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Charset f34310a;

        /* compiled from: Funnels.java */
        /* loaded from: classes2.dex */
        private static class a implements Serializable {

            /* renamed from: b  reason: collision with root package name */
            private static final long f34311b = 0;

            /* renamed from: a  reason: collision with root package name */
            private final String f34312a;

            a(Charset charset) {
                this.f34312a = charset.name();
            }

            private Object a() {
                return k.f(Charset.forName(this.f34312a));
            }
        }

        f(Charset charset) {
            this.f34310a = (Charset) com.google.common.base.a0.E(charset);
        }

        @Override // com.google.common.hash.Funnel
        /* renamed from: a */
        public void funnel(CharSequence charSequence, a0 a0Var) {
            a0Var.g(charSequence, this.f34310a);
        }

        Object b() {
            return new a(this.f34310a);
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f34310a.equals(((f) obj).f34310a);
            }
            return false;
        }

        public int hashCode() {
            return f.class.hashCode() ^ this.f34310a.hashCode();
        }

        public String toString() {
            return "Funnels.stringFunnel(" + this.f34310a.name() + ")";
        }
    }

    /* compiled from: Funnels.java */
    /* loaded from: classes2.dex */
    private enum g implements Funnel<CharSequence> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* renamed from: a */
        public void funnel(CharSequence charSequence, a0 a0Var) {
            a0Var.d(charSequence);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }

    private k() {
    }

    public static OutputStream a(a0 a0Var) {
        return new e(a0Var);
    }

    public static Funnel<byte[]> b() {
        return a.INSTANCE;
    }

    public static Funnel<Integer> c() {
        return b.INSTANCE;
    }

    public static Funnel<Long> d() {
        return c.INSTANCE;
    }

    public static <E> Funnel<Iterable<? extends E>> e(Funnel<E> funnel) {
        return new d(funnel);
    }

    public static Funnel<CharSequence> f(Charset charset) {
        return new f(charset);
    }

    public static Funnel<CharSequence> g() {
        return g.INSTANCE;
    }
}
