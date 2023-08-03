package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class ka {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static zzu f30671k;

    /* renamed from: l  reason: collision with root package name */
    private static final zzw f30672l = zzw.zzc("optional-module-barcode", com.google.mlkit.common.sdkinternal.o.f35889e);

    /* renamed from: a  reason: collision with root package name */
    private final String f30673a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30674b;

    /* renamed from: c  reason: collision with root package name */
    private final ja f30675c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.p f30676d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.gms.tasks.k f30677e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.gms.tasks.k f30678f;

    /* renamed from: g  reason: collision with root package name */
    private final String f30679g;

    /* renamed from: h  reason: collision with root package name */
    private final int f30680h;

    /* renamed from: i  reason: collision with root package name */
    private final Map f30681i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private final Map f30682j = new HashMap();

    public ka(Context context, final com.google.mlkit.common.sdkinternal.p pVar, ja jaVar, String str) {
        this.f30673a = context.getPackageName();
        this.f30674b = com.google.mlkit.common.sdkinternal.d.a(context);
        this.f30676d = pVar;
        this.f30675c = jaVar;
        wa.a();
        this.f30679g = str;
        this.f30677e = com.google.mlkit.common.sdkinternal.i.b().c(new Callable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.fa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ka.this.a();
            }
        });
        com.google.mlkit.common.sdkinternal.i b10 = com.google.mlkit.common.sdkinternal.i.b();
        pVar.getClass();
        this.f30678f = b10.c(new Callable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.ga
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return com.google.mlkit.common.sdkinternal.p.this.i();
            }
        });
        zzw zzwVar = f30672l;
        this.f30680h = zzwVar.containsKey(str) ? DynamiteModule.c(context, (String) zzwVar.get(str)) : -1;
    }

    @NonNull
    private static synchronized zzu f() {
        synchronized (ka.class) {
            zzu zzuVar = f30671k;
            if (zzuVar != null) {
                return zzuVar;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            cb cbVar = new cb();
            for (int i4 = 0; i4 < locales.size(); i4++) {
                cbVar.c(com.google.mlkit.common.sdkinternal.d.b(locales.get(i4)));
            }
            zzu d4 = cbVar.d();
            f30671k = d4;
            return d4;
        }
    }

    @WorkerThread
    private final String g() {
        if (this.f30677e.v()) {
            return (String) this.f30677e.r();
        }
        return com.google.android.gms.common.internal.r.a().b(this.f30679g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a() throws Exception {
        return com.google.android.gms.common.internal.r.a().b(this.f30679g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(ba baVar, zzhv zzhvVar, String str) {
        String i4;
        baVar.d(zzhvVar);
        String b10 = baVar.b();
        c9 c9Var = new c9();
        c9Var.b(this.f30673a);
        c9Var.c(this.f30674b);
        c9Var.h(f());
        c9Var.g(Boolean.TRUE);
        c9Var.l(b10);
        c9Var.j(str);
        if (this.f30678f.v()) {
            i4 = (String) this.f30678f.r();
        } else {
            i4 = this.f30676d.i();
        }
        c9Var.i(i4);
        c9Var.d(10);
        c9Var.k(Integer.valueOf(this.f30680h));
        baVar.c(c9Var);
        this.f30675c.a(baVar);
    }

    public final void c(ba baVar, zzhv zzhvVar) {
        d(baVar, zzhvVar, g());
    }

    public final void d(final ba baVar, final zzhv zzhvVar, final String str) {
        com.google.mlkit.common.sdkinternal.i.g().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.ia
            @Override // java.lang.Runnable
            public final void run() {
                ka.this.b(baVar, zzhvVar, str);
            }
        });
    }

    @WorkerThread
    public final void e(com.google.mlkit.nl.languageid.internal.h hVar, zzhv zzhvVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f30681i.get(zzhvVar) != null && elapsedRealtime - ((Long) this.f30681i.get(zzhvVar)).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
            return;
        }
        this.f30681i.put(zzhvVar, Long.valueOf(elapsedRealtime));
        d(hVar.a(), zzhvVar, g());
    }
}
