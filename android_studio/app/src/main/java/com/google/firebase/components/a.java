package com.google.firebase.components;

import java.util.Set;

/* compiled from: AbstractComponentContainer.java */
/* loaded from: classes2.dex */
abstract class a implements g {
    @Override // com.google.firebase.components.g
    public <T> Set<T> c(Class<T> cls) {
        return b(cls).get();
    }

    @Override // com.google.firebase.components.g
    public <T> T get(Class<T> cls) {
        o3.b<T> d4 = d(cls);
        if (d4 == null) {
            return null;
        }
        return d4.get();
    }
}
