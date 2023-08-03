package com.qennnsad.aknkaksd.presentation.module.main.webview;

import android.net.Uri;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.i18n.MessageBundle;
import timber.log.Timber;

/* compiled from: WebViewChromeClient.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001BÕ\u0001\u0012!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u001e\u0012:\u0010*\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\t\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00060&\u0012%\b\u0002\u0010,\u001a\u001f\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001e\u0012F\u0010.\u001aB\u0012!\u0012\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u0014¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00060&¢\u0006\u0004\b/\u00100J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\r\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J:\u0010\u0010\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u000fH\u0016J0\u0010\u0011\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J0\u0010\u0012\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J2\u0010\u001a\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0014\u0010\u0017\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u001d\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0016R2\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u001e8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$RK\u0010*\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\t\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00060&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b!\u0010)R4\u0010,\u001a\u001f\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001e8\u0006¢\u0006\f\n\u0004\b#\u0010\"\u001a\u0004\b'\u0010$RW\u0010.\u001aB\u0012!\u0012\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u0014¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00060&8\u0006¢\u0006\f\n\u0004\b-\u0010(\u001a\u0004\b-\u0010)¨\u00061"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/t;", "Landroid/webkit/WebChromeClient;", "Landroid/webkit/WebView;", "view", "", MessageBundle.TITLE_ENTRY, "", "onReceivedTitle", "url", "message", "Landroid/webkit/JsResult;", "result", "", "onJsAlert", "defaultValue", "Landroid/webkit/JsPromptResult;", "onJsPrompt", "onJsBeforeUnload", "onJsConfirm", "webView", "Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "filePathCallback", "Landroid/webkit/WebChromeClient$FileChooserParams;", "fileChooserParams", "onShowFileChooser", "", "newProgress", "onProgressChanged", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "a", "Lkotlin/jvm/functions/Function1;", "c", "()Lkotlin/jvm/functions/Function1;", "receivedTitle", "Lkotlin/Function2;", "b", "Lkotlin/jvm/functions/Function2;", "()Lkotlin/jvm/functions/Function2;", "jsDialog", "progress", "progressChanged", "d", "showFileChooser", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t extends WebChromeClient {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function1<String, Unit> f52161a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function2<String, JsResult, Unit> f52162b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final Function1<Integer, Unit> f52163c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Function2<ValueCallback<Uri[]>, WebChromeClient.FileChooserParams, Unit> f52164d;

    public /* synthetic */ t(Function1 function1, Function2 function2, Function1 function12, Function2 function22, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, function2, (i4 & 4) != 0 ? null : function12, function22);
    }

    @m8.g
    public final Function2<String, JsResult, Unit> a() {
        return this.f52162b;
    }

    @m8.h
    public final Function1<Integer, Unit> b() {
        return this.f52163c;
    }

    @m8.g
    public final Function1<String, Unit> c() {
        return this.f52161a;
    }

    @m8.g
    public final Function2<ValueCallback<Uri[]>, WebChromeClient.FileChooserParams, Unit> d() {
        return this.f52164d;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(@m8.h WebView webView, @m8.h String str, @m8.h String str2, @m8.h JsResult jsResult) {
        this.f52162b.invoke(str2, jsResult);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(@m8.h WebView webView, @m8.h String str, @m8.h String str2, @m8.h JsResult jsResult) {
        this.f52162b.invoke(str2, jsResult);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(@m8.h WebView webView, @m8.h String str, @m8.h String str2, @m8.h JsResult jsResult) {
        this.f52162b.invoke(str2, jsResult);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(@m8.h WebView webView, @m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h JsPromptResult jsPromptResult) {
        this.f52162b.invoke(str2, jsPromptResult);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(@m8.h WebView webView, int i4) {
        Function1<Integer, Unit> function1 = this.f52163c;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(i4));
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(@m8.h WebView webView, @m8.h String str) {
        super.onReceivedTitle(webView, str);
        Timber.b bVar = Timber.f93860a;
        bVar.k("title:" + str, new Object[0]);
        if (str == null) {
            return;
        }
        this.f52161a.invoke(str);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(@m8.h WebView webView, @m8.h ValueCallback<Uri[]> valueCallback, @m8.h WebChromeClient.FileChooserParams fileChooserParams) {
        this.f52164d.invoke(valueCallback, fileChooserParams);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t(@m8.g Function1<? super String, Unit> receivedTitle, @m8.g Function2<? super String, ? super JsResult, Unit> jsDialog, @m8.h Function1<? super Integer, Unit> function1, @m8.g Function2<? super ValueCallback<Uri[]>, ? super WebChromeClient.FileChooserParams, Unit> showFileChooser) {
        Intrinsics.checkNotNullParameter(receivedTitle, "receivedTitle");
        Intrinsics.checkNotNullParameter(jsDialog, "jsDialog");
        Intrinsics.checkNotNullParameter(showFileChooser, "showFileChooser");
        this.f52161a = receivedTitle;
        this.f52162b = jsDialog;
        this.f52163c = function1;
        this.f52164d = showFileChooser;
    }
}
