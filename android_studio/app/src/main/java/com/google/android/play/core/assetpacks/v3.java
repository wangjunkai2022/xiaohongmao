package com.google.android.play.core.assetpacks;

import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class v3 {

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31631a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31632b;

    /* renamed from: c  reason: collision with root package name */
    private final o2 f31633c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31634d;

    /* renamed from: e  reason: collision with root package name */
    private final x1 f31635e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v3(p0 p0Var, com.google.android.play.core.internal.n1 n1Var, o2 o2Var, com.google.android.play.core.internal.n1 n1Var2, x1 x1Var) {
        this.f31631a = p0Var;
        this.f31632b = n1Var;
        this.f31633c = o2Var;
        this.f31634d = n1Var2;
        this.f31635e = x1Var;
    }

    public final void a(final t3 t3Var) {
        File y9 = this.f31631a.y(t3Var.f31538b, t3Var.f31586c, t3Var.f31588e);
        if (y9.exists()) {
            File y10 = this.f31631a.y(t3Var.f31538b, t3Var.f31587d, t3Var.f31588e);
            y10.mkdirs();
            if (y9.renameTo(y10)) {
                ((Executor) this.f31634d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.u3
                    @Override // java.lang.Runnable
                    public final void run() {
                        v3.this.b(t3Var);
                    }
                });
                this.f31633c.k(t3Var.f31538b, t3Var.f31587d, t3Var.f31588e);
                this.f31635e.c(t3Var.f31538b);
                ((x4) this.f31632b.zza()).b(t3Var.f31537a, t3Var.f31538b);
                return;
            }
            throw new t1(String.format("Cannot promote pack %s from %s to %s", t3Var.f31538b, y9.getAbsolutePath(), y10.getAbsolutePath()), t3Var.f31537a);
        }
        throw new t1(String.format("Cannot find pack files to promote for pack %s at %s", t3Var.f31538b, y9.getAbsolutePath()), t3Var.f31537a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(t3 t3Var) {
        this.f31631a.b(t3Var.f31538b, t3Var.f31587d, t3Var.f31588e);
    }
}
