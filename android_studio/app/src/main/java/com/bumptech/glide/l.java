package com.bumptech.glide;

import androidx.annotation.NonNull;
import com.bumptech.glide.l;
import com.bumptech.glide.request.transition.j;
import com.bumptech.glide.util.m;

/* compiled from: TransitionOptions.java */
/* loaded from: classes.dex */
public abstract class l<CHILD extends l<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private com.bumptech.glide.request.transition.g<? super TranscodeType> f8505a = com.bumptech.glide.request.transition.e.c();

    private CHILD d() {
        return this;
    }

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    @NonNull
    public final CHILD b() {
        return f(com.bumptech.glide.request.transition.e.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.bumptech.glide.request.transition.g<? super TranscodeType> c() {
        return this.f8505a;
    }

    @NonNull
    public final CHILD e(int i4) {
        return f(new com.bumptech.glide.request.transition.h(i4));
    }

    @NonNull
    public final CHILD f(@NonNull com.bumptech.glide.request.transition.g<? super TranscodeType> gVar) {
        this.f8505a = (com.bumptech.glide.request.transition.g) m.d(gVar);
        return d();
    }

    @NonNull
    public final CHILD g(@NonNull j.a aVar) {
        return f(new com.bumptech.glide.request.transition.i(aVar));
    }
}
