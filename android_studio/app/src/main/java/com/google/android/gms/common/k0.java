package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class k0 extends l0 {

    /* renamed from: e  reason: collision with root package name */
    private final Callable<String> f29221e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k0(Callable callable, j0 j0Var) {
        super(false, null, null);
        this.f29221e = callable;
    }

    @Override // com.google.android.gms.common.l0
    final String a() {
        try {
            return this.f29221e.call();
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }
}
