package com.qennnsad.aknkaksd.presentation.module.main.webview;

import android.webkit.DownloadListener;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* compiled from: WebViewDownloadListener.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B*\u0012!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0004\b\u0012\u0010\u0013J8\u0010\n\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016R2\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\t0\u000b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/u;", "Landroid/webkit/DownloadListener;", "", "url", "userAgent", "contentDisposition", "mimetype", "", "contentLength", "", "onDownloadStart", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "a", "Lkotlin/jvm/functions/Function1;", "()Lkotlin/jvm/functions/Function1;", "openExternalUrl", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class u implements DownloadListener {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function1<String, Unit> f52165a;

    /* JADX WARN: Multi-variable type inference failed */
    public u(@m8.g Function1<? super String, Unit> openExternalUrl) {
        Intrinsics.checkNotNullParameter(openExternalUrl, "openExternalUrl");
        this.f52165a = openExternalUrl;
    }

    @m8.g
    public final Function1<String, Unit> a() {
        return this.f52165a;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(@m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, long j4) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("url=" + str + ", userAgent=" + str2 + ", contentDisposition=" + str3 + ", mimetype=" + str4 + ", contentLength=" + j4, new Object[0]);
        Function1<String, Unit> function1 = this.f52165a;
        if (str == null) {
            return;
        }
        function1.invoke(str);
    }
}
