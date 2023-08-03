package master.flame.danmaku.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.m;

/* compiled from: DanmakuFilters.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: f  reason: collision with root package name */
    public static final int f87021f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f87022g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f87023h = 4;

    /* renamed from: i  reason: collision with root package name */
    public static final int f87024i = 8;

    /* renamed from: j  reason: collision with root package name */
    public static final int f87025j = 16;

    /* renamed from: k  reason: collision with root package name */
    public static final int f87026k = 32;

    /* renamed from: l  reason: collision with root package name */
    public static final int f87027l = 64;

    /* renamed from: m  reason: collision with root package name */
    public static final int f87028m = 128;

    /* renamed from: n  reason: collision with root package name */
    public static final int f87029n = 256;

    /* renamed from: o  reason: collision with root package name */
    public static final int f87030o = 512;

    /* renamed from: p  reason: collision with root package name */
    public static final String f87031p = "1010_Filter";

    /* renamed from: q  reason: collision with root package name */
    public static final String f87032q = "1011_Filter";

    /* renamed from: r  reason: collision with root package name */
    public static final String f87033r = "1012_Filter";

    /* renamed from: s  reason: collision with root package name */
    public static final String f87034s = "1013_Filter";

    /* renamed from: t  reason: collision with root package name */
    public static final String f87035t = "1014_Filter";

    /* renamed from: u  reason: collision with root package name */
    public static final String f87036u = "1015_Filter";

    /* renamed from: v  reason: collision with root package name */
    public static final String f87037v = "1016_Filter";

    /* renamed from: w  reason: collision with root package name */
    public static final String f87038w = "1017_Filter";

    /* renamed from: x  reason: collision with root package name */
    public static final String f87039x = "1018_Filter";

    /* renamed from: y  reason: collision with root package name */
    public static final String f87040y = "1019_Filter";

    /* renamed from: z  reason: collision with root package name */
    public static final String f87041z = "2000_Primary_Custom_Filter";

    /* renamed from: a  reason: collision with root package name */
    public final Exception f87042a = new Exception("not suuport this filter tag");

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, e<?>> f87043b = Collections.synchronizedSortedMap(new TreeMap());

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, e<?>> f87044c = Collections.synchronizedSortedMap(new TreeMap());

    /* renamed from: d  reason: collision with root package name */
    e<?>[] f87045d = new e[0];

    /* renamed from: e  reason: collision with root package name */
    e<?>[] f87046e = new e[0];

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static abstract class a<T> implements e<T> {
        @Override // master.flame.danmaku.controller.b.e
        public void clear() {
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* renamed from: master.flame.danmaku.controller.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0780b extends a<Void> {

        /* renamed from: a  reason: collision with root package name */
        protected final master.flame.danmaku.danmaku.model.m f87047a = new master.flame.danmaku.danmaku.model.android.e(4);

        /* renamed from: b  reason: collision with root package name */
        protected final LinkedHashMap<String, master.flame.danmaku.danmaku.model.d> f87048b = new LinkedHashMap<>();

        /* renamed from: c  reason: collision with root package name */
        private final master.flame.danmaku.danmaku.model.m f87049c = new master.flame.danmaku.danmaku.model.android.e(4);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DanmakuFilters.java */
        /* renamed from: master.flame.danmaku.controller.b$b$a */
        /* loaded from: classes4.dex */
        public class a extends m.c<master.flame.danmaku.danmaku.model.d> {

            /* renamed from: e  reason: collision with root package name */
            long f87050e = g8.c.b();

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ long f87051f;

            a(long j4) {
                this.f87051f = j4;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                if (g8.c.b() - this.f87050e > this.f87051f) {
                    return 1;
                }
                return dVar.y() ? 2 : 1;
            }
        }

        private void d(LinkedHashMap<String, master.flame.danmaku.danmaku.model.d> linkedHashMap, int i4) {
            Iterator<Map.Entry<String, master.flame.danmaku.danmaku.model.d>> it = linkedHashMap.entrySet().iterator();
            long b10 = g8.c.b();
            while (it.hasNext()) {
                try {
                    if (!it.next().getValue().y()) {
                        return;
                    }
                    it.remove();
                    if (g8.c.b() - b10 > i4) {
                        return;
                    }
                } catch (Exception unused) {
                    return;
                }
            }
        }

        private final void e(master.flame.danmaku.danmaku.model.m mVar, long j4) {
            mVar.a(new a(j4));
        }

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean c10 = c(dVar, i4, i10, fVar, z9);
            if (c10) {
                dVar.G |= 128;
            }
            return c10;
        }

        public synchronized boolean c(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9) {
            e(this.f87047a, 2L);
            e(this.f87049c, 2L);
            d(this.f87048b, 3);
            if (!this.f87047a.j(dVar) || dVar.u()) {
                if (this.f87049c.j(dVar)) {
                    return false;
                }
                if (this.f87048b.containsKey(dVar.f87280c)) {
                    this.f87048b.put(String.valueOf(dVar.f87280c), dVar);
                    this.f87047a.g(dVar);
                    this.f87047a.i(dVar);
                    return true;
                }
                this.f87048b.put(String.valueOf(dVar.f87280c), dVar);
                this.f87049c.i(dVar);
                return false;
            }
            return true;
        }

        @Override // master.flame.danmaku.controller.b.a, master.flame.danmaku.controller.b.e
        public void clear() {
            reset();
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: f */
        public void a(Void r12) {
        }

        @Override // master.flame.danmaku.controller.b.e
        public synchronized void reset() {
            this.f87049c.clear();
            this.f87047a.clear();
            this.f87048b.clear();
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class c extends a<Object> {

        /* renamed from: a  reason: collision with root package name */
        long f87053a = 20;

        private synchronized boolean c(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9) {
            if (fVar != null) {
                if (dVar.u()) {
                    return g8.c.b() - fVar.f87304a >= this.f87053a;
                }
            }
            return false;
        }

        @Override // master.flame.danmaku.controller.b.e
        public void a(Object obj) {
            reset();
        }

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean c10 = c(dVar, i4, i10, fVar, z9);
            if (c10) {
                dVar.G |= 4;
            }
            return c10;
        }

        @Override // master.flame.danmaku.controller.b.a, master.flame.danmaku.controller.b.e
        public void clear() {
            reset();
        }

        @Override // master.flame.danmaku.controller.b.e
        public synchronized void reset() {
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class d extends a<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private Boolean f87054a = Boolean.FALSE;

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean z10 = this.f87054a.booleanValue() && dVar.D;
            if (z10) {
                dVar.G |= 64;
            }
            return z10;
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: c */
        public void a(Boolean bool) {
            this.f87054a = bool;
        }

        @Override // master.flame.danmaku.controller.b.e
        public void reset() {
            this.f87054a = Boolean.FALSE;
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public interface e<T> {
        void a(T t9);

        boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext);

        void clear();

        void reset();
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class f extends a<Map<Integer, Integer>> {

        /* renamed from: a  reason: collision with root package name */
        private Map<Integer, Integer> f87055a;

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            Map<Integer, Integer> map = this.f87055a;
            boolean z10 = false;
            if (map != null) {
                Integer num = map.get(Integer.valueOf(dVar.n()));
                if (num != null && i4 >= num.intValue()) {
                    z10 = true;
                }
                if (z10) {
                    dVar.G |= 256;
                }
            }
            return z10;
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: c */
        public void a(Map<Integer, Integer> map) {
            this.f87055a = map;
        }

        @Override // master.flame.danmaku.controller.b.e
        public void reset() {
            this.f87055a = null;
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class g extends a<Map<Integer, Boolean>> {

        /* renamed from: a  reason: collision with root package name */
        private Map<Integer, Boolean> f87056a;

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            Map<Integer, Boolean> map = this.f87056a;
            boolean z10 = false;
            if (map != null) {
                Boolean bool = map.get(Integer.valueOf(dVar.n()));
                if (bool != null && bool.booleanValue() && z9) {
                    z10 = true;
                }
                if (z10) {
                    dVar.G |= 512;
                }
            }
            return z10;
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: c */
        public void a(Map<Integer, Boolean> map) {
            this.f87056a = map;
        }

        @Override // master.flame.danmaku.controller.b.e
        public void reset() {
            this.f87056a = null;
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class h extends a<Integer> {

        /* renamed from: a  reason: collision with root package name */
        protected int f87057a = -1;

        /* renamed from: b  reason: collision with root package name */
        protected master.flame.danmaku.danmaku.model.d f87058b = null;

        /* renamed from: c  reason: collision with root package name */
        private float f87059c = 1.0f;

        private boolean c(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            if (this.f87057a > 0 && dVar.n() == 1) {
                master.flame.danmaku.danmaku.model.d dVar2 = this.f87058b;
                if (dVar2 != null && !dVar2.y()) {
                    long b10 = dVar.b() - this.f87058b.b();
                    master.flame.danmaku.danmaku.model.g gVar = danmakuContext.A.f87238g;
                    if ((b10 < 0 || gVar == null || ((float) b10) >= ((float) gVar.f87308c) * this.f87059c) && i4 <= this.f87057a) {
                        this.f87058b = dVar;
                        return false;
                    }
                    return true;
                }
                this.f87058b = dVar;
            }
            return false;
        }

        @Override // master.flame.danmaku.controller.b.e
        public synchronized boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean c10;
            c10 = c(dVar, i4, i10, fVar, z9, danmakuContext);
            if (c10) {
                dVar.G |= 2;
            }
            return c10;
        }

        @Override // master.flame.danmaku.controller.b.a, master.flame.danmaku.controller.b.e
        public void clear() {
            reset();
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: d */
        public void a(Integer num) {
            reset();
            if (num == null || num.intValue() == this.f87057a) {
                return;
            }
            int intValue = num.intValue() + (num.intValue() / 5);
            this.f87057a = intValue;
            this.f87059c = 1.0f / intValue;
        }

        @Override // master.flame.danmaku.controller.b.e
        public synchronized void reset() {
            this.f87058b = null;
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class i extends a<List<Integer>> {

        /* renamed from: a  reason: collision with root package name */
        public List<Integer> f87060a = new ArrayList();

        private void c(Integer num) {
            if (this.f87060a.contains(num)) {
                return;
            }
            this.f87060a.add(num);
        }

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean z10 = (dVar == null || this.f87060a.contains(Integer.valueOf(dVar.f87284g))) ? false : true;
            if (z10) {
                dVar.G |= 8;
            }
            return z10;
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: d */
        public void a(List<Integer> list) {
            reset();
            if (list != null) {
                for (Integer num : list) {
                    c(num);
                }
            }
        }

        @Override // master.flame.danmaku.controller.b.e
        public void reset() {
            this.f87060a.clear();
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class j extends a<List<Integer>> {

        /* renamed from: a  reason: collision with root package name */
        final List<Integer> f87061a = Collections.synchronizedList(new ArrayList());

        @Override // master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean z10 = dVar != null && this.f87061a.contains(Integer.valueOf(dVar.n()));
            if (z10) {
                dVar.G = 1 | dVar.G;
            }
            return z10;
        }

        public void c(Integer num) {
            if (this.f87061a.contains(num)) {
                this.f87061a.remove(num);
            }
        }

        public void d(Integer num) {
            if (this.f87061a.contains(num)) {
                return;
            }
            this.f87061a.add(num);
        }

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: e */
        public void a(List<Integer> list) {
            reset();
            if (list != null) {
                for (Integer num : list) {
                    d(num);
                }
            }
        }

        @Override // master.flame.danmaku.controller.b.e
        public void reset() {
            this.f87061a.clear();
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static abstract class k<T> extends a<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        public List<T> f87062a = new ArrayList();

        private void c(T t9) {
            if (this.f87062a.contains(t9)) {
                return;
            }
            this.f87062a.add(t9);
        }

        @Override // master.flame.danmaku.controller.b.e
        public abstract boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext);

        @Override // master.flame.danmaku.controller.b.e
        /* renamed from: d */
        public void a(List<T> list) {
            reset();
            if (list != null) {
                for (T t9 : list) {
                    c(t9);
                }
            }
        }

        @Override // master.flame.danmaku.controller.b.e
        public void reset() {
            this.f87062a.clear();
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class l extends k<String> {
        @Override // master.flame.danmaku.controller.b.k, master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean z10 = dVar != null && this.f87062a.contains(dVar.C);
            if (z10) {
                dVar.G |= 32;
            }
            return z10;
        }
    }

    /* compiled from: DanmakuFilters.java */
    /* loaded from: classes4.dex */
    public static class m extends k<Integer> {
        @Override // master.flame.danmaku.controller.b.k, master.flame.danmaku.controller.b.e
        public boolean b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
            boolean z10 = dVar != null && this.f87062a.contains(Integer.valueOf(dVar.B));
            if (z10) {
                dVar.G |= 16;
            }
            return z10;
        }
    }

    private void k() {
        try {
            throw this.f87042a;
        } catch (Exception unused) {
        }
    }

    public void a() {
        e<?>[] eVarArr;
        e<?>[] eVarArr2;
        for (e<?> eVar : this.f87045d) {
            if (eVar != null) {
                eVar.clear();
            }
        }
        for (e<?> eVar2 : this.f87046e) {
            if (eVar2 != null) {
                eVar2.clear();
            }
        }
    }

    public void b(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
        e<?>[] eVarArr;
        for (e<?> eVar : this.f87045d) {
            if (eVar != null) {
                boolean b10 = eVar.b(dVar, i4, i10, fVar, z9, danmakuContext);
                dVar.H = danmakuContext.f87165y.f87314c;
                if (b10) {
                    return;
                }
            }
        }
    }

    public boolean c(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, master.flame.danmaku.danmaku.model.f fVar, boolean z9, DanmakuContext danmakuContext) {
        e<?>[] eVarArr;
        for (e<?> eVar : this.f87046e) {
            if (eVar != null) {
                boolean b10 = eVar.b(dVar, i4, i10, fVar, z9, danmakuContext);
                dVar.H = danmakuContext.f87165y.f87314c;
                if (b10) {
                    return true;
                }
            }
        }
        return false;
    }

    public e<?> d(String str) {
        return e(str, true);
    }

    public e<?> e(String str, boolean z9) {
        e<?> eVar = (z9 ? this.f87043b : this.f87044c).get(str);
        return eVar == null ? g(str, z9) : eVar;
    }

    public e<?> f(String str) {
        return g(str, true);
    }

    public e<?> g(String str, boolean z9) {
        if (str == null) {
            k();
            return null;
        }
        e<?> eVar = this.f87043b.get(str);
        if (eVar == null) {
            if (f87031p.equals(str)) {
                eVar = new j();
            } else if (f87032q.equals(str)) {
                eVar = new h();
            } else if (f87033r.equals(str)) {
                eVar = new c();
            } else if (f87034s.equals(str)) {
                eVar = new i();
            } else if (f87035t.equals(str)) {
                eVar = new m();
            } else if (f87036u.equals(str)) {
                eVar = new l();
            } else if (f87037v.equals(str)) {
                eVar = new d();
            } else if (f87038w.equals(str)) {
                eVar = new C0780b();
            } else if (f87039x.equals(str)) {
                eVar = new f();
            } else if (f87040y.equals(str)) {
                eVar = new g();
            }
        }
        if (eVar == null) {
            k();
            return null;
        }
        eVar.a(null);
        if (z9) {
            this.f87043b.put(str, eVar);
            this.f87045d = (e[]) this.f87043b.values().toArray(this.f87045d);
        } else {
            this.f87044c.put(str, eVar);
            this.f87046e = (e[]) this.f87044c.values().toArray(this.f87046e);
        }
        return eVar;
    }

    public void h(a aVar) {
        Map<String, e<?>> map = this.f87043b;
        map.put("2000_Primary_Custom_Filter_" + aVar.hashCode(), aVar);
        this.f87045d = (e[]) this.f87043b.values().toArray(this.f87045d);
    }

    public void i() {
        a();
        this.f87043b.clear();
        this.f87045d = new e[0];
        this.f87044c.clear();
        this.f87046e = new e[0];
    }

    public void j() {
        e<?>[] eVarArr;
        e<?>[] eVarArr2;
        for (e<?> eVar : this.f87045d) {
            if (eVar != null) {
                eVar.reset();
            }
        }
        for (e<?> eVar2 : this.f87046e) {
            if (eVar2 != null) {
                eVar2.reset();
            }
        }
    }

    public void l(String str) {
        m(str, true);
    }

    public void m(String str, boolean z9) {
        e<?> remove = (z9 ? this.f87043b : this.f87044c).remove(str);
        if (remove != null) {
            remove.clear();
            if (z9) {
                this.f87045d = (e[]) this.f87043b.values().toArray(this.f87045d);
            } else {
                this.f87046e = (e[]) this.f87044c.values().toArray(this.f87046e);
            }
        }
    }

    public void n(a aVar) {
        Map<String, e<?>> map = this.f87043b;
        map.remove("2000_Primary_Custom_Filter_" + aVar.hashCode());
        this.f87045d = (e[]) this.f87043b.values().toArray(this.f87045d);
    }
}
