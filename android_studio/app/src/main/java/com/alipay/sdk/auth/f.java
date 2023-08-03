package com.alipay.sdk.auth;

/* loaded from: classes.dex */
final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AuthActivity f6824a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(AuthActivity authActivity) {
        this.f6824a = authActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AuthActivity.p(this.f6824a);
    }
}
