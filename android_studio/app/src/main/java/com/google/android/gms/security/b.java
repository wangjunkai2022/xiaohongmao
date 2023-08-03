package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.f;
import com.google.android.gms.security.a;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class b extends AsyncTask<Void, Void, Integer> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f31079a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a.InterfaceC0200a f31080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, a.InterfaceC0200a interfaceC0200a) {
        this.f31079a = context;
        this.f31080b = interfaceC0200a;
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ Integer doInBackground(Void[] voidArr) {
        try {
            a.a(this.f31079a);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e4) {
            return Integer.valueOf(e4.errorCode);
        } catch (GooglePlayServicesRepairableException e10) {
            return Integer.valueOf(e10.getConnectionStatusCode());
        }
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Integer num) {
        f fVar;
        Integer num2 = num;
        if (num2.intValue() == 0) {
            this.f31080b.a();
            return;
        }
        fVar = a.f31075b;
        this.f31080b.b(num2.intValue(), fVar.e(this.f31079a, num2.intValue(), ContextChain.TAG_PRODUCT_AND_INFRA));
    }
}
