package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* compiled from: MultimapBuilder.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class i3<K0, V0> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f33557a = 8;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static class a extends k<Object> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33558b;

        a(int i4) {
            this.f33558b = i4;
        }

        @Override // com.google.common.collect.i3.k
        <K, V> Map<K, Collection<V>> c() {
            return u3.c(this.f33558b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static class b extends k<Object> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33559b;

        b(int i4) {
            this.f33559b = i4;
        }

        @Override // com.google.common.collect.i3.k
        <K, V> Map<K, Collection<V>> c() {
            return u3.e(this.f33559b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static class c extends k<K0> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Comparator f33560b;

        c(Comparator comparator) {
            this.f33560b = comparator;
        }

        @Override // com.google.common.collect.i3.k
        <K extends K0, V> Map<K, Collection<V>> c() {
            return new TreeMap(this.f33560b);
        }
    }

    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    static class d extends k<K0> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f33561b;

        d(Class cls) {
            this.f33561b = cls;
        }

        @Override // com.google.common.collect.i3.k
        <K extends K0, V> Map<K, Collection<V>> c() {
            return new EnumMap(this.f33561b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static final class e<V> implements com.google.common.base.i0<List<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f33562a;

        e(int i4) {
            this.f33562a = y.b(i4, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public List<V> get() {
            return new ArrayList(this.f33562a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static final class f<V extends Enum<V>> implements com.google.common.base.i0<Set<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Class<V> f33563a;

        f(Class<V> cls) {
            this.f33563a = (Class) com.google.common.base.a0.E(cls);
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Set<V> get() {
            return EnumSet.noneOf(this.f33563a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static final class g<V> implements com.google.common.base.i0<Set<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f33564a;

        g(int i4) {
            this.f33564a = y.b(i4, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Set<V> get() {
            return u3.d(this.f33564a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static final class h<V> implements com.google.common.base.i0<Set<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f33565a;

        h(int i4) {
            this.f33565a = y.b(i4, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Set<V> get() {
            return u3.f(this.f33565a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public enum i implements com.google.common.base.i0<List<Object>> {
        INSTANCE;

        public static <V> com.google.common.base.i0<List<V>> b() {
            return INSTANCE;
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public List<Object> get() {
            return new LinkedList();
        }
    }

    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static abstract class j<K0, V0> extends i3<K0, V0> {
        j() {
            super(null);
        }

        @Override // com.google.common.collect.i3
        /* renamed from: j */
        public abstract <K extends K0, V extends V0> a3<K, V> a();

        @Override // com.google.common.collect.i3
        /* renamed from: k */
        public <K extends K0, V extends V0> a3<K, V> b(h3<? extends K, ? extends V> h3Var) {
            return (a3) super.b(h3Var);
        }
    }

    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static abstract class k<K0> {

        /* renamed from: a  reason: collision with root package name */
        private static final int f33568a = 2;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultimapBuilder.java */
        /* loaded from: classes2.dex */
        public class a extends j<K0, Object> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f33569b;

            a(int i4) {
                this.f33569b = i4;
            }

            @Override // com.google.common.collect.i3.j, com.google.common.collect.i3
            /* renamed from: j */
            public <K extends K0, V> a3<K, V> a() {
                return j3.u(k.this.c(), new e(this.f33569b));
            }
        }

        /* compiled from: MultimapBuilder.java */
        /* loaded from: classes2.dex */
        class b extends j<K0, Object> {
            b() {
            }

            @Override // com.google.common.collect.i3.j, com.google.common.collect.i3
            /* renamed from: j */
            public <K extends K0, V> a3<K, V> a() {
                return j3.u(k.this.c(), i.b());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultimapBuilder.java */
        /* loaded from: classes2.dex */
        public class c extends l<K0, Object> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f33572b;

            c(int i4) {
                this.f33572b = i4;
            }

            @Override // com.google.common.collect.i3.l, com.google.common.collect.i3
            /* renamed from: j */
            public <K extends K0, V> n4<K, V> a() {
                return j3.w(k.this.c(), new g(this.f33572b));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultimapBuilder.java */
        /* loaded from: classes2.dex */
        public class d extends l<K0, Object> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f33574b;

            d(int i4) {
                this.f33574b = i4;
            }

            @Override // com.google.common.collect.i3.l, com.google.common.collect.i3
            /* renamed from: j */
            public <K extends K0, V> n4<K, V> a() {
                return j3.w(k.this.c(), new h(this.f33574b));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultimapBuilder.java */
        /* loaded from: classes2.dex */
        public class e extends m<K0, V0> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Comparator f33576b;

            e(Comparator comparator) {
                this.f33576b = comparator;
            }

            @Override // com.google.common.collect.i3.m, com.google.common.collect.i3.l
            /* renamed from: l */
            public <K extends K0, V extends V0> y4<K, V> j() {
                return j3.x(k.this.c(), new n(this.f33576b));
            }
        }

        /* compiled from: MultimapBuilder.java */
        /* loaded from: classes2.dex */
        class f extends l<K0, V0> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Class f33578b;

            f(Class cls) {
                this.f33578b = cls;
            }

            @Override // com.google.common.collect.i3.l, com.google.common.collect.i3
            /* renamed from: j */
            public <K extends K0, V extends V0> n4<K, V> a() {
                return j3.w(k.this.c(), new f(this.f33578b));
            }
        }

        k() {
        }

        public j<K0, Object> a() {
            return b(2);
        }

        public j<K0, Object> b(int i4) {
            y.b(i4, "expectedValuesPerKey");
            return new a(i4);
        }

        abstract <K extends K0, V> Map<K, Collection<V>> c();

        public <V0 extends Enum<V0>> l<K0, V0> d(Class<V0> cls) {
            com.google.common.base.a0.F(cls, "valueClass");
            return new f(cls);
        }

        public l<K0, Object> e() {
            return f(2);
        }

        public l<K0, Object> f(int i4) {
            y.b(i4, "expectedValuesPerKey");
            return new c(i4);
        }

        public l<K0, Object> g() {
            return h(2);
        }

        public l<K0, Object> h(int i4) {
            y.b(i4, "expectedValuesPerKey");
            return new d(i4);
        }

        public j<K0, Object> i() {
            return new b();
        }

        public m<K0, Comparable> j() {
            return (m<K0, V0>) k(s3.B());
        }

        public <V0> m<K0, V0> k(Comparator<V0> comparator) {
            com.google.common.base.a0.F(comparator, "comparator");
            return new e(comparator);
        }
    }

    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static abstract class l<K0, V0> extends i3<K0, V0> {
        l() {
            super(null);
        }

        @Override // com.google.common.collect.i3
        /* renamed from: j */
        public abstract <K extends K0, V extends V0> n4<K, V> a();

        @Override // com.google.common.collect.i3
        /* renamed from: k */
        public <K extends K0, V extends V0> n4<K, V> b(h3<? extends K, ? extends V> h3Var) {
            return (n4) super.b(h3Var);
        }
    }

    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static abstract class m<K0, V0> extends l<K0, V0> {
        m() {
        }

        @Override // com.google.common.collect.i3.l
        /* renamed from: l */
        public abstract <K extends K0, V extends V0> y4<K, V> j();

        @Override // com.google.common.collect.i3.l
        /* renamed from: m */
        public <K extends K0, V extends V0> y4<K, V> k(h3<? extends K, ? extends V> h3Var) {
            return (y4) super.b(h3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultimapBuilder.java */
    /* loaded from: classes2.dex */
    public static final class n<V> implements com.google.common.base.i0<SortedSet<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Comparator<? super V> f33580a;

        n(Comparator<? super V> comparator) {
            this.f33580a = (Comparator) com.google.common.base.a0.E(comparator);
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public SortedSet<V> get() {
            return new TreeSet(this.f33580a);
        }
    }

    /* synthetic */ i3(a aVar) {
        this();
    }

    public static <K0 extends Enum<K0>> k<K0> c(Class<K0> cls) {
        com.google.common.base.a0.E(cls);
        return new d(cls);
    }

    public static k<Object> d() {
        return e(8);
    }

    public static k<Object> e(int i4) {
        y.b(i4, "expectedKeys");
        return new a(i4);
    }

    public static k<Object> f() {
        return g(8);
    }

    public static k<Object> g(int i4) {
        y.b(i4, "expectedKeys");
        return new b(i4);
    }

    public static k<Comparable> h() {
        return i(s3.B());
    }

    public static <K0> k<K0> i(Comparator<K0> comparator) {
        com.google.common.base.a0.E(comparator);
        return new c(comparator);
    }

    public abstract <K extends K0, V extends V0> h3<K, V> a();

    public <K extends K0, V extends V0> h3<K, V> b(h3<? extends K, ? extends V> h3Var) {
        h3<K, V> a10 = a();
        a10.putAll(h3Var);
        return a10;
    }

    private i3() {
    }
}
