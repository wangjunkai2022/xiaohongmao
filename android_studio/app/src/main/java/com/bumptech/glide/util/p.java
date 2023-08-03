package com.bumptech.glide.util;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.g;
import java.util.Arrays;

/* compiled from: ViewPreloadSizeProvider.java */
/* loaded from: classes.dex */
public class p<T> implements g.b<T>, com.bumptech.glide.request.target.o {

    /* renamed from: a  reason: collision with root package name */
    private int[] f9733a;

    /* renamed from: b  reason: collision with root package name */
    private a f9734b;

    /* compiled from: ViewPreloadSizeProvider.java */
    /* loaded from: classes.dex */
    static final class a extends com.bumptech.glide.request.target.f<View, Object> {
        a(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.f
        protected void i(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void q(@NonNull Object obj, @Nullable com.bumptech.glide.request.transition.f<? super Object> fVar) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void s(@Nullable Drawable drawable) {
        }
    }

    public p() {
    }

    @Override // com.bumptech.glide.g.b
    @Nullable
    public int[] a(@NonNull T t9, int i4, int i10) {
        int[] iArr = this.f9733a;
        if (iArr == null) {
            return null;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    public void b(@NonNull View view) {
        if (this.f9733a == null && this.f9734b == null) {
            a aVar = new a(view);
            this.f9734b = aVar;
            aVar.u(this);
        }
    }

    @Override // com.bumptech.glide.request.target.o
    public void d(int i4, int i10) {
        this.f9733a = new int[]{i4, i10};
        this.f9734b = null;
    }

    public p(@NonNull View view) {
        a aVar = new a(view);
        this.f9734b = aVar;
        aVar.u(this);
    }
}
