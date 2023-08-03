package com.bumptech.glide.load.resource;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.i;
import java.security.MessageDigest;

/* compiled from: UnitTransformation.java */
/* loaded from: classes.dex */
public final class c<T> implements i<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final i<?> f9335c = new c();

    private c() {
    }

    @NonNull
    public static <T> c<T> c() {
        return (c) f9335c;
    }

    @Override // com.bumptech.glide.load.i
    @NonNull
    public u<T> a(@NonNull Context context, @NonNull u<T> uVar, int i4, int i10) {
        return uVar;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
    }
}
