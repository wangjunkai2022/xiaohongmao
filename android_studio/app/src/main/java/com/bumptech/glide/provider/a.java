package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EncoderRegistry.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<C0064a<?>> f9492a = new ArrayList();

    /* compiled from: EncoderRegistry.java */
    /* renamed from: com.bumptech.glide.provider.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0064a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f9493a;

        /* renamed from: b  reason: collision with root package name */
        final com.bumptech.glide.load.a<T> f9494b;

        C0064a(@NonNull Class<T> cls, @NonNull com.bumptech.glide.load.a<T> aVar) {
            this.f9493a = cls;
            this.f9494b = aVar;
        }

        boolean a(@NonNull Class<?> cls) {
            return this.f9493a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> void a(@NonNull Class<T> cls, @NonNull com.bumptech.glide.load.a<T> aVar) {
        this.f9492a.add(new C0064a<>(cls, aVar));
    }

    @Nullable
    public synchronized <T> com.bumptech.glide.load.a<T> b(@NonNull Class<T> cls) {
        for (C0064a<?> c0064a : this.f9492a) {
            if (c0064a.a(cls)) {
                return (com.bumptech.glide.load.a<T>) c0064a.f9494b;
            }
        }
        return null;
    }

    public synchronized <T> void c(@NonNull Class<T> cls, @NonNull com.bumptech.glide.load.a<T> aVar) {
        this.f9492a.add(0, new C0064a<>(cls, aVar));
    }
}
