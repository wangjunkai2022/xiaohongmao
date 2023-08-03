package com.google.android.play.core.tasks;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f32035a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j f32036b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(j jVar, d dVar) {
        this.f32036b = jVar;
        this.f32035a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        b bVar;
        b bVar2;
        obj = this.f32036b.f32038b;
        synchronized (obj) {
            j jVar = this.f32036b;
            bVar = jVar.f32039c;
            if (bVar != null) {
                bVar2 = jVar.f32039c;
                bVar2.a(this.f32035a.g());
            }
        }
    }
}
