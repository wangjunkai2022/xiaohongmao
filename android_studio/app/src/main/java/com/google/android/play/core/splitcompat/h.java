package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class h implements k {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t f31830a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Set f31831b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f31832c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ n f31833d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(n nVar, t tVar, Set set, AtomicBoolean atomicBoolean) {
        this.f31833d = nVar;
        this.f31830a = tVar;
        this.f31831b = set;
        this.f31832c = atomicBoolean;
    }

    @Override // com.google.android.play.core.splitcompat.k
    public final void a(ZipFile zipFile, Set set) throws IOException {
        this.f31833d.f(this.f31830a, set, new g(this));
    }
}
