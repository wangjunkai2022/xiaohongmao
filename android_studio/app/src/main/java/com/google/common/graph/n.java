package com.google.common.graph;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.k5;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DirectedGraphConnections.java */
/* loaded from: classes2.dex */
public final class n<N, V> implements y<N, V> {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f34143d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Map<N, Object> f34144a;

    /* renamed from: b  reason: collision with root package name */
    private int f34145b;

    /* renamed from: c  reason: collision with root package name */
    private int f34146c;

    /* compiled from: DirectedGraphConnections.java */
    /* loaded from: classes2.dex */
    class a extends AbstractSet<N> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DirectedGraphConnections.java */
        /* renamed from: com.google.common.graph.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0252a extends com.google.common.collect.c<N> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f34148c;

            C0252a(Iterator it) {
                this.f34148c = it;
            }

            @Override // com.google.common.collect.c
            protected N a() {
                while (this.f34148c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f34148c.next();
                    if (n.n(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return b();
            }
        }

        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public k5<N> iterator() {
            return new C0252a(n.this.f34144a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return n.n(n.this.f34144a.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return n.this.f34145b;
        }
    }

    /* compiled from: DirectedGraphConnections.java */
    /* loaded from: classes2.dex */
    class b extends AbstractSet<N> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DirectedGraphConnections.java */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<N> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f34151c;

            a(Iterator it) {
                this.f34151c = it;
            }

            @Override // com.google.common.collect.c
            protected N a() {
                while (this.f34151c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f34151c.next();
                    if (n.o(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return b();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public k5<N> iterator() {
            return new a(n.this.f34144a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return n.o(n.this.f34144a.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return n.this.f34146c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DirectedGraphConnections.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Object f34153a;

        c(Object obj) {
            this.f34153a = obj;
        }
    }

    private n(Map<N, Object> map, int i4, int i10) {
        this.f34144a = (Map) com.google.common.base.a0.E(map);
        this.f34145b = a0.b(i4);
        this.f34146c = a0.b(i10);
        com.google.common.base.a0.g0(i4 <= map.size() && i10 <= map.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(@NullableDecl Object obj) {
        return obj == f34143d || (obj instanceof c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean o(@NullableDecl Object obj) {
        return (obj == f34143d || obj == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, V> n<N, V> p() {
        return new n<>(new HashMap(4, 1.0f), 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <N, V> n<N, V> q(Set<N> set, Map<N, V> map) {
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        for (N n9 : set) {
            Object put = hashMap.put(n9, f34143d);
            if (put != null) {
                hashMap.put(n9, new c(put));
            }
        }
        return new n<>(ImmutableMap.copyOf((Map) hashMap), set.size(), map.size());
    }

    @Override // com.google.common.graph.y
    public Set<N> a() {
        return new b();
    }

    @Override // com.google.common.graph.y
    public Set<N> b() {
        return new a();
    }

    @Override // com.google.common.graph.y
    public Set<N> c() {
        return Collections.unmodifiableSet(this.f34144a.keySet());
    }

    @Override // com.google.common.graph.y
    public V d(N n9) {
        V v9 = (V) this.f34144a.get(n9);
        if (v9 == f34143d) {
            return null;
        }
        return v9 instanceof c ? (V) ((c) v9).f34153a : v9;
    }

    @Override // com.google.common.graph.y
    public V e(Object obj) {
        Object obj2;
        V v9 = (V) this.f34144a.get(obj);
        if (v9 == null || v9 == (obj2 = f34143d)) {
            return null;
        }
        if (v9 instanceof c) {
            this.f34144a.put(obj, obj2);
            int i4 = this.f34146c - 1;
            this.f34146c = i4;
            a0.b(i4);
            return (V) ((c) v9).f34153a;
        }
        this.f34144a.remove(obj);
        int i10 = this.f34146c - 1;
        this.f34146c = i10;
        a0.b(i10);
        return v9;
    }

    @Override // com.google.common.graph.y
    public void f(N n9) {
        Object obj = this.f34144a.get(n9);
        if (obj == f34143d) {
            this.f34144a.remove(n9);
            int i4 = this.f34145b - 1;
            this.f34145b = i4;
            a0.b(i4);
        } else if (obj instanceof c) {
            this.f34144a.put(n9, ((c) obj).f34153a);
            int i10 = this.f34145b - 1;
            this.f34145b = i10;
            a0.b(i10);
        }
    }

    @Override // com.google.common.graph.y
    public V g(N n9, V v9) {
        V v10 = (V) this.f34144a.put(n9, v9);
        if (v10 == null) {
            int i4 = this.f34146c + 1;
            this.f34146c = i4;
            a0.d(i4);
            return null;
        } else if (v10 instanceof c) {
            this.f34144a.put(n9, new c(v9));
            return (V) ((c) v10).f34153a;
        } else if (v10 == f34143d) {
            this.f34144a.put(n9, new c(v9));
            int i10 = this.f34146c + 1;
            this.f34146c = i10;
            a0.d(i10);
            return null;
        } else {
            return v10;
        }
    }

    @Override // com.google.common.graph.y
    public void h(N n9, V v9) {
        Map<N, Object> map = this.f34144a;
        Object obj = f34143d;
        Object put = map.put(n9, obj);
        if (put == null) {
            int i4 = this.f34145b + 1;
            this.f34145b = i4;
            a0.d(i4);
        } else if (put instanceof c) {
            this.f34144a.put(n9, put);
        } else if (put != obj) {
            this.f34144a.put(n9, new c(put));
            int i10 = this.f34145b + 1;
            this.f34145b = i10;
            a0.d(i10);
        }
    }
}
