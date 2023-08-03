package com.bumptech.glide.load.engine.prefill;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: PreFillQueue.java */
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<d, Integer> f8960a;

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f8961b;

    /* renamed from: c  reason: collision with root package name */
    private int f8962c;

    /* renamed from: d  reason: collision with root package name */
    private int f8963d;

    public c(Map<d, Integer> map) {
        this.f8960a = map;
        this.f8961b = new ArrayList(map.keySet());
        for (Integer num : map.values()) {
            this.f8962c += num.intValue();
        }
    }

    public int a() {
        return this.f8962c;
    }

    public boolean b() {
        return this.f8962c == 0;
    }

    public d c() {
        d dVar = this.f8961b.get(this.f8963d);
        Integer num = this.f8960a.get(dVar);
        if (num.intValue() == 1) {
            this.f8960a.remove(dVar);
            this.f8961b.remove(this.f8963d);
        } else {
            this.f8960a.put(dVar, Integer.valueOf(num.intValue() - 1));
        }
        this.f8962c--;
        this.f8963d = this.f8961b.isEmpty() ? 0 : (this.f8963d + 1) % this.f8961b.size();
        return dVar;
    }
}
