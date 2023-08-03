package com.qennnsad.aknkaksd.presentation.module.auth;

import com.qennnsad.aknkaksd.util.t0;
import dagger.internal.r;

/* compiled from: TestConfigDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class m implements d6.g<TestConfigDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<t0> f51208a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f51209b;

    public m(u7.c<t0> cVar, u7.c<g5.a> cVar2) {
        this.f51208a = cVar;
        this.f51209b = cVar2;
    }

    public static d6.g<TestConfigDialog> b(u7.c<t0> cVar, u7.c<g5.a> cVar2) {
        return new m(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.auth.TestConfigDialog.localDataManager")
    public static void c(TestConfigDialog testConfigDialog, g5.a aVar) {
        testConfigDialog.f51003h = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.auth.TestConfigDialog.networkUtility")
    public static void e(TestConfigDialog testConfigDialog, t0 t0Var) {
        testConfigDialog.f51002g = t0Var;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(TestConfigDialog testConfigDialog) {
        e(testConfigDialog, this.f51208a.get());
        c(testConfigDialog, this.f51209b.get());
    }
}
