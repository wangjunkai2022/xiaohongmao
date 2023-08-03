package com.google.android.play.core.tasks;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f32040a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ l f32041b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(l lVar, d dVar) {
        this.f32041b = lVar;
        this.f32040a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        c cVar;
        c cVar2;
        obj = this.f32041b.f32043b;
        synchronized (obj) {
            l lVar = this.f32041b;
            cVar = lVar.f32044c;
            if (cVar != null) {
                cVar2 = lVar.f32044c;
                cVar2.onSuccess(this.f32040a.h());
            }
        }
    }
}
