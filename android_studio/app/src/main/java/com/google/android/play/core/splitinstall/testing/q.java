package com.google.android.play.core.splitinstall.testing;

import com.google.android.play.core.splitinstall.t0;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class q implements t0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f31987a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f31988b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f31989c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f31990d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ List f31991e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a f31992f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(a aVar, List list, List list2, long j4, boolean z9, List list3) {
        this.f31992f = aVar;
        this.f31987a = list;
        this.f31988b = list2;
        this.f31989c = j4;
        this.f31990d = z9;
        this.f31991e = list3;
    }

    @Override // com.google.android.play.core.splitinstall.t0
    public final void a(int i4) {
        this.f31992f.H(6, i4, null, null, null, null, null);
    }

    @Override // com.google.android.play.core.splitinstall.t0
    public final void e() {
        if (this.f31990d) {
            return;
        }
        this.f31992f.E(this.f31991e, this.f31987a, this.f31988b, this.f31989c, true);
    }

    @Override // com.google.android.play.core.splitinstall.t0
    public final void zza() {
        this.f31992f.G(this.f31987a, this.f31988b, this.f31989c);
    }
}
