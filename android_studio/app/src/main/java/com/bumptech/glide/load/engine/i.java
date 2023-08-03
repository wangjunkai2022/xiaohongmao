package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DecodePath.java */
/* loaded from: classes.dex */
public class i<DataType, ResourceType, Transcode> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f8854f = "DecodePath";

    /* renamed from: a  reason: collision with root package name */
    private final Class<DataType> f8855a;

    /* renamed from: b  reason: collision with root package name */
    private final List<? extends com.bumptech.glide.load.g<DataType, ResourceType>> f8856b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.transcode.e<ResourceType, Transcode> f8857c;

    /* renamed from: d  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f8858d;

    /* renamed from: e  reason: collision with root package name */
    private final String f8859e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DecodePath.java */
    /* loaded from: classes.dex */
    public interface a<ResourceType> {
        @NonNull
        u<ResourceType> a(@NonNull u<ResourceType> uVar);
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends com.bumptech.glide.load.g<DataType, ResourceType>> list, com.bumptech.glide.load.resource.transcode.e<ResourceType, Transcode> eVar, Pools.Pool<List<Throwable>> pool) {
        this.f8855a = cls;
        this.f8856b = list;
        this.f8857c = eVar;
        this.f8858d = pool;
        this.f8859e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + com.alipay.sdk.util.i.f6967d;
    }

    @NonNull
    private u<ResourceType> b(com.bumptech.glide.load.data.e<DataType> eVar, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws GlideException {
        List<Throwable> list = (List) com.bumptech.glide.util.m.d(this.f8858d.acquire());
        try {
            return c(eVar, i4, i10, fVar, list);
        } finally {
            this.f8858d.release(list);
        }
    }

    @NonNull
    private u<ResourceType> c(com.bumptech.glide.load.data.e<DataType> eVar, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar, List<Throwable> list) throws GlideException {
        int size = this.f8856b.size();
        u<ResourceType> uVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            com.bumptech.glide.load.g<DataType, ResourceType> gVar = this.f8856b.get(i11);
            try {
                if (gVar.a(eVar.a(), fVar)) {
                    uVar = gVar.b(eVar.a(), i4, i10, fVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e4) {
                if (Log.isLoggable(f8854f, 2)) {
                    Log.v(f8854f, "Failed to decode data for " + gVar, e4);
                }
                list.add(e4);
            }
            if (uVar != null) {
                break;
            }
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f8859e, new ArrayList(list));
    }

    public u<Transcode> a(com.bumptech.glide.load.data.e<DataType> eVar, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar, a<ResourceType> aVar) throws GlideException {
        return this.f8857c.a(aVar.a(b(eVar, i4, i10, fVar)), fVar);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f8855a + ", decoders=" + this.f8856b + ", transcoder=" + this.f8857c + '}';
    }
}
