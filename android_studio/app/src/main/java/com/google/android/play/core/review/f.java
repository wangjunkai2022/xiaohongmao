package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.o;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class f extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o f31807b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i f31808c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i iVar, o oVar, o oVar2) {
        super(oVar);
        this.f31808c = iVar;
        this.f31807b = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        String str2;
        String str3;
        try {
            str2 = this.f31808c.f31815b;
            Bundle b10 = com.google.android.play.core.common.b.b("review");
            i iVar = this.f31808c;
            o oVar = this.f31807b;
            str3 = iVar.f31815b;
            ((com.google.android.play.core.internal.d) this.f31808c.f31814a.e()).I0(str2, b10, new h(iVar, oVar, str3));
        } catch (RemoteException e4) {
            hVar = i.f31813c;
            str = this.f31808c.f31815b;
            hVar.c(e4, "error requesting in-app review for %s", str);
            this.f31807b.d(new RuntimeException(e4));
        }
    }
}
