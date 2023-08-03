package com.bumptech.glide.load.engine.bitmap_recycle;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.bitmap_recycle.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: GroupedLinkedMap.java */
/* loaded from: classes.dex */
class h<K extends m, V> {

    /* renamed from: a  reason: collision with root package name */
    private final a<K, V> f8632a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<K, a<K, V>> f8633b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GroupedLinkedMap.java */
    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f8634a;

        /* renamed from: b  reason: collision with root package name */
        private List<V> f8635b;

        /* renamed from: c  reason: collision with root package name */
        a<K, V> f8636c;

        /* renamed from: d  reason: collision with root package name */
        a<K, V> f8637d;

        a() {
            this(null);
        }

        public void a(V v9) {
            if (this.f8635b == null) {
                this.f8635b = new ArrayList();
            }
            this.f8635b.add(v9);
        }

        @Nullable
        public V b() {
            int c10 = c();
            if (c10 > 0) {
                return this.f8635b.remove(c10 - 1);
            }
            return null;
        }

        public int c() {
            List<V> list = this.f8635b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        a(K k10) {
            this.f8637d = this;
            this.f8636c = this;
            this.f8634a = k10;
        }
    }

    private void b(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f8632a;
        aVar.f8637d = aVar2;
        aVar.f8636c = aVar2.f8636c;
        g(aVar);
    }

    private void c(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f8632a;
        aVar.f8637d = aVar2.f8637d;
        aVar.f8636c = aVar2;
        g(aVar);
    }

    private static <K, V> void e(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f8637d;
        aVar2.f8636c = aVar.f8636c;
        aVar.f8636c.f8637d = aVar2;
    }

    private static <K, V> void g(a<K, V> aVar) {
        aVar.f8636c.f8637d = aVar;
        aVar.f8637d.f8636c = aVar;
    }

    @Nullable
    public V a(K k10) {
        a<K, V> aVar = this.f8633b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            this.f8633b.put(k10, aVar);
        } else {
            k10.a();
        }
        b(aVar);
        return aVar.b();
    }

    public void d(K k10, V v9) {
        a<K, V> aVar = this.f8633b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            c(aVar);
            this.f8633b.put(k10, aVar);
        } else {
            k10.a();
        }
        aVar.a(v9);
    }

    @Nullable
    public V f() {
        for (a aVar = this.f8632a.f8637d; !aVar.equals(this.f8632a); aVar = aVar.f8637d) {
            V v9 = (V) aVar.b();
            if (v9 != null) {
                return v9;
            }
            e(aVar);
            this.f8633b.remove(aVar.f8634a);
            ((m) aVar.f8634a).a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z9 = false;
        for (a aVar = this.f8632a.f8636c; !aVar.equals(this.f8632a); aVar = aVar.f8636c) {
            z9 = true;
            sb.append('{');
            sb.append(aVar.f8634a);
            sb.append(':');
            sb.append(aVar.c());
            sb.append("}, ");
        }
        if (z9) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
