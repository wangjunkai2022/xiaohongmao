package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class p1 extends com.google.android.gms.internal.common.r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f29164a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(e eVar, Looper looper) {
        super(looper);
        this.f29164a = eVar;
    }

    private static final void a(Message message) {
        q1 q1Var = (q1) message.obj;
        q1Var.b();
        q1Var.e();
    }

    private static final boolean b(Message message) {
        int i4 = message.what;
        return i4 == 2 || i4 == 1 || i4 == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        e.a aVar;
        e.a aVar2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        boolean z9;
        if (this.f29164a.C.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i4 = message.what;
        if ((i4 != 1 && i4 != 7 && ((i4 != 4 || this.f29164a.z()) && message.what != 5)) || this.f29164a.f()) {
            int i10 = message.what;
            if (i10 == 4) {
                this.f29164a.f29098z = new ConnectionResult(message.arg2);
                if (e.n0(this.f29164a)) {
                    e eVar = this.f29164a;
                    z9 = eVar.A;
                    if (!z9) {
                        eVar.o0(3, null);
                        return;
                    }
                }
                e eVar2 = this.f29164a;
                connectionResult2 = eVar2.f29098z;
                ConnectionResult connectionResult3 = connectionResult2 != null ? eVar2.f29098z : new ConnectionResult(8);
                this.f29164a.f29088p.a(connectionResult3);
                this.f29164a.S(connectionResult3);
                return;
            } else if (i10 == 5) {
                e eVar3 = this.f29164a;
                connectionResult = eVar3.f29098z;
                ConnectionResult connectionResult4 = connectionResult != null ? eVar3.f29098z : new ConnectionResult(8);
                this.f29164a.f29088p.a(connectionResult4);
                this.f29164a.S(connectionResult4);
                return;
            } else if (i10 == 3) {
                Object obj = message.obj;
                ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
                this.f29164a.f29088p.a(connectionResult5);
                this.f29164a.S(connectionResult5);
                return;
            } else if (i10 == 6) {
                this.f29164a.o0(5, null);
                e eVar4 = this.f29164a;
                aVar = eVar4.f29093u;
                if (aVar != null) {
                    aVar2 = eVar4.f29093u;
                    aVar2.x(message.arg2);
                }
                this.f29164a.T(message.arg2);
                e.m0(this.f29164a, 5, 1, null);
                return;
            } else if (i10 == 2 && !this.f29164a.a()) {
                a(message);
                return;
            } else if (b(message)) {
                ((q1) message.obj).c();
                return;
            } else {
                int i11 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i11);
                Log.wtf("GmsClient", sb.toString(), new Exception());
                return;
            }
        }
        a(message);
    }
}
