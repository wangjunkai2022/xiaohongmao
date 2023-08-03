package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f6833a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ StringBuilder f6834b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a f6835c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Activity activity, StringBuilder sb, a aVar) {
        this.f6833a = activity;
        this.f6834b = sb;
        this.f6835c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.a aVar;
        com.alipay.sdk.widget.a aVar2;
        com.alipay.sdk.widget.a aVar3;
        com.alipay.sdk.widget.a aVar4;
        com.alipay.sdk.packet.b bVar;
        com.alipay.sdk.widget.a aVar5;
        String str;
        String str2;
        com.alipay.sdk.widget.a aVar6;
        String str3;
        com.alipay.sdk.widget.a aVar7;
        com.alipay.sdk.widget.a aVar8;
        String str4;
        com.alipay.sdk.widget.a aVar9;
        com.alipay.sdk.widget.a aVar10;
        com.alipay.sdk.widget.a aVar11;
        try {
            bVar = null;
            try {
                bVar = new com.alipay.sdk.packet.impl.a().b(this.f6833a, this.f6834b.toString());
            } catch (Throwable unused) {
            }
            aVar5 = j.f6831c;
            if (aVar5 != null) {
                aVar11 = j.f6831c;
                aVar11.f();
                com.alipay.sdk.widget.a unused2 = j.f6831c = null;
            }
        } catch (Exception unused3) {
            aVar3 = j.f6831c;
            if (aVar3 == null) {
                return;
            }
        } catch (Throwable th) {
            aVar = j.f6831c;
            if (aVar != null) {
                aVar2 = j.f6831c;
                aVar2.f();
            }
            throw th;
        }
        if (bVar == null) {
            String unused4 = j.f6832d = this.f6835c.d() + "?resultCode=202";
            Activity activity = this.f6833a;
            str4 = j.f6832d;
            j.d(activity, str4);
            aVar9 = j.f6831c;
            if (aVar9 != null) {
                aVar10 = j.f6831c;
                aVar10.f();
                return;
            }
            return;
        }
        List<o.a> b10 = o.a.b(bVar.a().optJSONObject(m.c.f86929c).optJSONObject(m.c.f86930d));
        int i4 = 0;
        while (true) {
            if (i4 >= b10.size()) {
                break;
            } else if (b10.get(i4).f89937a == com.alipay.sdk.protocol.a.WapPay) {
                String unused5 = j.f6832d = b10.get(i4).f89939c[0];
                break;
            } else {
                i4++;
            }
        }
        str = j.f6832d;
        if (TextUtils.isEmpty(str)) {
            String unused6 = j.f6832d = this.f6835c.d() + "?resultCode=202";
            Activity activity2 = this.f6833a;
            str3 = j.f6832d;
            j.d(activity2, str3);
            aVar7 = j.f6831c;
            if (aVar7 != null) {
                aVar8 = j.f6831c;
                aVar8.f();
                return;
            }
            return;
        }
        Intent intent = new Intent(this.f6833a, AuthActivity.class);
        str2 = j.f6832d;
        intent.putExtra("params", str2);
        intent.putExtra("redirectUri", this.f6835c.d());
        this.f6833a.startActivity(intent);
        aVar6 = j.f6831c;
        if (aVar6 == null) {
            return;
        }
        aVar4 = j.f6831c;
        aVar4.f();
    }
}
