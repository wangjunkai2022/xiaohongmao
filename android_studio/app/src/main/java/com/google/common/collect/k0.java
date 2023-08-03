package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Cut.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class k0<C extends Comparable> implements Comparable<k0<C>>, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f33660b = 0;
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    final C f33661a;

    /* compiled from: Cut.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33662a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f33662a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33662a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cut.java */
    /* loaded from: classes2.dex */
    public static final class b extends k0<Comparable<?>> {

        /* renamed from: c  reason: collision with root package name */
        private static final b f33663c = new b();

        /* renamed from: d  reason: collision with root package name */
        private static final long f33664d = 0;

        private b() {
            super(null);
        }

        private Object u() {
            return f33663c;
        }

        @Override // com.google.common.collect.k0, java.lang.Comparable
        /* renamed from: h */
        public int compareTo(k0<Comparable<?>> k0Var) {
            return k0Var == this ? 0 : 1;
        }

        @Override // com.google.common.collect.k0
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.k0
        void i(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.k0
        void k(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.google.common.collect.k0
        Comparable<?> l() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.k0
        Comparable<?> m(p0<Comparable<?>> p0Var) {
            return p0Var.e();
        }

        @Override // com.google.common.collect.k0
        boolean n(Comparable<?> comparable) {
            return false;
        }

        @Override // com.google.common.collect.k0
        Comparable<?> o(p0<Comparable<?>> p0Var) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.k0
        BoundType p() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.k0
        BoundType q() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.k0
        k0<Comparable<?>> r(BoundType boundType, p0<Comparable<?>> p0Var) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.k0
        k0<Comparable<?>> s(BoundType boundType, p0<Comparable<?>> p0Var) {
            throw new IllegalStateException();
        }

        public String toString() {
            return "+∞";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cut.java */
    /* loaded from: classes2.dex */
    public static final class c<C extends Comparable> extends k0<C> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33665c = 0;

        c(C c10) {
            super((Comparable) com.google.common.base.a0.E(c10));
        }

        @Override // com.google.common.collect.k0, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((k0) obj);
        }

        @Override // com.google.common.collect.k0
        k0<C> e(p0<C> p0Var) {
            C o9 = o(p0Var);
            return o9 != null ? k0.d(o9) : k0.a();
        }

        @Override // com.google.common.collect.k0
        public int hashCode() {
            return ~this.f33661a.hashCode();
        }

        @Override // com.google.common.collect.k0
        void i(StringBuilder sb) {
            sb.append('(');
            sb.append(this.f33661a);
        }

        @Override // com.google.common.collect.k0
        void k(StringBuilder sb) {
            sb.append(this.f33661a);
            sb.append(']');
        }

        @Override // com.google.common.collect.k0
        C m(p0<C> p0Var) {
            return this.f33661a;
        }

        @Override // com.google.common.collect.k0
        boolean n(C c10) {
            return Range.b(this.f33661a, c10) < 0;
        }

        @Override // com.google.common.collect.k0
        C o(p0<C> p0Var) {
            return p0Var.i(this.f33661a);
        }

        @Override // com.google.common.collect.k0
        BoundType p() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.k0
        BoundType q() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.k0
        k0<C> r(BoundType boundType, p0<C> p0Var) {
            int i4 = a.f33662a[boundType.ordinal()];
            if (i4 == 1) {
                C i10 = p0Var.i(this.f33661a);
                return i10 == null ? k0.c() : k0.d(i10);
            } else if (i4 == 2) {
                return this;
            } else {
                throw new AssertionError();
            }
        }

        @Override // com.google.common.collect.k0
        k0<C> s(BoundType boundType, p0<C> p0Var) {
            int i4 = a.f33662a[boundType.ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    C i10 = p0Var.i(this.f33661a);
                    return i10 == null ? k0.a() : k0.d(i10);
                }
                throw new AssertionError();
            }
            return this;
        }

        public String toString() {
            return "/" + this.f33661a + "\\";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cut.java */
    /* loaded from: classes2.dex */
    public static final class d extends k0<Comparable<?>> {

        /* renamed from: c  reason: collision with root package name */
        private static final d f33666c = new d();

        /* renamed from: d  reason: collision with root package name */
        private static final long f33667d = 0;

        private d() {
            super(null);
        }

        private Object u() {
            return f33666c;
        }

        @Override // com.google.common.collect.k0
        k0<Comparable<?>> e(p0<Comparable<?>> p0Var) {
            try {
                return k0.d(p0Var.h());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override // com.google.common.collect.k0, java.lang.Comparable
        /* renamed from: h */
        public int compareTo(k0<Comparable<?>> k0Var) {
            return k0Var == this ? 0 : -1;
        }

        @Override // com.google.common.collect.k0
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.k0
        void i(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // com.google.common.collect.k0
        void k(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.k0
        Comparable<?> l() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.k0
        Comparable<?> m(p0<Comparable<?>> p0Var) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.k0
        boolean n(Comparable<?> comparable) {
            return true;
        }

        @Override // com.google.common.collect.k0
        Comparable<?> o(p0<Comparable<?>> p0Var) {
            return p0Var.h();
        }

        @Override // com.google.common.collect.k0
        BoundType p() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.k0
        BoundType q() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.k0
        k0<Comparable<?>> r(BoundType boundType, p0<Comparable<?>> p0Var) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.k0
        k0<Comparable<?>> s(BoundType boundType, p0<Comparable<?>> p0Var) {
            throw new AssertionError("this statement should be unreachable");
        }

        public String toString() {
            return "-∞";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cut.java */
    /* loaded from: classes2.dex */
    public static final class e<C extends Comparable> extends k0<C> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33668c = 0;

        e(C c10) {
            super((Comparable) com.google.common.base.a0.E(c10));
        }

        @Override // com.google.common.collect.k0, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((k0) obj);
        }

        @Override // com.google.common.collect.k0
        public int hashCode() {
            return this.f33661a.hashCode();
        }

        @Override // com.google.common.collect.k0
        void i(StringBuilder sb) {
            sb.append('[');
            sb.append(this.f33661a);
        }

        @Override // com.google.common.collect.k0
        void k(StringBuilder sb) {
            sb.append(this.f33661a);
            sb.append(')');
        }

        @Override // com.google.common.collect.k0
        C m(p0<C> p0Var) {
            return p0Var.k(this.f33661a);
        }

        @Override // com.google.common.collect.k0
        boolean n(C c10) {
            return Range.b(this.f33661a, c10) <= 0;
        }

        @Override // com.google.common.collect.k0
        C o(p0<C> p0Var) {
            return this.f33661a;
        }

        @Override // com.google.common.collect.k0
        BoundType p() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.k0
        BoundType q() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.k0
        k0<C> r(BoundType boundType, p0<C> p0Var) {
            int i4 = a.f33662a[boundType.ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    C k10 = p0Var.k(this.f33661a);
                    return k10 == null ? k0.c() : new c(k10);
                }
                throw new AssertionError();
            }
            return this;
        }

        @Override // com.google.common.collect.k0
        k0<C> s(BoundType boundType, p0<C> p0Var) {
            int i4 = a.f33662a[boundType.ordinal()];
            if (i4 == 1) {
                C k10 = p0Var.k(this.f33661a);
                return k10 == null ? k0.a() : new c(k10);
            } else if (i4 == 2) {
                return this;
            } else {
                throw new AssertionError();
            }
        }

        public String toString() {
            return "\\" + this.f33661a + "/";
        }
    }

    k0(@NullableDecl C c10) {
        this.f33661a = c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> k0<C> a() {
        return b.f33663c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> k0<C> b(C c10) {
        return new c(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> k0<C> c() {
        return d.f33666c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> k0<C> d(C c10) {
        return new e(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0<C> e(p0<C> p0Var) {
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof k0) {
            try {
                return compareTo((k0) obj) == 0;
            } catch (ClassCastException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: h */
    public int compareTo(k0<C> k0Var) {
        if (k0Var == c()) {
            return 1;
        }
        if (k0Var == a()) {
            return -1;
        }
        int b10 = Range.b(this.f33661a, k0Var.f33661a);
        return b10 != 0 ? b10 : com.google.common.primitives.a.d(this instanceof c, k0Var instanceof c);
    }

    public abstract int hashCode();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void i(StringBuilder sb);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void k(StringBuilder sb);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C l() {
        return this.f33661a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract C m(p0<C> p0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean n(C c10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract C o(p0<C> p0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract BoundType p();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract BoundType q();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract k0<C> r(BoundType boundType, p0<C> p0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract k0<C> s(BoundType boundType, p0<C> p0Var);
}
