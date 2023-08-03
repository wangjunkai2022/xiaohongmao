package com.google.android.play.core.tasks;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f32030a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h f32031b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar, d dVar) {
        this.f32031b = hVar;
        this.f32030a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        a aVar;
        a aVar2;
        obj = this.f32031b.f32033b;
        synchronized (obj) {
            h hVar = this.f32031b;
            aVar = hVar.f32034c;
            if (aVar != null) {
                aVar2 = hVar.f32034c;
                aVar2.a(this.f32030a);
            }
        }
    }
}
