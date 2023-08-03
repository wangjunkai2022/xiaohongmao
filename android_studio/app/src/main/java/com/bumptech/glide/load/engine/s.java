package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: LoadPath.java */
/* loaded from: classes.dex */
public class s<Data, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<Data> f8975a;

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f8976b;

    /* renamed from: c  reason: collision with root package name */
    private final List<? extends i<Data, ResourceType, Transcode>> f8977c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8978d;

    public s(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f8975a = cls;
        this.f8976b = pool;
        this.f8977c = (List) com.bumptech.glide.util.m.c(list);
        this.f8978d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + com.alipay.sdk.util.i.f6967d;
    }

    private u<Transcode> c(com.bumptech.glide.load.data.e<Data> eVar, @NonNull com.bumptech.glide.load.f fVar, int i4, int i10, i.a<ResourceType> aVar, List<Throwable> list) throws GlideException {
        int size = this.f8977c.size();
        u<Transcode> uVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            try {
                uVar = this.f8977c.get(i11).a(eVar, i4, i10, fVar, aVar);
            } catch (GlideException e4) {
                list.add(e4);
            }
            if (uVar != null) {
                break;
            }
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f8978d, new ArrayList(list));
    }

    public Class<Data> a() {
        return this.f8975a;
    }

    public u<Transcode> b(com.bumptech.glide.load.data.e<Data> eVar, @NonNull com.bumptech.glide.load.f fVar, int i4, int i10, i.a<ResourceType> aVar) throws GlideException {
        List<Throwable> list = (List) com.bumptech.glide.util.m.d(this.f8976b.acquire());
        try {
            return c(eVar, fVar, i4, i10, aVar, list);
        } finally {
            this.f8976b.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f8977c.toArray()) + '}';
    }
}
