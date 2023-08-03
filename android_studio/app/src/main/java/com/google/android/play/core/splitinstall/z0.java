package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;
import com.google.android.play.core.internal.n1;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class z0 implements c {

    /* renamed from: a  reason: collision with root package name */
    private final n1 f32021a;

    /* renamed from: b  reason: collision with root package name */
    private final n1 f32022b;

    /* renamed from: c  reason: collision with root package name */
    private final n1 f32023c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0(n1 n1Var, n1 n1Var2, n1 n1Var3) {
        this.f32021a = n1Var;
        this.f32022b = n1Var2;
        this.f32023c = n1Var3;
    }

    private final c q() {
        if (this.f32023c.zza() == null) {
            return (c) this.f32021a.zza();
        }
        return (c) this.f32022b.zza();
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final boolean a(@NonNull f fVar, @NonNull Activity activity, int i4) throws IntentSender.SendIntentException {
        return q().a(fVar, activity, i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<Void> b(List<Locale> list) {
        return q().b(list);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<Void> c(int i4) {
        return q().c(i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<List<f>> d() {
        return q().d();
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<Void> e(List<Locale> list) {
        return q().e(list);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final boolean f(@NonNull f fVar, @NonNull com.google.android.play.core.common.a aVar, int i4) throws IntentSender.SendIntentException {
        return q().f(fVar, aVar, i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Integer> g(@NonNull e eVar) {
        return q().g(eVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<Void> h(List<String> list) {
        return q().h(list);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<f> i(int i4) {
        return q().i(i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final Set<String> j() {
        return q().j();
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void k(@NonNull g gVar) {
        q().k(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final com.google.android.play.core.tasks.d<Void> l(List<String> list) {
        return q().l(list);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void m(@NonNull g gVar) {
        q().m(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void n(@NonNull g gVar) {
        q().n(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void o(@NonNull g gVar) {
        q().o(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @NonNull
    public final Set<String> p() {
        return q().p();
    }
}
