package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class i implements k {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f31834a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f31835b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n f31836c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(n nVar, Set set, t tVar) {
        this.f31836c = nVar;
        this.f31834a = set;
        this.f31835b = tVar;
    }

    @Override // com.google.android.play.core.splitcompat.k
    public final void a(ZipFile zipFile, Set set) throws IOException {
        this.f31834a.addAll(n.a(this.f31836c, set, this.f31835b, zipFile));
    }
}
