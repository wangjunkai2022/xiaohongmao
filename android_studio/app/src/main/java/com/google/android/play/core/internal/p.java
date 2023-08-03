package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class p extends i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ IBinder f31735b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ s f31736c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(s sVar, IBinder iBinder) {
        this.f31736c = sVar;
        this.f31735b = iBinder;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        o oVar;
        List<Runnable> list;
        List list2;
        t tVar = this.f31736c.f31741a;
        oVar = tVar.f31754i;
        tVar.f31759n = (IInterface) oVar.a(this.f31735b);
        t.o(this.f31736c.f31741a);
        this.f31736c.f31741a.f31752g = false;
        list = this.f31736c.f31741a.f31749d;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f31736c.f31741a.f31749d;
        list2.clear();
    }
}
