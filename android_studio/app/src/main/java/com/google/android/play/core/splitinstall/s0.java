package com.google.android.play.core.splitinstall;

import com.google.android.play.core.internal.p1;
import com.google.android.play.core.internal.r1;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class s0 implements c1 {

    /* renamed from: a  reason: collision with root package name */
    private final s0 f31918a = this;

    /* renamed from: b  reason: collision with root package name */
    private final r1 f31919b;

    /* renamed from: c  reason: collision with root package name */
    private final r1 f31920c;

    /* renamed from: d  reason: collision with root package name */
    private final r1 f31921d;

    /* renamed from: e  reason: collision with root package name */
    private final r1 f31922e;

    /* renamed from: f  reason: collision with root package name */
    private final r1 f31923f;

    /* renamed from: g  reason: collision with root package name */
    private final r1 f31924g;

    /* renamed from: h  reason: collision with root package name */
    private final r1 f31925h;

    /* renamed from: i  reason: collision with root package name */
    private final r1 f31926i;

    /* renamed from: j  reason: collision with root package name */
    private final r1 f31927j;

    /* renamed from: k  reason: collision with root package name */
    private final r1 f31928k;

    /* renamed from: l  reason: collision with root package name */
    private final r1 f31929l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s0(k kVar, r0 r0Var) {
        l lVar = new l(kVar);
        this.f31919b = lVar;
        r1 b10 = p1.b(new m0(lVar));
        this.f31920c = b10;
        r1 b11 = p1.b(new o(kVar));
        this.f31921d = b11;
        r1 b12 = p1.b(new g1(lVar));
        this.f31922e = b12;
        r1 b13 = p1.b(new o0(lVar));
        this.f31923f = b13;
        r1 b14 = p1.b(new j(b10, b11, b12, b13));
        this.f31924g = b14;
        r1 b15 = p1.b(new n(lVar));
        this.f31925h = b15;
        m mVar = new m(b15);
        this.f31926i = mVar;
        r1 b16 = p1.b(new com.google.android.play.core.splitinstall.testing.t(lVar, b15, b12, mVar));
        this.f31927j = b16;
        r1 b17 = p1.b(new a1(b14, b16, b15));
        this.f31928k = b17;
        this.f31929l = p1.b(new p(kVar, b17));
    }

    @Override // com.google.android.play.core.splitinstall.c1
    public final c zza() {
        return (c) this.f31929l.zza();
    }

    @Override // com.google.android.play.core.splitinstall.c1
    public final File zzb() {
        return (File) this.f31925h.zza();
    }
}
