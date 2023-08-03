package com.google.android.gms.common.internal.service;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.internal.a0;
import com.google.android.gms.common.api.internal.v;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.b0;
import com.google.android.gms.common.internal.c0;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class p extends com.google.android.gms.common.api.h<c0> implements b0 {

    /* renamed from: k  reason: collision with root package name */
    private static final a.g<q> f29196k;

    /* renamed from: l  reason: collision with root package name */
    private static final a.AbstractC0193a<q, c0> f29197l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a<c0> f29198m;

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f29199n = 0;

    static {
        a.g<q> gVar = new a.g<>();
        f29196k = gVar;
        o oVar = new o();
        f29197l = oVar;
        f29198m = new com.google.android.gms.common.api.a<>("ClientTelemetry.API", oVar, gVar);
    }

    public p(Context context, c0 c0Var) {
        super(context, f29198m, c0Var, h.a.f28569c);
    }

    @Override // com.google.android.gms.common.internal.b0
    public final com.google.android.gms.tasks.k<Void> a(final TelemetryData telemetryData) {
        a0.a a10 = a0.a();
        a10.e(com.google.android.gms.internal.base.d.f29356a);
        a10.d(false);
        a10.c(new v() { // from class: com.google.android.gms.common.internal.service.n
            @Override // com.google.android.gms.common.api.internal.v
            public final void accept(Object obj, Object obj2) {
                TelemetryData telemetryData2 = TelemetryData.this;
                int i4 = p.f29199n;
                ((j) ((q) obj).K()).J1(telemetryData2);
                ((com.google.android.gms.tasks.l) obj2).c(null);
            }
        });
        return g(a10.a());
    }
}
