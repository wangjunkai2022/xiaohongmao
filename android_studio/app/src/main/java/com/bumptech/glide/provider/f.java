package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResourceEncoderRegistry.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?>> f9506a = new ArrayList();

    /* compiled from: ResourceEncoderRegistry.java */
    /* loaded from: classes.dex */
    private static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f9507a;

        /* renamed from: b  reason: collision with root package name */
        final h<T> f9508b;

        a(@NonNull Class<T> cls, @NonNull h<T> hVar) {
            this.f9507a = cls;
            this.f9508b = hVar;
        }

        boolean a(@NonNull Class<?> cls) {
            return this.f9507a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(@NonNull Class<Z> cls, @NonNull h<Z> hVar) {
        this.f9506a.add(new a<>(cls, hVar));
    }

    @Nullable
    public synchronized <Z> h<Z> b(@NonNull Class<Z> cls) {
        int size = this.f9506a.size();
        for (int i4 = 0; i4 < size; i4++) {
            a<?> aVar = this.f9506a.get(i4);
            if (aVar.a(cls)) {
                return (h<Z>) aVar.f9508b;
            }
        }
        return null;
    }

    public synchronized <Z> void c(@NonNull Class<Z> cls, @NonNull h<Z> hVar) {
        this.f9506a.add(0, new a<>(cls, hVar));
    }
}
