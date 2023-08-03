package com.airbnb.lottie.model.animatable;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: BaseAnimatableValue.java */
/* loaded from: classes.dex */
abstract class n<V, O> implements m<V, O> {

    /* renamed from: a  reason: collision with root package name */
    final List<com.airbnb.lottie.value.a<V>> f4426a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(V v9) {
        this(Collections.singletonList(new com.airbnb.lottie.value.a(v9)));
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public List<com.airbnb.lottie.value.a<V>> b() {
        return this.f4426a;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public boolean isStatic() {
        return this.f4426a.isEmpty() || (this.f4426a.size() == 1 && this.f4426a.get(0).h());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f4426a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.f4426a.toArray()));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(List<com.airbnb.lottie.value.a<V>> list) {
        this.f4426a = list;
    }
}
