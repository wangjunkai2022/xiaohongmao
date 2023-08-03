package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class i implements c {

    /* renamed from: a  reason: collision with root package name */
    private final l0 f31876a;

    /* renamed from: b  reason: collision with root package name */
    private final k1 f31877b;

    /* renamed from: c  reason: collision with root package name */
    private final f1 f31878c;

    /* renamed from: d  reason: collision with root package name */
    private final n0 f31879d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f31880e = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(l0 l0Var, k1 k1Var, f1 f1Var, n0 n0Var) {
        this.f31876a = l0Var;
        this.f31877b = k1Var;
        this.f31878c = f1Var;
        this.f31879d = n0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List s(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Locale) it.next()).toLanguageTag());
        }
        return arrayList;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final boolean a(f fVar, Activity activity, int i4) throws IntentSender.SendIntentException {
        return f(fVar, new m1(this, activity), i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> b(List<Locale> list) {
        return this.f31876a.e(s(list));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> c(int i4) {
        return this.f31876a.c(i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<List<f>> d() {
        return this.f31876a.i();
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> e(List<Locale> list) {
        return this.f31876a.f(s(list));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final boolean f(f fVar, com.google.android.play.core.common.a aVar, int i4) throws IntentSender.SendIntentException {
        if (fVar.i() != 8 || fVar.g() == null) {
            return false;
        }
        aVar.a(fVar.g().getIntentSender(), i4, null, 0, 0, 0, null);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        if (r1.containsAll(r2) != false) goto L13;
     */
    @Override // com.google.android.play.core.splitinstall.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.play.core.tasks.d<java.lang.Integer> g(com.google.android.play.core.splitinstall.e r5) {
        /*
            r4 = this;
            java.util.List r0 = r5.a()
            boolean r0 = r0.isEmpty()
            java.util.List r0 = r5.a()
            com.google.android.play.core.splitinstall.f1 r1 = r4.f31878c
            java.util.Set r1 = r1.d()
            if (r1 != 0) goto L15
            goto L38
        L15:
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L32
            java.lang.Object r3 = r0.next()
            java.util.Locale r3 = (java.util.Locale) r3
            java.lang.String r3 = r3.getLanguage()
            r2.add(r3)
            goto L1e
        L32:
            boolean r0 = r1.containsAll(r2)
            if (r0 == 0) goto L6d
        L38:
            java.util.List r0 = r5.b()
            com.google.android.play.core.splitinstall.f1 r1 = r4.f31878c
            java.util.Set r1 = r1.c()
            boolean r0 = r1.containsAll(r0)
            if (r0 == 0) goto L6d
            java.util.List r0 = r5.b()
            com.google.android.play.core.splitinstall.n0 r1 = r4.f31879d
            java.util.Set r1 = r1.a()
            boolean r0 = java.util.Collections.disjoint(r0, r1)
            if (r0 != 0) goto L59
            goto L6d
        L59:
            android.os.Handler r0 = r4.f31880e
            com.google.android.play.core.splitinstall.l1 r1 = new com.google.android.play.core.splitinstall.l1
            r1.<init>(r4, r5)
            r0.post(r1)
            r5 = 0
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            com.google.android.play.core.tasks.d r5 = com.google.android.play.core.tasks.f.e(r5)
            return r5
        L6d:
            com.google.android.play.core.splitinstall.n0 r0 = r4.f31879d
            java.util.List r1 = r5.b()
            r0.d(r1)
            com.google.android.play.core.splitinstall.l0 r0 = r4.f31876a
            java.util.List r1 = r5.b()
            java.util.List r5 = r5.a()
            java.util.List r5 = s(r5)
            com.google.android.play.core.tasks.d r5 = r0.j(r1, r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.splitinstall.i.g(com.google.android.play.core.splitinstall.e):com.google.android.play.core.tasks.d");
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> h(List<String> list) {
        this.f31879d.c(list);
        return this.f31876a.g(list);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<f> i(int i4) {
        return this.f31876a.h(i4);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final Set<String> j() {
        return this.f31878c.c();
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final synchronized void k(g gVar) {
        this.f31877b.l(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> l(List<String> list) {
        return this.f31876a.d(list);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final synchronized void m(g gVar) {
        this.f31877b.m(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final synchronized void n(g gVar) {
        this.f31877b.f(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final synchronized void o(g gVar) {
        this.f31877b.d(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final Set<String> p() {
        Set<String> d4 = this.f31878c.d();
        return d4 == null ? Collections.emptySet() : d4;
    }
}
