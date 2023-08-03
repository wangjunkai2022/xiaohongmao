package com.zhy.view.flowlayout;

import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: TagAdapter.java */
/* loaded from: classes3.dex */
public abstract class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f61849a;

    /* renamed from: b  reason: collision with root package name */
    private a f61850b;

    /* renamed from: c  reason: collision with root package name */
    private HashSet<Integer> f61851c = new HashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TagAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public c(List<T> list) {
        this.f61849a = list;
    }

    public int a() {
        List<T> list = this.f61849a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T b(int i4) {
        return this.f61849a.get(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashSet<Integer> c() {
        return this.f61851c;
    }

    public abstract View d(FlowLayout flowLayout, int i4, T t9);

    public void e() {
        this.f61850b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(a aVar) {
        this.f61850b = aVar;
    }

    public boolean g(int i4, T t9) {
        return false;
    }

    public void h(Set<Integer> set) {
        this.f61851c.clear();
        if (set != null) {
            this.f61851c.addAll(set);
        }
        e();
    }

    public void i(int... iArr) {
        for (int i4 : iArr) {
            this.f61851c.add(Integer.valueOf(i4));
        }
        e();
    }

    public c(T[] tArr) {
        this.f61849a = new ArrayList(Arrays.asList(tArr));
    }
}
