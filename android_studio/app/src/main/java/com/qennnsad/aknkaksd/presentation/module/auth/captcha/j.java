package com.qennnsad.aknkaksd.presentation.module.auth.captcha;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.AssetManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.module.auth.captcha.j;
import com.qennnsad.aknkaksd.util.o0;
import com.wang.avi.AVLoadingIndicatorView;
import e5.i0;
import io.sentry.clientreport.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: ReCaptchaDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J&\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R$\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;", "Landroidx/fragment/app/DialogFragment;", "Ljava/io/InputStream;", "iS", "", "a0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "onDestroyView", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", "a", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", e.b.f83079a, "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "b", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "captchaListener", "Le5/i0;", "binding", "Le5/i0;", "X", "()Le5/i0;", "Z", "(Le5/i0;)V", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends DialogFragment {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final CaptchaReason f51030a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.auth.captcha.a f51031b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private i0 f51032c;

    /* compiled from: ReCaptchaDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;", "", "", "token", "", "onSuccess", "onLoaded", "onError", "expiredError", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a {
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(j this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            i0 X = this$0.X();
            AVLoadingIndicatorView aVLoadingIndicatorView = X != null ? X.f62528b : null;
            if (aVLoadingIndicatorView == null) {
                return;
            }
            aVLoadingIndicatorView.setVisibility(8);
        }

        @JavascriptInterface
        public final void expiredError() {
            j.this.f51031b.o();
            j.this.dismiss();
            o0.g("reCaptcha", "expiredError");
        }

        @JavascriptInterface
        public final void onError() {
            j.this.f51031b.o();
            j.this.dismiss();
            o0.g("reCaptcha", "onError");
        }

        @JavascriptInterface
        public final void onLoaded() {
            AVLoadingIndicatorView aVLoadingIndicatorView;
            o0.g("reCaptcha", "onLoaded");
            i0 X = j.this.X();
            if (X == null || (aVLoadingIndicatorView = X.f62528b) == null) {
                return;
            }
            final j jVar = j.this;
            aVLoadingIndicatorView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.captcha.i
                @Override // java.lang.Runnable
                public final void run() {
                    j.a.b(j.this);
                }
            });
        }

        @JavascriptInterface
        public final void onSuccess(@m8.g String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            j.this.f51031b.B(token, j.this.f51030a);
            o0.g("reCaptcha", "token: " + token);
            j.this.dismiss();
        }
    }

    public j(@m8.g CaptchaReason reason, @m8.g com.qennnsad.aknkaksd.presentation.module.auth.captcha.a captchaListener) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(captchaListener, "captchaListener");
        this.f51030a = reason;
        this.f51031b = captchaListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(i0 this_apply, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        WebView webView = this_apply.f62529c;
        webView.getSettings().setJavaScriptEnabled(false);
        webView.stopLoading();
        webView.loadUrl("about:blank");
    }

    private final String a0(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                        sb.append('\n');
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    @m8.h
    public final i0 X() {
        return this.f51032c;
    }

    public final void Z(@m8.h i0 i0Var) {
        this.f51032c = i0Var;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        AssetManager assets;
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        final i0 d4 = i0.d(inflater, viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.captcha.h
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    j.Y(i0.this, dialogInterface);
                }
            });
        }
        setStyle(2, R.style.loading_dialog_style);
        WebSettings settings = d4.f62529c.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        d4.f62529c.setBackgroundColor(0);
        d4.f62529c.addJavascriptInterface(new a(), a.class.getSimpleName());
        FragmentActivity activity = getActivity();
        String a02 = a0((activity == null || (assets = activity.getAssets()) == null) ? null : assets.open("recaptcha.html"));
        String replace$default = a02 != null ? StringsKt__StringsJVMKt.replace$default(a02, "%site_key%", "6LeXnSEaAAAAAEk76L9441V8E7bI64jXNxV6SO2U", false, 4, (Object) null) : null;
        if (replace$default != null) {
            d4.f62529c.loadDataWithBaseURL("https://recaptcha.akxdp.com", replace$default, "text/html", "utf-8", null);
        }
        this.f51032c = d4;
        return d4.getRoot();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f51032c = null;
    }
}
