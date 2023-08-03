package com.alipay.sdk.data;

import android.content.Context;
import com.alipay.sdk.util.j;
import com.alipay.sdk.util.k;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f6874a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f6875b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, Context context) {
        this.f6875b = aVar;
        this.f6874a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            com.alipay.sdk.packet.impl.b bVar = new com.alipay.sdk.packet.impl.b();
            Context context = this.f6874a;
            com.alipay.sdk.packet.b d4 = bVar.d(context, "", k.a(context), true);
            if (d4 != null) {
                this.f6875b.e(d4.f6890b);
                a aVar = this.f6875b;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout", aVar.a());
                jSONObject.put(a.f6870j, aVar.f6873b);
                j.b(p.b.b().f93064a, a.f6867g, jSONObject.toString());
            }
        } catch (Throwable unused) {
        }
    }
}
