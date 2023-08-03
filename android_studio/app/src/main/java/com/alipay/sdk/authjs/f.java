package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class f extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f6861a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f6862b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, a aVar) {
        this.f6862b = dVar;
        this.f6861a = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("toastCallBack", "true");
        } catch (JSONException unused) {
        }
        a aVar = new a(a.f6838i);
        aVar.f6844a = this.f6861a.f6844a;
        aVar.f6848e = jSONObject;
        this.f6862b.f6857a.a(aVar);
    }
}
