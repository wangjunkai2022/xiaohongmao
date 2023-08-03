package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: ActivityFragmentLifecycle.java */
/* loaded from: classes.dex */
class a implements l {

    /* renamed from: a  reason: collision with root package name */
    private final Set<m> f9432a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private boolean f9433b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9434c;

    @Override // com.bumptech.glide.manager.l
    public void a(@NonNull m mVar) {
        this.f9432a.remove(mVar);
    }

    @Override // com.bumptech.glide.manager.l
    public void b(@NonNull m mVar) {
        this.f9432a.add(mVar);
        if (this.f9434c) {
            mVar.a();
        } else if (this.f9433b) {
            mVar.onStart();
        } else {
            mVar.onStop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f9434c = true;
        for (m mVar : com.bumptech.glide.util.o.k(this.f9432a)) {
            mVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f9433b = true;
        for (m mVar : com.bumptech.glide.util.o.k(this.f9432a)) {
            mVar.onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f9433b = false;
        for (m mVar : com.bumptech.glide.util.o.k(this.f9432a)) {
            mVar.onStop();
        }
    }
}
