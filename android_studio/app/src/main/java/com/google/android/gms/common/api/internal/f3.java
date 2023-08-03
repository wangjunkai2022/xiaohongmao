package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class f3 extends com.google.android.gms.internal.base.q {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h3 f28689a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f3(h3 h3Var, Looper looper) {
        super(looper);
        this.f28689a = h3Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        h3 h3Var;
        int i4 = message.what;
        if (i4 != 0) {
            if (i4 != 1) {
                StringBuilder sb = new StringBuilder(70);
                sb.append("TransformationResultHandler received unknown message type: ");
                sb.append(i4);
                Log.e("TransformedResultImpl", sb.toString());
                return;
            }
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
            throw runtimeException;
        }
        com.google.android.gms.common.api.l<?> lVar = (com.google.android.gms.common.api.l) message.obj;
        obj = this.f28689a.f28713e;
        synchronized (obj) {
            h3Var = this.f28689a.f28710b;
            h3 h3Var2 = (h3) com.google.android.gms.common.internal.u.k(h3Var);
            if (lVar == null) {
                h3Var2.m(new Status(13, "Transform returned null"));
            } else if (lVar instanceof v2) {
                h3Var2.m(((v2) lVar).k());
            } else {
                h3Var2.l(lVar);
            }
        }
    }
}
