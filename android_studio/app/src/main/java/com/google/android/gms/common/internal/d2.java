package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class d2 implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e2 f29072a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d2(e2 e2Var, c2 c2Var) {
        this.f29072a = e2Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i4 = message.what;
        if (i4 == 0) {
            hashMap = this.f29072a.f29105f;
            synchronized (hashMap) {
                a2 a2Var = (a2) message.obj;
                hashMap2 = this.f29072a.f29105f;
                b2 b2Var = (b2) hashMap2.get(a2Var);
                if (b2Var != null && b2Var.i()) {
                    if (b2Var.j()) {
                        b2Var.g("GmsClientSupervisor");
                    }
                    hashMap3 = this.f29072a.f29105f;
                    hashMap3.remove(a2Var);
                }
            }
            return true;
        } else if (i4 != 1) {
            return false;
        } else {
            hashMap4 = this.f29072a.f29105f;
            synchronized (hashMap4) {
                a2 a2Var2 = (a2) message.obj;
                hashMap5 = this.f29072a.f29105f;
                b2 b2Var2 = (b2) hashMap5.get(a2Var2);
                if (b2Var2 != null && b2Var2.a() == 3) {
                    String valueOf = String.valueOf(a2Var2);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName b10 = b2Var2.b();
                    if (b10 == null) {
                        b10 = a2Var2.b();
                    }
                    if (b10 == null) {
                        String d4 = a2Var2.d();
                        u.k(d4);
                        b10 = new ComponentName(d4, "unknown");
                    }
                    b2Var2.onServiceDisconnected(b10);
                }
            }
            return true;
        }
    }
}
