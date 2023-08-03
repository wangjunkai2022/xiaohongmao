package com.google.android.play.core.appupdate;

import com.google.android.play.core.internal.p1;
import com.google.android.play.core.internal.r1;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final f f31190a = this;

    /* renamed from: b  reason: collision with root package name */
    private final r1 f31191b;

    /* renamed from: c  reason: collision with root package name */
    private final r1 f31192c;

    /* renamed from: d  reason: collision with root package name */
    private final r1 f31193d;

    /* renamed from: e  reason: collision with root package name */
    private final r1 f31194e;

    /* renamed from: f  reason: collision with root package name */
    private final r1 f31195f;

    /* renamed from: g  reason: collision with root package name */
    private final r1 f31196g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f(l lVar, d0 d0Var) {
        n nVar = new n(lVar);
        this.f31191b = nVar;
        r1 b10 = p1.b(new x(nVar));
        this.f31192c = b10;
        r1 b11 = p1.b(new v(nVar, b10));
        this.f31193d = b11;
        r1 b12 = p1.b(new h(nVar));
        this.f31194e = b12;
        r1 b13 = p1.b(new k(b11, b12, nVar));
        this.f31195f = b13;
        this.f31196g = p1.b(new m(b13));
    }

    public final b a() {
        return (b) this.f31196g.zza();
    }
}
