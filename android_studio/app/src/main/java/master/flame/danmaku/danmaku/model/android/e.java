package master.flame.danmaku.danmaku.model.android;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import master.flame.danmaku.danmaku.model.m;

/* compiled from: Danmakus.java */
/* loaded from: classes4.dex */
public class e implements m {

    /* renamed from: e  reason: collision with root package name */
    public Collection<master.flame.danmaku.danmaku.model.d> f87243e;

    /* renamed from: f  reason: collision with root package name */
    private e f87244f;

    /* renamed from: g  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.d f87245g;

    /* renamed from: h  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.d f87246h;

    /* renamed from: i  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.d f87247i;

    /* renamed from: j  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.d f87248j;

    /* renamed from: k  reason: collision with root package name */
    private volatile AtomicInteger f87249k;

    /* renamed from: l  reason: collision with root package name */
    private int f87250l;

    /* renamed from: m  reason: collision with root package name */
    private m.a f87251m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f87252n;

    /* renamed from: o  reason: collision with root package name */
    private Object f87253o;

    public e() {
        this(0, false);
    }

    private master.flame.danmaku.danmaku.model.d k(String str) {
        return new master.flame.danmaku.danmaku.model.e(str);
    }

    private void l(boolean z9) {
        this.f87251m.b(z9);
        this.f87252n = z9;
    }

