package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: TargetTracker.java */
/* loaded from: classes.dex */
public final class t implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Set<com.bumptech.glide.request.target.p<?>> f9488a = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.m
    public void a() {
        for (com.bumptech.glide.request.target.p pVar : com.bumptech.glide.util.o.k(this.f9488a)) {
            pVar.a();
        }
    }

    public void b() {
        this.f9488a.clear();
    }

    @NonNull
    public List<com.bumptech.glide.request.target.p<?>> c() {
        return com.bumptech.glide.util.o.k(this.f9488a);
    }

    public void d(@NonNull com.bumptech.glide.request.target.p<?> pVar) {
        this.f9488a.add(pVar);
    }

    public void g(@NonNull com.bumptech.glide.request.target.p<?> pVar) {
        this.f9488a.remove(pVar);
    }

    @Override // com.bumptech.glide.manager.m
    public void onStart() {
        for (com.bumptech.glide.request.target.p pVar : com.bumptech.glide.util.o.k(this.f9488a)) {
            pVar.onStart();
        }
    }

    @Override // com.bumptech.glide.manager.m
    public void onStop() {
        for (com.bumptech.glide.request.target.p pVar : com.bumptech.glide.util.o.k(this.f9488a)) {
            pVar.onStop();
        }
    }
}
