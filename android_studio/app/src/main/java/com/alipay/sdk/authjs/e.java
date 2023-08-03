package com.alipay.sdk.authjs;

import android.widget.Toast;
import com.alipay.sdk.authjs.a;
import java.util.Timer;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f6859a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f6860b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, a aVar) {
        this.f6860b = dVar;
        this.f6859a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f6860b;
        a aVar = this.f6859a;
        if (aVar != null && "toast".equals(aVar.f6846c)) {
            JSONObject jSONObject = aVar.f6848e;
            String optString = jSONObject.optString("content");
            int i4 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(dVar.f6858b, optString, i4).show();
            new Timer().schedule(new f(dVar, aVar), i4);
        }
        int i10 = a.EnumC0038a.f6850a;
    }
}
