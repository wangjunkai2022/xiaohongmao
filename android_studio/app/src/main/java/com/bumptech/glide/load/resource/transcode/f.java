package com.bumptech.glide.load.resource.transcode;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TranscoderRegistry.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?, ?>> f9419a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TranscoderRegistry.java */
    /* loaded from: classes.dex */
    public static final class a<Z, R> {

        /* renamed from: a  reason: collision with root package name */
        final Class<Z> f9420a;

        /* renamed from: b  reason: collision with root package name */
        final Class<R> f9421b;

        /* renamed from: c  reason: collision with root package name */
        final e<Z, R> f9422c;

        a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
            this.f9420a = cls;
            this.f9421b = cls2;
            this.f9422c = eVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f9420a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f9421b);
        }
    }

    @NonNull
    public synchronized <Z, R> e<Z, R> a(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.b();
        }
        for (a<?, ?> aVar : this.f9419a) {
            if (aVar.a(cls, cls2)) {
                return (e<Z, R>) aVar.f9422c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> b(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (a<?, ?> aVar : this.f9419a) {
            if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f9421b)) {
                arrayList.add(aVar.f9421b);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void c(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
        this.f9419a.add(new a<>(cls, cls2, eVar));
    }
}
