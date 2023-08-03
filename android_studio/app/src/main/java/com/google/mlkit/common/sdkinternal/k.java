package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import java.util.List;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class k {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f35803b = new Object();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static k f35804c;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private com.google.firebase.components.q f35805a;

    private k() {
    }

    @NonNull
    @u2.a
    public static k c() {
        k kVar;
        synchronized (f35803b) {
            com.google.android.gms.common.internal.u.r(f35804c != null, "MlKitContext has not been initialized");
            kVar = (k) com.google.android.gms.common.internal.u.k(f35804c);
        }
        return kVar;
    }

    @NonNull
    @u2.a
    public static k d(@NonNull Context context, @NonNull List<com.google.firebase.components.k> list) {
        k kVar;
        synchronized (f35803b) {
            com.google.android.gms.common.internal.u.r(f35804c == null, "MlKitContext is already initialized");
            k kVar2 = new k();
            f35804c = kVar2;
            com.google.firebase.components.q qVar = new com.google.firebase.components.q(com.google.android.gms.tasks.m.f31129a, list, com.google.firebase.components.f.q(g(context), Context.class, new Class[0]), com.google.firebase.components.f.q(kVar2, k.class, new Class[0]));
            kVar2.f35805a = qVar;
            qVar.j(true);
            kVar = f35804c;
        }
        return kVar;
    }

    @NonNull
    @u2.a
    public static k e(@NonNull Context context) {
        k kVar;
        synchronized (f35803b) {
            kVar = f35804c;
            if (kVar == null) {
                kVar = f(context);
            }
        }
        return kVar;
    }

    @NonNull
    public static k f(@NonNull Context context) {
        k kVar;
        synchronized (f35803b) {
            com.google.android.gms.common.internal.u.r(f35804c == null, "MlKitContext is already initialized");
            k kVar2 = new k();
            f35804c = kVar2;
            Context g4 = g(context);
            com.google.firebase.components.q d4 = com.google.firebase.components.q.f(com.google.android.gms.tasks.m.f31129a).c(com.google.firebase.components.i.c(g4, MlKitComponentDiscoveryService.class).b()).a(com.google.firebase.components.f.q(g4, Context.class, new Class[0])).a(com.google.firebase.components.f.q(kVar2, k.class, new Class[0])).d();
            kVar2.f35805a = d4;
            d4.j(true);
            kVar = f35804c;
        }
        return kVar;
    }

    private static Context g(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    @NonNull
    @u2.a
    public <T> T a(@NonNull Class<T> cls) {
        com.google.android.gms.common.internal.u.r(f35804c == this, "MlKitContext has been deleted");
        com.google.android.gms.common.internal.u.k(this.f35805a);
        return (T) this.f35805a.get(cls);
    }

    @NonNull
    @u2.a
    public Context b() {
        return (Context) a(Context.class);
    }
}
