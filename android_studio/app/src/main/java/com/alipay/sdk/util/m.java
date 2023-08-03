package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

/* loaded from: classes.dex */
final class m implements DownloadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f6977a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Activity activity) {
        this.f6977a = activity;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j4) {
        try {
            this.f6977a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Throwable unused) {
        }
    }
}
