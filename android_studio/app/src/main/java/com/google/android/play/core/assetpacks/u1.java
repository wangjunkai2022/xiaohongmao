package com.google.android.play.core.assetpacks;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class u1 {

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31593k = new com.google.android.play.core.internal.h("ExtractorLooper");

    /* renamed from: a  reason: collision with root package name */
    private final o2 f31594a;

    /* renamed from: b  reason: collision with root package name */
    private final o1 f31595b;

    /* renamed from: c  reason: collision with root package name */
    private final c4 f31596c;

    /* renamed from: d  reason: collision with root package name */
    private final e3 f31597d;

    /* renamed from: e  reason: collision with root package name */
    private final j3 f31598e;

    /* renamed from: f  reason: collision with root package name */
    private final r3 f31599f;

    /* renamed from: g  reason: collision with root package name */
    private final v3 f31600g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31601h;

    /* renamed from: i  reason: collision with root package name */
    private final r2 f31602i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f31603j = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(o2 o2Var, com.google.android.play.core.internal.n1 n1Var, o1 o1Var, c4 c4Var, e3 e3Var, j3 j3Var, r3 r3Var, v3 v3Var, r2 r2Var) {
        this.f31594a = o2Var;
        this.f31601h = n1Var;
        this.f31595b = o1Var;
        this.f31596c = c4Var;
        this.f31597d = e3Var;
        this.f31598e = j3Var;
        this.f31599f = r3Var;
        this.f31600g = v3Var;
        this.f31602i = r2Var;
    }

    private final void b(int i4, Exception exc) {
        try {
            this.f31594a.m(i4, 5);
            this.f31594a.n(i4);
        } catch (t1 unused) {
            f31593k.b("Error during error handling: %s", exc.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        com.google.android.play.core.internal.h hVar = f31593k;
        hVar.a("Run extractor loop", new Object[0]);
        if (!this.f31603j.compareAndSet(false, true)) {
            hVar.e("runLoop already looping; return", new Object[0]);
            return;
        }
        while (true) {
            q2 q2Var = null;
            try {
                q2Var = this.f31602i.a();
            } catch (t1 e4) {
                f31593k.b("Error while getting next extraction task: %s", e4.getMessage());
                if (e4.f31584a >= 0) {
                    ((x4) this.f31601h.zza()).e(e4.f31584a);
                    b(e4.f31584a, e4);
                }
            }
            if (q2Var != null) {
                try {
                    if (q2Var instanceof n1) {
                        this.f31595b.a((n1) q2Var);
                    } else if (q2Var instanceof b4) {
                        this.f31596c.a((b4) q2Var);
                    } else if (q2Var instanceof d3) {
                        this.f31597d.a((d3) q2Var);
                    } else if (q2Var instanceof g3) {
                        this.f31598e.a((g3) q2Var);
                    } else if (q2Var instanceof q3) {
                        this.f31599f.a((q3) q2Var);
                    } else if (q2Var instanceof t3) {
                        this.f31600g.a((t3) q2Var);
                    } else {
                        f31593k.b("Unknown task type: %s", q2Var.getClass().getName());
                    }
                } catch (Exception e10) {
                    f31593k.b("Error during extraction task: %s", e10.getMessage());
                    ((x4) this.f31601h.zza()).e(q2Var.f31537a);
                    b(q2Var.f31537a, e10);
                }
            } else {
                this.f31603j.set(false);
                return;
            }
        }
    }
}
