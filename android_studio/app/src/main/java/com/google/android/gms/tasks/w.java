package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f31159a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x f31160b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(x xVar, k kVar) {
        this.f31160b = xVar;
        this.f31159a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q0 q0Var;
        q0 q0Var2;
        q0 q0Var3;
        c cVar;
        q0 q0Var4;
        q0 q0Var5;
        if (this.f31159a.t()) {
            q0Var5 = this.f31160b.f31163c;
            q0Var5.A();
            return;
        }
        try {
            cVar = this.f31160b.f31162b;
            Object a10 = cVar.a(this.f31159a);
            q0Var4 = this.f31160b.f31163c;
            q0Var4.z(a10);
        } catch (RuntimeExecutionException e4) {
            if (e4.getCause() instanceof Exception) {
                q0Var3 = this.f31160b.f31163c;
                q0Var3.y((Exception) e4.getCause());
                return;
            }
            q0Var2 = this.f31160b.f31163c;
            q0Var2.y(e4);
        } catch (Exception e10) {
            q0Var = this.f31160b.f31163c;
            q0Var.y(e10);
        }
    }
}
