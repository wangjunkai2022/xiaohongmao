package com.bumptech.glide.load;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: MultiTransformation.java */
/* loaded from: classes.dex */
public class d<T> implements i<T> {

    /* renamed from: c  reason: collision with root package name */
    private final Collection<? extends i<T>> f8528c;

    @SafeVarargs
    public d(@NonNull i<T>... iVarArr) {
        if (iVarArr.length != 0) {
            this.f8528c = Arrays.asList(iVarArr);
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }

    @Override // com.bumptech.glide.load.i
    @NonNull
    public u<T> a(@NonNull Context context, @NonNull u<T> uVar, int i4, int i10) {
        u<T> uVar2 = uVar;
        for (i<T> iVar : this.f8528c) {
            u<T> a10 = iVar.a(context, uVar2, i4, i10);
            if (uVar2 != null && !uVar2.equals(uVar) && !uVar2.equals(a10)) {
                uVar2.recycle();
            }
            uVar2 = a10;
        }
        return uVar2;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        for (i<T> iVar : this.f8528c) {
            iVar.b(messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f8528c.equals(((d) obj).f8528c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f8528c.hashCode();
    }

    public d(@NonNull Collection<? extends i<T>> collection) {
        if (!collection.isEmpty()) {
            this.f8528c = collection;
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }
}
