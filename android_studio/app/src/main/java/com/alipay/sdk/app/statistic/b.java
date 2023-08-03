package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.alipay.sdk.util.j;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f6777a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f6778b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str) {
        this.f6777a = context;
        this.f6778b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.packet.impl.c cVar = new com.alipay.sdk.packet.impl.c();
        try {
            String d4 = j.d(this.f6777a, a.f6776b, null);
            if (!TextUtils.isEmpty(d4) && cVar.b(this.f6777a, d4) != null) {
                PreferenceManager.getDefaultSharedPreferences(this.f6777a).edit().remove(a.f6776b).commit();
            }
        } catch (Throwable unused) {
        }
        try {
            if (TextUtils.isEmpty(this.f6778b)) {
                return;
            }
            cVar.b(this.f6777a, this.f6778b);
        } catch (IOException unused2) {
            j.b(this.f6777a, a.f6776b, this.f6778b);
        } catch (Throwable unused3) {
        }
    }
}
