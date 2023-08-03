package com.bumptech.glide.request.target;

import androidx.annotation.NonNull;

/* compiled from: SimpleTarget.java */
@Deprecated
/* loaded from: classes.dex */
public abstract class n<Z> extends b<Z> {

    /* renamed from: b  reason: collision with root package name */
    private final int f9642b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9643c;

    public n() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.p
    public void f(@NonNull o oVar) {
    }

    @Override // com.bumptech.glide.request.target.p
    public final void u(@NonNull o oVar) {
        if (com.bumptech.glide.util.o.w(this.f9642b, this.f9643c)) {
            oVar.d(this.f9642b, this.f9643c);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f9642b + " and height: " + this.f9643c + ", either provide dimensions in the constructor or call override()");
    }

    public n(int i4, int i10) {
        this.f9642b = i4;
        this.f9643c = i10;
    }
}
