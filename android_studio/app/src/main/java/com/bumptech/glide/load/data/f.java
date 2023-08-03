package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: DataRewinderRegistry.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final e.a<?> f8539b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, e.a<?>> f8540a = new HashMap();

    /* compiled from: DataRewinderRegistry.java */
    /* loaded from: classes.dex */
    class a implements e.a<Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public e<Object> b(@NonNull Object obj) {
            return new b(obj);
        }
    }

    /* compiled from: DataRewinderRegistry.java */
    /* loaded from: classes.dex */
    private static final class b implements e<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f8541a;

        b(@NonNull Object obj) {
            this.f8541a = obj;
        }

        @Override // com.bumptech.glide.load.data.e
        @NonNull
        public Object a() {
            return this.f8541a;
        }

        @Override // com.bumptech.glide.load.data.e
        public void b() {
        }
    }

    @NonNull
    public synchronized <T> e<T> a(@NonNull T t9) {
        e.a<?> aVar;
        com.bumptech.glide.util.m.d(t9);
        aVar = this.f8540a.get(t9.getClass());
        if (aVar == null) {
            Iterator<e.a<?>> it = this.f8540a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                e.a<?> next = it.next();
                if (next.a().isAssignableFrom(t9.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f8539b;
        }
        return (e<T>) aVar.b(t9);
    }

    public synchronized void b(@NonNull e.a<?> aVar) {
        this.f8540a.put(aVar.a(), aVar);
    }
}
