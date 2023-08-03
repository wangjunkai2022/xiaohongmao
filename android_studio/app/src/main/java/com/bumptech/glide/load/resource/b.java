package com.bumptech.glide.load.resource;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.util.m;

/* compiled from: SimpleResource.java */
/* loaded from: classes.dex */
public class b<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f9158a;

    public b(@NonNull T t9) {
        this.f9158a = (T) m.d(t9);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<T> a() {
        return (Class<T>) this.f9158a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public final T get() {
        return this.f9158a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int getSize() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
    }
}
