package com.bumptech.glide.load.engine;

import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.model.n;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DecodeHelper.java */
/* loaded from: classes.dex */
public final class g<Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final List<n.a<?>> f8788a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<com.bumptech.glide.load.c> f8789b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.e f8790c;

    /* renamed from: d  reason: collision with root package name */
    private Object f8791d;

    /* renamed from: e  reason: collision with root package name */
    private int f8792e;

    /* renamed from: f  reason: collision with root package name */
    private int f8793f;

    /* renamed from: g  reason: collision with root package name */
    private Class<?> f8794g;

    /* renamed from: h  reason: collision with root package name */
    private h.e f8795h;

    /* renamed from: i  reason: collision with root package name */
    private com.bumptech.glide.load.f f8796i;

    /* renamed from: j  reason: collision with root package name */
    private Map<Class<?>, com.bumptech.glide.load.i<?>> f8797j;

    /* renamed from: k  reason: collision with root package name */
    private Class<Transcode> f8798k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f8799l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f8800m;

    /* renamed from: n  reason: collision with root package name */
    private com.bumptech.glide.load.c f8801n;

    /* renamed from: o  reason: collision with root package name */
    private Priority f8802o;

    /* renamed from: p  reason: collision with root package name */
    private j f8803p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f8804q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f8805r;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f8790c = null;
        this.f8791d = null;
        this.f8801n = null;
        this.f8794g = null;
        this.f8798k = null;
        this.f8796i = null;
        this.f8802o = null;
        this.f8797j = null;
        this.f8803p = null;
        this.f8788a.clear();
        this.f8799l = false;
        this.f8789b.clear();
        this.f8800m = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.load.engine.bitmap_recycle.b b() {
        return this.f8790c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bumptech.glide.load.c> c() {
        if (!this.f8800m) {
            this.f8800m = true;
            this.f8789b.clear();
            List<n.a<?>> g4 = g();
            int size = g4.size();
            for (int i4 = 0; i4 < size; i4++) {
                n.a<?> aVar = g4.get(i4);
                if (!this.f8789b.contains(aVar.f9077a)) {
                    this.f8789b.add(aVar.f9077a);
                }
                for (int i10 = 0; i10 < aVar.f9078b.size(); i10++) {
                    if (!this.f8789b.contains(aVar.f9078b.get(i10))) {
                        this.f8789b.add(aVar.f9078b.get(i10));
                    }
                }
            }
        }
        return this.f8789b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.load.engine.cache.a d() {
        return this.f8795h.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j e() {
        return this.f8803p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f8793f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<n.a<?>> g() {
        if (!this.f8799l) {
            this.f8799l = true;
            this.f8788a.clear();
            List i4 = this.f8790c.i().i(this.f8791d);
            int size = i4.size();
            for (int i10 = 0; i10 < size; i10++) {
                n.a<?> b10 = ((com.bumptech.glide.load.model.n) i4.get(i10)).b(this.f8791d, this.f8792e, this.f8793f, this.f8796i);
                if (b10 != null) {
                    this.f8788a.add(b10);
                }
            }
        }
        return this.f8788a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <Data> s<Data, ?, Transcode> h(Class<Data> cls) {
        return this.f8790c.i().h(cls, this.f8794g, this.f8798k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<?> i() {
        return this.f8791d.getClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bumptech.glide.load.model.n<File, ?>> j(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f8790c.i().i(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.load.f k() {
        return this.f8796i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Priority l() {
        return this.f8802o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Class<?>> m() {
        return this.f8790c.i().j(this.f8791d.getClass(), this.f8794g, this.f8798k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <Z> com.bumptech.glide.load.h<Z> n(u<Z> uVar) {
        return this.f8790c.i().k(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> com.bumptech.glide.load.data.e<T> o(T t9) {
        return this.f8790c.i().l(t9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.load.c p() {
        return this.f8801n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <X> com.bumptech.glide.load.a<X> q(X x9) throws Registry.NoSourceEncoderAvailableException {
        return this.f8790c.i().m(x9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<?> r() {
        return (Class<Transcode>) this.f8798k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <Z> com.bumptech.glide.load.i<Z> s(Class<Z> cls) {
        com.bumptech.glide.load.i<Z> iVar = (com.bumptech.glide.load.i<Z>) this.f8797j.get(cls);
        if (iVar == null) {
            Iterator<Map.Entry<Class<?>, com.bumptech.glide.load.i<?>>> it = this.f8797j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, com.bumptech.glide.load.i<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    iVar = (com.bumptech.glide.load.i<Z>) next.getValue();
                    break;
                }
            }
        }
        if (iVar == null) {
            if (this.f8797j.isEmpty() && this.f8804q) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return com.bumptech.glide.load.resource.c.c();
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t() {
        return this.f8792e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean u(Class<?> cls) {
        return h(cls) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public <R> void v(com.bumptech.glide.e eVar, Object obj, com.bumptech.glide.load.c cVar, int i4, int i10, j jVar, Class<?> cls, Class<R> cls2, Priority priority, com.bumptech.glide.load.f fVar, Map<Class<?>, com.bumptech.glide.load.i<?>> map, boolean z9, boolean z10, h.e eVar2) {
        this.f8790c = eVar;
        this.f8791d = obj;
        this.f8801n = cVar;
        this.f8792e = i4;
        this.f8793f = i10;
        this.f8803p = jVar;
        this.f8794g = cls;
        this.f8795h = eVar2;
        this.f8798k = cls2;
        this.f8802o = priority;
        this.f8796i = fVar;
        this.f8797j = map;
        this.f8804q = z9;
        this.f8805r = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w(u<?> uVar) {
        return this.f8790c.i().n(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        return this.f8805r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean y(com.bumptech.glide.load.c cVar) {
        List<n.a<?>> g4 = g();
        int size = g4.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (g4.get(i4).f9077a.equals(cVar)) {
                return true;
            }
        }
        return false;
    }
}