    private Collection<master.flame.danmaku.danmaku.model.d> n(long j4, long j10) {
        Collection<master.flame.danmaku.danmaku.model.d> collection;
        if (this.f87250l == 4 || (collection = this.f87243e) == null || collection.size() == 0) {
            return null;
        }
        if (this.f87244f == null) {
            e eVar = new e(this.f87252n);
            this.f87244f = eVar;
            eVar.f87253o = this.f87253o;
        }
        if (this.f87248j == null) {
            this.f87248j = k(com.google.android.exoplayer2.text.ttml.d.f25725o0);
        }
        if (this.f87247i == null) {
            this.f87247i = k(com.google.android.exoplayer2.text.ttml.d.f25727p0);
        }
        this.f87248j.G(j4);
        this.f87247i.G(j10);
        return ((SortedSet) this.f87243e).subSet(this.f87248j, this.f87247i);
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public void a(m.b<? super master.flame.danmaku.danmaku.model.d, ?> bVar) {
        synchronized (this.f87253o) {
            h(bVar);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public Collection<master.flame.danmaku.danmaku.model.d> b() {
        return this.f87243e;
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public void c(boolean z9) {
        this.f87252n = z9;
        this.f87246h = null;
        this.f87245g = null;
        if (this.f87244f == null) {
            e eVar = new e(z9);
            this.f87244f = eVar;
            eVar.f87253o = this.f87253o;
        }
        this.f87244f.l(z9);
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public void clear() {
        synchronized (this.f87253o) {
            Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
            if (collection != null) {
                collection.clear();
                this.f87249k.set(0);
            }
        }
        if (this.f87244f != null) {
            this.f87244f = null;
            this.f87245g = k(com.google.android.exoplayer2.text.ttml.d.f25725o0);
            this.f87246h = k(com.google.android.exoplayer2.text.ttml.d.f25727p0);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public m d(long j4, long j10) {
        Collection<master.flame.danmaku.danmaku.model.d> n9 = n(j4, j10);
        if (n9 == null || n9.isEmpty()) {
            return null;
        }
        return new e(new LinkedList(n9));
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public Object e() {
        return this.f87253o;
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public m f(long j4, long j10) {
        Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
        if (collection == null || collection.size() == 0) {
            return null;
        }
        if (this.f87244f == null) {
            if (this.f87250l == 4) {
                e eVar = new e(4);
                this.f87244f = eVar;
                eVar.f87253o = this.f87253o;
                synchronized (this.f87253o) {
                    this.f87244f.m(this.f87243e);
                }
            } else {
                e eVar2 = new e(this.f87252n);
                this.f87244f = eVar2;
                eVar2.f87253o = this.f87253o;
            }
        }
        if (this.f87250l == 4) {
            return this.f87244f;
        }
        if (this.f87245g == null) {
            this.f87245g = k(com.google.android.exoplayer2.text.ttml.d.f25725o0);
        }
        if (this.f87246h == null) {
            this.f87246h = k(com.google.android.exoplayer2.text.ttml.d.f25727p0);
        }
        if (this.f87244f != null && j4 - this.f87245g.b() >= 0 && j10 <= this.f87246h.b()) {
            return this.f87244f;
        }
        this.f87245g.G(j4);
        this.f87246h.G(j10);
        synchronized (this.f87253o) {
            this.f87244f.m(((SortedSet) this.f87243e).subSet(this.f87245g, this.f87246h));
        }
        return this.f87244f;
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public master.flame.danmaku.danmaku.model.d first() {
        Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        if (this.f87250l == 4) {
            return (master.flame.danmaku.danmaku.model.d) ((LinkedList) this.f87243e).peek();
        }
        return (master.flame.danmaku.danmaku.model.d) ((SortedSet) this.f87243e).first();
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public boolean g(master.flame.danmaku.danmaku.model.d dVar) {
        if (dVar == null) {
            return false;
        }
        if (dVar.u()) {
            dVar.J(false);
        }
        synchronized (this.f87253o) {
            if (this.f87243e.remove(dVar)) {
                this.f87249k.decrementAndGet();
                return true;
            }
            return false;
        }
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public void h(m.b<? super master.flame.danmaku.danmaku.model.d, ?> bVar) {
        bVar.c();
        Iterator<master.flame.danmaku.danmaku.model.d> it = this.f87243e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            master.flame.danmaku.danmaku.model.d next = it.next();
            if (next != null) {
                int a10 = bVar.a(next);
                if (a10 == 1) {
                    break;
                } else if (a10 == 2) {
                    it.remove();
                    this.f87249k.decrementAndGet();
                } else if (a10 == 3) {
                    it.remove();
                    this.f87249k.decrementAndGet();
                    break;
                }
            }
        }
        bVar.b();
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public boolean i(master.flame.danmaku.danmaku.model.d dVar) {
        synchronized (this.f87253o) {
            Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
            if (collection != null) {
                try {
                    if (collection.add(dVar)) {
                        this.f87249k.incrementAndGet();
                        return true;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            return false;
        }
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public boolean isEmpty() {
        Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
        return collection == null || collection.isEmpty();
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public boolean j(master.flame.danmaku.danmaku.model.d dVar) {
        Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
        return collection != null && collection.contains(dVar);
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public master.flame.danmaku.danmaku.model.d last() {
        Collection<master.flame.danmaku.danmaku.model.d> collection = this.f87243e;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        if (this.f87250l == 4) {
            return (master.flame.danmaku.danmaku.model.d) ((LinkedList) this.f87243e).peekLast();
        }
        return (master.flame.danmaku.danmaku.model.d) ((SortedSet) this.f87243e).last();
    }

    public void m(Collection<master.flame.danmaku.danmaku.model.d> collection) {
        if (this.f87252n && this.f87250l != 4) {
            synchronized (this.f87253o) {
                this.f87243e.clear();
                this.f87243e.addAll(collection);
                collection = this.f87243e;
            }
        } else {
            this.f87243e = collection;
        }
        if (collection instanceof List) {
            this.f87250l = 4;
        }
        this.f87249k.set(collection == null ? 0 : collection.size());
    }

    @Override // master.flame.danmaku.danmaku.model.m
    public int size() {
        return this.f87249k.get();
    }

    public e(int i4) {
        this(i4, false);
    }

    public e(int i4, boolean z9) {
        this(i4, z9, null);
    }

    public e(int i4, boolean z9, m.a aVar) {
        this.f87249k = new AtomicInteger(0);
        this.f87250l = 0;
        this.f87253o = new Object();
        if (i4 == 0) {
            if (aVar == null) {
                aVar = new m.d(z9);
            }
        } else if (i4 == 1) {
            aVar = new m.e(z9);
        } else {
            aVar = i4 == 2 ? new m.f(z9) : null;
        }
        if (i4 == 4) {
            this.f87243e = new LinkedList();
        } else {
            this.f87252n = z9;
            aVar.b(z9);
            this.f87243e = new TreeSet(aVar);
            this.f87251m = aVar;
        }
        this.f87250l = i4;
        this.f87249k.set(0);
    }

    public e(Collection<master.flame.danmaku.danmaku.model.d> collection) {
        this.f87249k = new AtomicInteger(0);
        this.f87250l = 0;
        this.f87253o = new Object();
        m(collection);
    }

    public e(boolean z9) {
        this(0, z9);
    }
}
