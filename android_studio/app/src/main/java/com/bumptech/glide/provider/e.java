package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ResourceDecoderRegistry.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f9501a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<a<?, ?>>> f9502b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceDecoderRegistry.java */
    /* loaded from: classes.dex */
    public static class a<T, R> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f9503a;

        /* renamed from: b  reason: collision with root package name */
        final Class<R> f9504b;

        /* renamed from: c  reason: collision with root package name */
        final g<T, R> f9505c;

        public a(@NonNull Class<T> cls, @NonNull Class<R> cls2, g<T, R> gVar) {
            this.f9503a = cls;
            this.f9504b = cls2;
            this.f9505c = gVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f9503a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f9504b);
        }
    }

    @NonNull
    private synchronized List<a<?, ?>> c(@NonNull String str) {
        List<a<?, ?>> list;
        if (!this.f9501a.contains(str)) {
            this.f9501a.add(str);
        }
        list = this.f9502b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f9502b.put(str, list);
        }
        return list;
    }

    public synchronized <T, R> void a(@NonNull String str, @NonNull g<T, R> gVar, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        c(str).add(new a<>(cls, cls2, gVar));
    }

    @NonNull
    public synchronized <T, R> List<g<T, R>> b(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f9501a) {
            List<a<?, ?>> list = this.f9502b.get(str);
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.f9505c);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> d(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f9501a) {
            List<a<?, ?>> list = this.f9502b.get(str);
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f9504b)) {
                        arrayList.add(aVar.f9504b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void e(@NonNull String str, @NonNull g<T, R> gVar, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        c(str).add(0, new a<>(cls, cls2, gVar));
    }

    public synchronized void f(@NonNull List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f9501a);
        this.f9501a.clear();
        for (String str : list) {
            this.f9501a.add(str);
        }
        for (String str2 : arrayList) {
            if (!list.contains(str2)) {
                this.f9501a.add(str2);
            }
        }
    }
}
