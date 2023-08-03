package com.google.mlkit.common.internal.model;

import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_common.e7;
import com.google.android.gms.internal.mlkit_common.kb;
import com.google.android.gms.internal.mlkit_common.nb;
import com.google.android.gms.internal.mlkit_common.o7;
import com.google.android.gms.internal.mlkit_common.vb;
import com.google.android.gms.internal.mlkit_common.w7;
import com.google.android.gms.internal.mlkit_common.zziu;
import com.google.android.gms.internal.mlkit_common.zzjd;
import com.google.android.gms.tasks.l;
import com.google.android.gms.tasks.n;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.ModelType;
import java.util.Set;
import java.util.concurrent.Callable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class j implements com.google.mlkit.common.sdkinternal.model.k {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.k f35741a;

    /* renamed from: b  reason: collision with root package name */
    private final kb f35742b;

    public j(com.google.mlkit.common.sdkinternal.k kVar) {
        kb b10 = vb.b("common");
        this.f35741a = kVar;
        this.f35742b = b10;
    }

    private final com.google.mlkit.common.sdkinternal.model.f i(com.google.mlkit.common.model.a aVar) {
        com.google.mlkit.common.sdkinternal.model.g gVar = new com.google.mlkit.common.sdkinternal.model.g(this.f35741a, aVar, null, new com.google.mlkit.common.sdkinternal.model.d(this.f35741a), new d(this.f35741a, aVar.f()));
        com.google.mlkit.common.sdkinternal.k kVar = this.f35741a;
        return com.google.mlkit.common.sdkinternal.model.f.g(kVar, aVar, new com.google.mlkit.common.sdkinternal.model.d(kVar), gVar, (com.google.mlkit.common.sdkinternal.model.e) kVar.a(com.google.mlkit.common.sdkinternal.model.e.class));
    }

    @Override // com.google.mlkit.common.sdkinternal.model.k
    public final /* bridge */ /* synthetic */ com.google.android.gms.tasks.k a(com.google.mlkit.common.model.d dVar, com.google.mlkit.common.model.b bVar) {
        final com.google.mlkit.common.sdkinternal.model.f i4 = i((com.google.mlkit.common.model.a) dVar);
        i4.k(bVar);
        return n.g(null).x(com.google.mlkit.common.sdkinternal.i.g(), new com.google.android.gms.tasks.j() { // from class: com.google.mlkit.common.internal.model.e
            @Override // com.google.android.gms.tasks.j
            public final com.google.android.gms.tasks.k a(Object obj) {
                return com.google.mlkit.common.sdkinternal.model.f.this.a();
            }
        });
    }

    @Override // com.google.mlkit.common.sdkinternal.model.k
    public final com.google.android.gms.tasks.k<Set<com.google.mlkit.common.model.a>> b() {
        return n.f(new MlKitException("Custom Remote model does not support listing downloaded models", 12));
    }

    @Override // com.google.mlkit.common.sdkinternal.model.k
    public final /* bridge */ /* synthetic */ com.google.android.gms.tasks.k c(com.google.mlkit.common.model.d dVar) {
        final com.google.mlkit.common.model.a aVar = (com.google.mlkit.common.model.a) dVar;
        final l lVar = new l();
        com.google.mlkit.common.sdkinternal.i.g().execute(new Runnable() { // from class: com.google.mlkit.common.internal.model.f
            @Override // java.lang.Runnable
            public final void run() {
                j.this.f(aVar, lVar);
            }
        });
        return lVar.a().e(new com.google.android.gms.tasks.e() { // from class: com.google.mlkit.common.internal.model.g
            @Override // com.google.android.gms.tasks.e
            public final void a(com.google.android.gms.tasks.k kVar) {
                j.this.g(kVar);
            }
        });
    }

    @Override // com.google.mlkit.common.sdkinternal.model.k
    public final /* bridge */ /* synthetic */ com.google.android.gms.tasks.k d(com.google.mlkit.common.model.d dVar) {
        final com.google.mlkit.common.model.a aVar = (com.google.mlkit.common.model.a) dVar;
        return com.google.mlkit.common.sdkinternal.i.b().c(new Callable() { // from class: com.google.mlkit.common.internal.model.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.this.e(aVar);
            }
        }).e(new com.google.android.gms.tasks.e() { // from class: com.google.mlkit.common.internal.model.i
            @Override // com.google.android.gms.tasks.e
            public final void a(com.google.android.gms.tasks.k kVar) {
                j.this.h(kVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean e(com.google.mlkit.common.model.a aVar) throws Exception {
        return Boolean.valueOf(i(aVar).h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void f(com.google.mlkit.common.model.a aVar, l lVar) {
        try {
            new com.google.mlkit.common.sdkinternal.model.d(this.f35741a).a(ModelType.CUSTOM, (String) u.k(aVar.c()));
            lVar.c(null);
        } catch (RuntimeException e4) {
            lVar.b(new MlKitException("Internal error has occurred when executing ML Kit tasks", 13, e4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void g(com.google.android.gms.tasks.k kVar) {
        boolean v9 = kVar.v();
        kb kbVar = this.f35742b;
        w7 w7Var = new w7();
        e7 e7Var = new e7();
        e7Var.b(zzjd.CUSTOM);
        e7Var.a(Boolean.valueOf(v9));
        w7Var.e(e7Var.c());
        kbVar.d(nb.f(w7Var), zziu.REMOTE_MODEL_DELETE_ON_DEVICE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h(com.google.android.gms.tasks.k kVar) {
        boolean booleanValue = ((Boolean) kVar.r()).booleanValue();
        kb kbVar = this.f35742b;
        w7 w7Var = new w7();
        o7 o7Var = new o7();
        o7Var.b(zzjd.CUSTOM);
        o7Var.a(Boolean.valueOf(booleanValue));
        w7Var.g(o7Var.c());
        kbVar.d(nb.f(w7Var), zziu.REMOTE_MODEL_IS_DOWNLOADED);
    }
}
