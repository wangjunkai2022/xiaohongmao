package io.reactivex.observables;

import io.reactivex.z;
import m7.f;

/* compiled from: GroupedObservable.java */
/* loaded from: classes4.dex */
public abstract class b<K, T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final K f75934a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@f K k10) {
        this.f75934a = k10;
    }

    @f
    public K b() {
        return this.f75934a;
    }
}
