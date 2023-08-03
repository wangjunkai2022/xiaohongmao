package com.bumptech.glide;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: GlideExperiments.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, b> f7232a;

    /* compiled from: GlideExperiments.java */
    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<?>, b> f7233a = new HashMap();

        a b(b bVar) {
            this.f7233a.put(bVar.getClass(), bVar);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public f c() {
            return new f(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a d(b bVar, boolean z9) {
            if (z9) {
                b(bVar);
            } else {
                this.f7233a.remove(bVar.getClass());
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GlideExperiments.java */
    /* loaded from: classes.dex */
    public interface b {
    }

    f(a aVar) {
        this.f7232a = Collections.unmodifiableMap(new HashMap(aVar.f7233a));
    }

    @Nullable
    <T extends b> T a(Class<T> cls) {
        return (T) this.f7232a.get(cls);
    }

    public boolean b(Class<? extends b> cls) {
        return this.f7232a.containsKey(cls);
    }
}
