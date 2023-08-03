package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: LruArrayPool.java */
/* loaded from: classes.dex */
public final class j implements com.bumptech.glide.load.engine.bitmap_recycle.b {

    /* renamed from: h  reason: collision with root package name */
    private static final int f8639h = 4194304;
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    static final int f8640i = 8;

    /* renamed from: j  reason: collision with root package name */
    private static final int f8641j = 2;

    /* renamed from: b  reason: collision with root package name */
    private final h<a, Object> f8642b;

    /* renamed from: c  reason: collision with root package name */
    private final b f8643c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f8644d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, com.bumptech.glide.load.engine.bitmap_recycle.a<?>> f8645e;

    /* renamed from: f  reason: collision with root package name */
    private final int f8646f;

    /* renamed from: g  reason: collision with root package name */
    private int f8647g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LruArrayPool.java */
    /* loaded from: classes.dex */
    public static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        private final b f8648a;

        /* renamed from: b  reason: collision with root package name */
        int f8649b;

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f8650c;

        a(b bVar) {
            this.f8648a = bVar;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.m
        public void a() {
            this.f8648a.c(this);
        }

        void b(int i4, Class<?> cls) {
            this.f8649b = i4;
            this.f8650c = cls;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f8649b == aVar.f8649b && this.f8650c == aVar.f8650c;
            }
            return false;
        }

        public int hashCode() {
            int i4 = this.f8649b * 31;
            Class<?> cls = this.f8650c;
            return i4 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f8649b + "array=" + this.f8650c + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LruArrayPool.java */
    /* loaded from: classes.dex */
    public static final class b extends d<a> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
        /* renamed from: d */
        public a a() {
            return new a(this);
        }

        a e(int i4, Class<?> cls) {
            a b10 = b();
            b10.b(i4, cls);
            return b10;
        }
    }

    @VisibleForTesting
    public j() {
        this.f8642b = new h<>();
        this.f8643c = new b();
        this.f8644d = new HashMap();
        this.f8645e = new HashMap();
        this.f8646f = 4194304;
    }

    private void f(int i4, Class<?> cls) {
        NavigableMap<Integer, Integer> n9 = n(cls);
        Integer num = (Integer) n9.get(Integer.valueOf(i4));
        if (num != null) {
            if (num.intValue() == 1) {
                n9.remove(Integer.valueOf(i4));
                return;
            } else {
                n9.put(Integer.valueOf(i4), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i4 + ", this: " + this);
    }

    private void g() {
        h(this.f8646f);
    }

    private void h(int i4) {
        while (this.f8647g > i4) {
            Object f10 = this.f8642b.f();
            com.bumptech.glide.util.m.d(f10);
            com.bumptech.glide.load.engine.bitmap_recycle.a i10 = i(f10);
            this.f8647g -= i10.b(f10) * i10.a();
            f(i10.b(f10), f10.getClass());
            if (Log.isLoggable(i10.f(), 2)) {
                Log.v(i10.f(), "evicted: " + i10.b(f10));
            }
        }
    }

    private <T> com.bumptech.glide.load.engine.bitmap_recycle.a<T> i(T t9) {
        return j(t9.getClass());
    }

    private <T> com.bumptech.glide.load.engine.bitmap_recycle.a<T> j(Class<T> cls) {
        i iVar = (com.bumptech.glide.load.engine.bitmap_recycle.a<T>) this.f8645e.get(cls);
        if (iVar == null) {
            if (cls.equals(int[].class)) {
                iVar = new i();
            } else if (cls.equals(byte[].class)) {
                iVar = new g();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f8645e.put(cls, iVar);
        }
        return iVar;
    }

    @Nullable
    private <T> T k(a aVar) {
        return (T) this.f8642b.a(aVar);
    }

    private <T> T m(a aVar, Class<T> cls) {
        com.bumptech.glide.load.engine.bitmap_recycle.a<T> j4 = j(cls);
        T t9 = (T) k(aVar);
        if (t9 != null) {
            this.f8647g -= j4.b(t9) * j4.a();
            f(j4.b(t9), cls);
        }
        if (t9 == null) {
            if (Log.isLoggable(j4.f(), 2)) {
                Log.v(j4.f(), "Allocated " + aVar.f8649b + " bytes");
            }
            return j4.newArray(aVar.f8649b);
        }
        return t9;
    }

    private NavigableMap<Integer, Integer> n(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f8644d.get(cls);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f8644d.put(cls, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    private boolean o() {
        int i4 = this.f8647g;
        return i4 == 0 || this.f8646f / i4 >= 2;
    }

    private boolean p(int i4) {
        return i4 <= this.f8646f / 2;
    }

    private boolean q(int i4, Integer num) {
        return num != null && (o() || num.intValue() <= i4 * 8);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized void a(int i4) {
        try {
            if (i4 >= 40) {
                b();
            } else if (i4 >= 20 || i4 == 15) {
                h(this.f8646f / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized void b() {
        h(0);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized <T> T c(int i4, Class<T> cls) {
        a e4;
        Integer ceilingKey = n(cls).ceilingKey(Integer.valueOf(i4));
        if (q(i4, ceilingKey)) {
            e4 = this.f8643c.e(ceilingKey.intValue(), cls);
        } else {
            e4 = this.f8643c.e(i4, cls);
        }
        return (T) m(e4, cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized <T> T d(int i4, Class<T> cls) {
        return (T) m(this.f8643c.e(i4, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    @Deprecated
    public <T> void e(T t9, Class<T> cls) {
        put(t9);
    }

    int l() {
        int i4 = 0;
        for (Class<?> cls : this.f8644d.keySet()) {
            for (Integer num : this.f8644d.get(cls).keySet()) {
                i4 += num.intValue() * ((Integer) this.f8644d.get(cls).get(num)).intValue() * j(cls).a();
            }
        }
        return i4;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized <T> void put(T t9) {
        Class<?> cls = t9.getClass();
        com.bumptech.glide.load.engine.bitmap_recycle.a<T> j4 = j(cls);
        int b10 = j4.b(t9);
        int a10 = j4.a() * b10;
        if (p(a10)) {
            a e4 = this.f8643c.e(b10, cls);
            this.f8642b.d(e4, t9);
            NavigableMap<Integer, Integer> n9 = n(cls);
            Integer num = (Integer) n9.get(Integer.valueOf(e4.f8649b));
            Integer valueOf = Integer.valueOf(e4.f8649b);
            int i4 = 1;
            if (num != null) {
                i4 = 1 + num.intValue();
            }
            n9.put(valueOf, Integer.valueOf(i4));
            this.f8647g += a10;
            g();
        }
    }

    public j(int i4) {
        this.f8642b = new h<>();
        this.f8643c = new b();
        this.f8644d = new HashMap();
        this.f8645e = new HashMap();
        this.f8646f = i4;
    }
}
