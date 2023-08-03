package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: CustomTarget.java */
/* loaded from: classes.dex */
public abstract class e<T> implements p<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int f9605a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9606b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.request.e f9607c;

    public e() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.manager.m
    public void a() {
    }

    @Override // com.bumptech.glide.request.target.p
    @Nullable
    public final com.bumptech.glide.request.e e() {
        return this.f9607c;
    }

    @Override // com.bumptech.glide.request.target.p
    public final void f(@NonNull o oVar) {
    }

    @Override // com.bumptech.glide.request.target.p
    public void j(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.p
    public final void r(@Nullable com.bumptech.glide.request.e eVar) {
        this.f9607c = eVar;
    }

    @Override // com.bumptech.glide.request.target.p
    public void s(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.p
    public final void u(@NonNull o oVar) {
        oVar.d(this.f9605a, this.f9606b);
    }

    public e(int i4, int i10) {
        if (com.bumptech.glide.util.o.w(i4, i10)) {
            this.f9605a = i4;
            this.f9606b = i10;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i4 + " and height: " + i10);
    }
}
