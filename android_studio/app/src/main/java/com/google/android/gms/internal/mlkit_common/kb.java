package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.mlkit.common.sdkinternal.ModelType;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class kb {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static zzan f29777k;

    /* renamed from: l  reason: collision with root package name */
    private static final zzap f29778l = zzap.zzc("optional-module-barcode", com.google.mlkit.common.sdkinternal.o.f35889e);

    /* renamed from: a  reason: collision with root package name */
    private final String f29779a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29780b;

    /* renamed from: c  reason: collision with root package name */
    private final jb f29781c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.p f29782d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.gms.tasks.k f29783e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.gms.tasks.k f29784f;

    /* renamed from: g  reason: collision with root package name */
    private final String f29785g;

    /* renamed from: h  reason: collision with root package name */
    private final int f29786h;

    /* renamed from: i  reason: collision with root package name */
    private final Map f29787i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private final Map f29788j = new HashMap();

    public kb(Context context, final com.google.mlkit.common.sdkinternal.p pVar, jb jbVar, String str) {
        this.f29779a = context.getPackageName();
        this.f29780b = com.google.mlkit.common.sdkinternal.d.a(context);
        this.f29782d = pVar;
        this.f29781c = jbVar;
        yb.a();
        this.f29785g = str;
        this.f29783e = com.google.mlkit.common.sdkinternal.i.b().c(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.fb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return kb.this.a();
            }
        });
        com.google.mlkit.common.sdkinternal.i b10 = com.google.mlkit.common.sdkinternal.i.b();
        pVar.getClass();
        this.f29784f = b10.c(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.gb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return com.google.mlkit.common.sdkinternal.p.this.i();
            }
        });
        zzap zzapVar = f29778l;
        this.f29786h = zzapVar.containsKey(str) ? DynamiteModule.c(context, (String) zzapVar.get(str)) : -1;
    }

    @NonNull
    private static synchronized zzan h() {
        synchronized (kb.class) {
            zzan zzanVar = f29777k;
            if (zzanVar != null) {
                return zzanVar;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            k kVar = new k();
            for (int i4 = 0; i4 < locales.size(); i4++) {
                kVar.c(com.google.mlkit.common.sdkinternal.d.b(locales.get(i4)));
            }
            zzan d4 = kVar.d();
            f29777k = d4;
            return d4;
        }
    }

    private final w9 i(String str, String str2) {
        String i4;
        w9 w9Var = new w9();
        w9Var.b(this.f29779a);
        w9Var.c(this.f29780b);
        w9Var.h(h());
        w9Var.g(Boolean.TRUE);
        w9Var.l(str);
        w9Var.j(str2);
        if (this.f29784f.v()) {
            i4 = (String) this.f29784f.r();
        } else {
            i4 = this.f29782d.i();
        }
        w9Var.i(i4);
        w9Var.d(10);
        w9Var.k(Integer.valueOf(this.f29786h));
        return w9Var;
    }

    @WorkerThread
    private final String j() {
        if (this.f29783e.v()) {
            return (String) this.f29783e.r();
        }
        return com.google.android.gms.common.internal.r.a().b(this.f29785g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a() throws Exception {
        return com.google.android.gms.common.internal.r.a().b(this.f29785g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(ab abVar, zziu zziuVar, String str) {
        abVar.d(zziuVar);
        abVar.c(i(abVar.b(), str));
        this.f29781c.a(abVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c(ab abVar, mb mbVar, com.google.mlkit.common.model.d dVar) {
        abVar.d(zziu.MODEL_DOWNLOAD);
        abVar.c(i(mbVar.e(), j()));
        abVar.e(wb.a(dVar, this.f29782d, mbVar));
        this.f29781c.a(abVar);
    }

    public final void d(final ab abVar, final zziu zziuVar) {
        final String j4 = j();
        com.google.mlkit.common.sdkinternal.i.g().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_common.hb
            @Override // java.lang.Runnable
            public final void run() {
                kb.this.b(abVar, zziuVar, j4);
            }
        });
    }

    public final void e(ab abVar, com.google.mlkit.common.model.d dVar, boolean z9, int i4) {
        lb h4 = mb.h();
        h4.f(false);
        h4.d(dVar.e());
        h4.a(zziz.FAILED);
        h4.b(zzit.DOWNLOAD_FAILED);
        h4.c(i4);
        g(abVar, dVar, h4.g());
    }

    public final void f(ab abVar, com.google.mlkit.common.model.d dVar, zzit zzitVar, boolean z9, ModelType modelType, zziz zzizVar) {
        lb h4 = mb.h();
        h4.f(z9);
        h4.d(modelType);
        h4.b(zzitVar);
        h4.a(zzizVar);
        g(abVar, dVar, h4.g());
    }

    public final void g(final ab abVar, final com.google.mlkit.common.model.d dVar, final mb mbVar) {
        com.google.mlkit.common.sdkinternal.i.g().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_common.ib
            @Override // java.lang.Runnable
            public final void run() {
                kb.this.c(abVar, mbVar, dVar);
            }
        });
    }
}
