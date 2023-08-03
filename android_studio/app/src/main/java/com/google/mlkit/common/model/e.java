package com.google.mlkit.common.model;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.tasks.n;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.model.k;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final Map f35763a = new HashMap();

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Class f35764a;

        /* renamed from: b  reason: collision with root package name */
        private final o3.b f35765b;

        @u2.a
        public <RemoteT extends d> a(@NonNull Class<RemoteT> cls, @NonNull o3.b<? extends k<RemoteT>> bVar) {
            this.f35764a = cls;
            this.f35765b = bVar;
        }

        final o3.b a() {
            return this.f35765b;
        }

        final Class b() {
            return this.f35764a;
        }
    }

    @u2.a
    public e(@NonNull Set<a> set) {
        for (a aVar : set) {
            this.f35763a.put(aVar.b(), aVar.a());
        }
    }

    @NonNull
    public static synchronized e d() {
        e eVar;
        synchronized (e.class) {
            eVar = (e) com.google.mlkit.common.sdkinternal.k.c().a(e.class);
        }
        return eVar;
    }

    private final k f(Class cls) {
        return (k) ((o3.b) u.k((o3.b) this.f35763a.get(cls))).get();
    }

    @NonNull
    public com.google.android.gms.tasks.k<Void> a(@NonNull d dVar) {
        u.l(dVar, "RemoteModel cannot be null");
        return f(dVar.getClass()).c(dVar);
    }

    @NonNull
    public com.google.android.gms.tasks.k<Void> b(@NonNull d dVar, @NonNull b bVar) {
        u.l(dVar, "RemoteModel cannot be null");
        u.l(bVar, "DownloadConditions cannot be null");
        if (this.f35763a.containsKey(dVar.getClass())) {
            return f(dVar.getClass()).a(dVar, bVar);
        }
        String simpleName = dVar.getClass().getSimpleName();
        return n.f(new MlKitException("Feature model '" + simpleName + "' doesn't have a corresponding modelmanager registered.", 13));
    }

    @NonNull
    public <T extends d> com.google.android.gms.tasks.k<Set<T>> c(@NonNull Class<T> cls) {
        return ((k) ((o3.b) u.k((o3.b) this.f35763a.get(cls))).get()).b();
    }

    @NonNull
    public com.google.android.gms.tasks.k<Boolean> e(@NonNull d dVar) {
        u.l(dVar, "RemoteModel cannot be null");
        return f(dVar.getClass()).d(dVar);
    }
}
