package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes2.dex */
public final class r extends com.google.android.gms.internal.base.q {

    /* renamed from: a  reason: collision with root package name */
    private final Context f29259a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e f29260b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(e eVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f29260b = eVar;
        this.f29259a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i4 = message.what;
        if (i4 != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i4);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int j4 = this.f29260b.j(this.f29259a);
        if (this.f29260b.o(j4)) {
            this.f29260b.C(this.f29259a, j4);
        }
    }
}
