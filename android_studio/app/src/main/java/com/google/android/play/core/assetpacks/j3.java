package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class j3 {

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31356a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31357b;

    /* renamed from: c  reason: collision with root package name */
    private final o2 f31358c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31359d;

    /* renamed from: e  reason: collision with root package name */
    private final x1 f31360e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.core.common.c f31361f;

    /* renamed from: g  reason: collision with root package name */
    private final m3 f31362g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j3(p0 p0Var, com.google.android.play.core.internal.n1 n1Var, o2 o2Var, com.google.android.play.core.internal.n1 n1Var2, x1 x1Var, com.google.android.play.core.common.c cVar, m3 m3Var) {
        this.f31356a = p0Var;
        this.f31357b = n1Var;
        this.f31358c = o2Var;
        this.f31359d = n1Var2;
        this.f31360e = x1Var;
        this.f31361f = cVar;
        this.f31362g = m3Var;
    }

    public final void a(final g3 g3Var) {
        File A = this.f31356a.A(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d);
        File C = this.f31356a.C(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d);
        if (A.exists() && C.exists()) {
            File y9 = this.f31356a.y(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d);
            y9.mkdirs();
            if (A.renameTo(y9)) {
                new File(this.f31356a.y(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d), "merge.tmp").delete();
                File z9 = this.f31356a.z(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d);
                z9.mkdirs();
                if (C.renameTo(z9)) {
                    if (this.f31361f.a("assetOnlyUpdates")) {
                        try {
                            this.f31362g.b(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d, g3Var.f31315e);
                            ((Executor) this.f31359d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.i3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    j3.this.b(g3Var);
                                }
                            });
                        } catch (IOException e4) {
                            throw new t1(String.format("Could not write asset pack version tag for pack %s: %s", g3Var.f31538b, e4.getMessage()), g3Var.f31537a);
                        }
                    } else {
                        final p0 p0Var = this.f31356a;
                        p0Var.getClass();
                        ((Executor) this.f31359d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.h3
                            @Override // java.lang.Runnable
                            public final void run() {
                                p0.this.N();
                            }
                        });
                    }
                    this.f31358c.k(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d);
                    this.f31360e.c(g3Var.f31538b);
                    ((x4) this.f31357b.zza()).b(g3Var.f31537a, g3Var.f31538b);
                    return;
                }
                throw new t1("Cannot move metadata files to final location.", g3Var.f31537a);
            }
            throw new t1("Cannot move merged pack files to final location.", g3Var.f31537a);
        }
        throw new t1(String.format("Cannot find pack files to move for pack %s.", g3Var.f31538b), g3Var.f31537a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(g3 g3Var) {
        this.f31356a.b(g3Var.f31538b, g3Var.f31313c, g3Var.f31314d);
    }
}
