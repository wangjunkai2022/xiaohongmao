package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;

/* compiled from: BaseTarget.java */
@Deprecated
/* loaded from: classes.dex */
public abstract class b<Z> implements p<Z> {

    /* renamed from: a  reason: collision with root package name */
    private com.bumptech.glide.request.e f9604a;

    @Override // com.bumptech.glide.manager.m
    public void a() {
    }

    @Override // com.bumptech.glide.request.target.p
    @Nullable
    public com.bumptech.glide.request.e e() {
        return this.f9604a;
    }

    @Override // com.bumptech.glide.request.target.p
    public void j(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.p
    public void k(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.p
    public void r(@Nullable com.bumptech.glide.request.e eVar) {
        this.f9604a = eVar;
    }

    @Override // com.bumptech.glide.request.target.p
    public void s(@Nullable Drawable drawable) {
    }
}
