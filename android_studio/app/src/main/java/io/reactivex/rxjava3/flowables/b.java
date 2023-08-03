package io.reactivex.rxjava3.flowables;

import io.reactivex.rxjava3.core.m;
import p7.f;

/* compiled from: GroupedFlowable.java */
/* loaded from: classes4.dex */
public abstract class b<K, T> extends m<T> {

    /* renamed from: b  reason: collision with root package name */
    final K f76172b;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@f K key) {
        this.f76172b = key;
    }

    @f
    public K g9() {
        return this.f76172b;
    }
}
