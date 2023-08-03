package com.alipay.sdk.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d implements com.alipay.sdk.authjs.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AuthActivity f6821a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(AuthActivity authActivity) {
        this.f6821a = authActivity;
    }

    @Override // com.alipay.sdk.authjs.c
    public final void a(com.alipay.sdk.authjs.a aVar) {
        AuthActivity.b(this.f6821a, aVar);
    }
}
