package io.reactivex.rxjava3.observables;

import io.reactivex.rxjava3.core.g0;
import p7.f;

/* compiled from: GroupedObservable.java */
/* loaded from: classes4.dex */
public abstract class b<K, T> extends g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final K f81348a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@f K key) {
        this.f81348a = key;
    }

    @f
    public K A8() {
        return this.f81348a;
    }
}
