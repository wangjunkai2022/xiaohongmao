package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.util.l;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ModelToResourceClassCache.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<l> f9499a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<l, List<Class<?>>> f9500b = new ArrayMap<>();

    public void a() {
        synchronized (this.f9500b) {
            this.f9500b.clear();
        }
    }

    @Nullable
    public List<Class<?>> b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        l andSet = this.f9499a.getAndSet(null);
        if (andSet == null) {
            andSet = new l(cls, cls2, cls3);
        } else {
            andSet.b(cls, cls2, cls3);
        }
        synchronized (this.f9500b) {
            list = this.f9500b.get(andSet);
        }
        this.f9499a.set(andSet);
        return list;
    }

    public void c(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f9500b) {
            this.f9500b.put(new l(cls, cls2, cls3), list);
        }
    }
}
