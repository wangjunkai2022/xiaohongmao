package com.bumptech.glide.provider;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.resource.transcode.g;
import com.bumptech.glide.util.l;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: LoadPathCache.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static final s<?, ?, ?> f9496c = new s<>(Object.class, Object.class, Object.class, Collections.singletonList(new i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<l, s<?, ?, ?>> f9497a = new ArrayMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<l> f9498b = new AtomicReference<>();

    private l b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        l andSet = this.f9498b.getAndSet(null);
        if (andSet == null) {
            andSet = new l();
        }
        andSet.b(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    public <Data, TResource, Transcode> s<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        s<Data, TResource, Transcode> sVar;
        l b10 = b(cls, cls2, cls3);
        synchronized (this.f9497a) {
            sVar = (s<Data, TResource, Transcode>) this.f9497a.get(b10);
        }
        this.f9498b.set(b10);
        return sVar;
    }

    public boolean c(@Nullable s<?, ?, ?> sVar) {
        return f9496c.equals(sVar);
    }

    public void d(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable s<?, ?, ?> sVar) {
        synchronized (this.f9497a) {
            ArrayMap<l, s<?, ?, ?>> arrayMap = this.f9497a;
            l lVar = new l(cls, cls2, cls3);
            if (sVar == null) {
                sVar = f9496c;
            }
            arrayMap.put(lVar, sVar);
        }
    }
}
