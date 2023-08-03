package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.g;

/* compiled from: FixedPreloadSizeProvider.java */
/* loaded from: classes.dex */
public class g<T> implements g.b<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f9711a;

    public g(int i4, int i10) {
        this.f9711a = new int[]{i4, i10};
    }

    @Override // com.bumptech.glide.g.b
    @Nullable
    public int[] a(@NonNull T t9, int i4, int i10) {
        return this.f9711a;
    }
}
