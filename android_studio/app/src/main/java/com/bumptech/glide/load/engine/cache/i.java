package com.bumptech.glide.load.engine.cache;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.cache.j;
import com.bumptech.glide.load.engine.u;

/* compiled from: LruResourceCache.java */
/* loaded from: classes.dex */
public class i extends com.bumptech.glide.util.j<com.bumptech.glide.load.c, u<?>> implements j {

    /* renamed from: e  reason: collision with root package name */
    private j.a f8720e;

    public i(long j4) {
        super(j4);
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    @SuppressLint({"InlinedApi"})
    public void a(int i4) {
        if (i4 >= 40) {
            b();
        } else if (i4 >= 20 || i4 == 15) {
            o(getMaxSize() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    @Nullable
    public /* bridge */ /* synthetic */ u d(@NonNull com.bumptech.glide.load.c cVar, @Nullable u uVar) {
        return (u) super.m(cVar, uVar);
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    @Nullable
    public /* bridge */ /* synthetic */ u e(@NonNull com.bumptech.glide.load.c cVar) {
        return (u) super.n(cVar);
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    public void f(@NonNull j.a aVar) {
        this.f8720e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.util.j
    /* renamed from: p */
    public int k(@Nullable u<?> uVar) {
        if (uVar == null) {
            return super.k(null);
        }
        return uVar.getSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.util.j
    /* renamed from: q */
    public void l(@NonNull com.bumptech.glide.load.c cVar, @Nullable u<?> uVar) {
        j.a aVar = this.f8720e;
        if (aVar == null || uVar == null) {
            return;
        }
        aVar.a(uVar);
    }
}
