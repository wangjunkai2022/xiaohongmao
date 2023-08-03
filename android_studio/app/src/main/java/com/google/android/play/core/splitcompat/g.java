package com.google.android.play.core.splitcompat;

import java.io.File;
import java.io.IOException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class g implements l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f31829a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar) {
        this.f31829a = hVar;
    }

    @Override // com.google.android.play.core.splitcompat.l
    public final void a(m mVar, File file, boolean z9) throws IOException {
        this.f31829a.f31831b.add(file);
        if (z9) {
            return;
        }
        this.f31829a.f31832c.set(false);
    }
}
