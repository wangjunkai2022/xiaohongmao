package com.qennnsad.aknkaksd.presentation.ui.main.mall;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alipay.sdk.app.PayTask;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.module.main.webview.t;
import com.qennnsad.aknkaksd.presentation.module.main.webview.u;
import com.qennnsad.aknkaksd.presentation.module.main.webview.v;
import com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.mall.b;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.k0;
import com.qennnsad.aknkaksd.util.s1;
import com.qennnsad.aknkaksd.util.t0;
import e5.l1;
import io.sentry.e3;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import timber.log.Timber;

/* compiled from: MallFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001GB\u0007¢\u0006\u0004\bE\u0010FJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0003H\u0014R\u001b\u0010 \u001a\u00020\u001b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010.\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0*\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\u001d\u001a\u0004\b1\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\"\u0010=\u001a\u0010\u0012\f\u0012\n :*\u0004\u0018\u00010909088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006H"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/l1;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/b;", "", "P0", "N0", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/t;", "I0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "S0", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onResume", "", "hidden", "onHiddenChanged", "onDestroy", "e", "R0", "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;", "k", "Lkotlin/Lazy;", "L0", "()Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/t0;", "m", "Lcom/qennnsad/aknkaksd/util/t0;", "K0", "()Lcom/qennnsad/aknkaksd/util/t0;", "T0", "(Lcom/qennnsad/aknkaksd/util/t0;)V", "networkUtility", "Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "n", "Landroid/webkit/ValueCallback;", "uploadMessage", "", "o", "J0", "()Ljava/lang/String;", "mallUrl", "", "p", "J", "loadtime", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "q", "Landroidx/activity/result/ActivityResultLauncher;", "fileChooser", "Lc5/g;", "webViewAuthInterceptor", "Lc5/g;", "M0", "()Lc5/g;", "U0", "(Lc5/g;)V", "<init>", "()V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class MallFragment extends com.qennnsad.aknkaksd.presentation.ui.main.mall.a<l1, com.qennnsad.aknkaksd.presentation.ui.main.mall.b> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52806k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public c5.g f52807l;
    @u7.a

    /* renamed from: m  reason: collision with root package name */
    public t0 f52808m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private ValueCallback<Uri[]> f52809n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final Lazy f52810o;

    /* renamed from: p  reason: collision with root package name */
    private long f52811p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f52812q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<String, Unit> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            int length = it.length();
            byte[] bytes = it.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            boolean z9 = length == bytes.length;
            l1 A0 = MallFragment.A0(MallFragment.this);
            TextView textView = A0 != null ? A0.f62697i : null;
            if (textView == null) {
                return;
            }
            it = (!(it.length() > 0) || z9) ? "充值" : "充值";
            textView.setText(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "message", "Landroid/webkit/JsResult;", "result", "", "a", "(Ljava/lang/String;Landroid/webkit/JsResult;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function2<String, JsResult, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MallFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Boolean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f52823a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(JsResult jsResult) {
                super(1);
                this.f52823a = jsResult;
            }

            public final void a(boolean z9) {
                if (z9) {
                    JsResult jsResult = this.f52823a;
                    if (jsResult != null) {
                        jsResult.confirm();
                        return;
                    }
                    return;
                }
                JsResult jsResult2 = this.f52823a;
                if (jsResult2 != null) {
                    jsResult2.cancel();
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                a(bool.booleanValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MallFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f52824a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(JsResult jsResult) {
                super(0);
                this.f52824a = jsResult;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                JsResult jsResult = this.f52824a;
                if (jsResult != null) {
                    jsResult.cancel();
                }
            }
        }

        c() {
            super(2);
        }

        public final void a(@m8.h String str, @m8.h JsResult jsResult) {
            FragmentActivity requireActivity = MallFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.P(requireActivity, "温馨提示", str, null, null, new a(jsResult), new b(jsResult), 12, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, JsResult jsResult) {
            a(str, jsResult);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0003\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0018\u00010\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "filePathCallback", "Landroid/webkit/WebChromeClient$FileChooserParams;", "fileChooserParams", "", "a", "(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<ValueCallback<Uri[]>, WebChromeClient.FileChooserParams, Unit> {
        d() {
            super(2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
            if ((r2.length() > 0) == true) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void a(@m8.h android.webkit.ValueCallback<android.net.Uri[]> r4, @m8.h android.webkit.WebChromeClient.FileChooserParams r5) {
            /*
                r3 = this;
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r0 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.this
                android.webkit.ValueCallback r0 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.D0(r0)
                if (r0 == 0) goto Lc
                r1 = 0
                r0.onReceiveValue(r1)
            Lc:
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r0 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.this
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.G0(r0, r4)
                android.content.Intent r4 = new android.content.Intent
                java.lang.String r0 = "android.intent.action.GET_CONTENT"
                r4.<init>(r0)
                java.lang.String r0 = "android.intent.category.OPENABLE"
                r4.addCategory(r0)
                r0 = 1
                r1 = 0
                if (r5 == 0) goto L3b
                java.lang.String[] r2 = r5.getAcceptTypes()
                if (r2 == 0) goto L3b
                java.lang.Object r2 = kotlin.collections.ArraysKt.firstOrNull(r2)
                java.lang.String r2 = (java.lang.String) r2
                if (r2 == 0) goto L3b
                int r2 = r2.length()
                if (r2 <= 0) goto L37
                r2 = 1
                goto L38
            L37:
                r2 = 0
            L38:
                if (r2 != r0) goto L3b
                goto L3c
            L3b:
                r0 = 0
            L3c:
                if (r0 == 0) goto L4e
                java.lang.String[] r5 = r5.getAcceptTypes()
                java.lang.String r0 = "fileChooserParams.acceptTypes"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
                java.lang.Object r5 = kotlin.collections.ArraysKt.first(r5)
                java.lang.String r5 = (java.lang.String) r5
                goto L50
            L4e:
            */
            //  java.lang.String r5 = "*/*"
            /*
            L50:
                r4.setType(r5)
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r5 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.this
                androidx.activity.result.ActivityResultLauncher r5 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.B0(r5)
                java.lang.String r0 = "File Chooser"
                android.content.Intent r4 = android.content.Intent.createChooser(r4, r0)
                r5.launch(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.d.a(android.webkit.ValueCallback, android.webkit.WebChromeClient$FileChooserParams):void");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            a(valueCallback, fileChooserParams);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1 f52826a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MallFragment f52827b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(l1 l1Var, MallFragment mallFragment) {
            super(0);
            this.f52826a = l1Var;
            this.f52827b = mallFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f52826a.f62698j.loadUrl(this.f52827b.J0());
            this.f52827b.e0().d().postValue(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<String, Unit> {
        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Context requireContext = MallFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            h1.e(requireContext, it, null, "复制成功: " + it, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function1<Boolean, Unit> {
        g() {
            super(1);
        }

        public final void a(boolean z9) {
            if (z9) {
                return;
            }
            MallFragment.this.N0();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function1<String, Unit> {
        h() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(MallFragment this$0, String it) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it, "$it");
            new PayTask(this$0.requireActivity()).pay(it, true);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g final String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Context requireContext = MallFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            if (com.qennnsad.aknkaksd.util.l.r(requireContext)) {
                final MallFragment mallFragment = MallFragment.this;
                new Thread(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.mall.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        MallFragment.h.b(MallFragment.this, it);
                    }
                }).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function1<Integer, Unit> {
        i() {
            super(1);
        }

        public final void a(int i4) {
            MallFragment.this.e0().v(i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function1<String, Unit> {
        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity requireActivity = MallFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.A(requireActivity, it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function1<String, Unit> {
        k() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity requireActivity = MallFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.A(requireActivity, it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class l extends Lambda implements Function0<Unit> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            MallFragment.this.N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class m extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1 f52835a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MallFragment f52836b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(l1 l1Var, MallFragment mallFragment) {
            super(0);
            this.f52835a = l1Var;
            this.f52836b = mallFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f52835a.f62698j.loadUrl(this.f52836b.J0());
        }
    }

    /* compiled from: MallFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class n extends Lambda implements Function0<String> {
        n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            StringBuilder sb = new StringBuilder();
            sb.append(com.qennnsad.aknkaksd.util.m.f54845o);
            UserBean C = MallFragment.this.b0().C();
            sb.append(C != null ? C.getId() : null);
            sb.append("&ver=1.13.0&lob=");
            UserBean C2 = MallFragment.this.b0().C();
            sb.append(C2 != null ? Integer.valueOf(C2.getLob_no()) : null);
            return sb.toString();
        }
    }

    public MallFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new MallFragment$special$$inlined$viewModels$default$2(new MallFragment$special$$inlined$viewModels$default$1(this)));
        this.f52806k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MallViewModel.class), new MallFragment$special$$inlined$viewModels$default$3(lazy), new MallFragment$special$$inlined$viewModels$default$4(null, lazy), new MallFragment$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new n());
        this.f52810o = lazy2;
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.mall.d
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MallFragment.H0(MallFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ploadMessage = null\n    }");
        this.f52812q = registerForActivityResult;
    }

    public static final /* synthetic */ l1 A0(MallFragment mallFragment) {
        return (l1) mallFragment.a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(MallFragment this$0, ActivityResult result) {
        Intent data;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        if (this$0.f52809n == null) {
            return;
        }
        String n9 = k0.n(this$0.requireActivity(), (result.getResultCode() != -1 || (data = result.getData()) == null) ? null : data.getData());
        if (n9 == null || n9.length() == 0) {
            ValueCallback<Uri[]> valueCallback = this$0.f52809n;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            this$0.f52809n = null;
            return;
        }
        Uri uri = b6.a.a(this$0.getActivity(), new File(n9));
        ValueCallback<Uri[]> valueCallback2 = this$0.f52809n;
        if (valueCallback2 != null) {
            Intrinsics.checkNotNullExpressionValue(uri, "uri");
            valueCallback2.onReceiveValue(new Uri[]{uri});
        }
        this$0.f52809n = null;
    }

    private final t I0() {
        return new t(new b(), new c(), null, new d(), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String J0() {
        return (String) this.f52810o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N0() {
        final WebView webView = ((l1) m0()).f62698j;
        webView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.mall.e
            @Override // java.lang.Runnable
            public final void run() {
                MallFragment.O0(webView, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(WebView this_with, MallFragment this$0) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_with.canGoBack()) {
            this_with.goBack();
            ImageButton imageButton = ((l1) this$0.m0()).f62692d;
            Intrinsics.checkNotNullExpressionValue(imageButton, "requireBinding().imgbtnToolbarBack");
            imageButton.setVisibility(this_with.canGoBack() ? 0 : 8);
        }
    }

    private final void P0() {
        l1 l1Var = (l1) m0();
        ImageButton toolbarRefresh = l1Var.f62696h;
        Intrinsics.checkNotNullExpressionValue(toolbarRefresh, "toolbarRefresh");
        s1.U(toolbarRefresh, 0L, new e(l1Var, this), 1, null);
        WebView webView = l1Var.f62698j;
        Intrinsics.checkNotNullExpressionValue(webView, "");
        s1.t(webView);
        UserBean C = b0().C();
        if (C != null) {
            webView.addJavascriptInterface(new v(C, new f(), new g(), new h(), new i(), new j(), null, null, 192, null), "myapp");
            webView.setWebChromeClient(I0());
            webView.setWebViewClient(new a(this, webView));
            webView.setDownloadListener(new u(new k()));
            webView.setOnKeyListener(new View.OnKeyListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.mall.c
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                    boolean Q0;
                    Q0 = MallFragment.Q0(MallFragment.this, view, i4, keyEvent);
                    return Q0;
                }
            });
            webView.loadUrl(J0());
            e0().d().postValue(Boolean.TRUE);
        }
        Group error = l1Var.f62690b;
        Intrinsics.checkNotNullExpressionValue(error, "error");
        error.setVisibility(8);
        ImageButton imgbtnToolbarBack = l1Var.f62692d;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        imgbtnToolbarBack.setVisibility(8);
        ImageButton imgbtnToolbarBack2 = l1Var.f62692d;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack2, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack2, 0L, new l(), 1, null);
        Button reloadBtn = l1Var.f62693e;
        Intrinsics.checkNotNullExpressionValue(reloadBtn, "reloadBtn");
        s1.U(reloadBtn, 0L, new m(l1Var, this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Q0(MallFragment this$0, View view, int i4, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i4 == 4) {
            if (keyEvent.getAction() == 0) {
                this$0.N0();
                return true;
            }
            return true;
        }
        return false;
    }

    @m8.g
    public final t0 K0() {
        t0 t0Var = this.f52808m;
        if (t0Var != null) {
            return t0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkUtility");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: L0 */
    public MallViewModel e0() {
        return (MallViewModel) this.f52806k.getValue();
    }

    @m8.g
    public final c5.g M0() {
        c5.g gVar = this.f52807l;
        if (gVar != null) {
            return gVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webViewAuthInterceptor");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: R0 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.ui.main.mall.b e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (e4 instanceof b.a) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.presentation.ui.chat.im.a.f(requireActivity, ((b.a) e4).d(), null, null, null, null, 30, null);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: S0 */
    public l1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        l1 d4 = l1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void T0(@m8.g t0 t0Var) {
        Intrinsics.checkNotNullParameter(t0Var, "<set-?>");
        this.f52808m = t0Var;
    }

    public final void U0(@m8.g c5.g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<set-?>");
        this.f52807l = gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View onCreateView(@m8.g android.view.LayoutInflater r5, @m8.h android.view.ViewGroup r6, @m8.h android.os.Bundle r7) {
        /*
            r4 = this;
            java.lang.String r0 = "inflater"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            android.view.View r5 = super.onCreateView(r5, r6, r7)     // Catch: java.lang.Exception -> La
            return r5
        La:
            r5 = move-exception
            java.lang.String r6 = r5.getMessage()
            r7 = 1
            r0 = 0
            if (r6 == 0) goto L1f
            r1 = 2
            r2 = 0
            java.lang.String r3 = "webview"
            boolean r6 = kotlin.text.StringsKt.contains$default(r6, r3, r0, r1, r2)
            if (r6 != r7) goto L1f
            r6 = 1
            goto L20
        L1f:
            r6 = 0
        L20:
            if (r6 == 0) goto L3e
            timber.log.Timber$b r6 = timber.log.Timber.f93860a
            java.lang.Object[] r7 = new java.lang.Object[r7]
            r7[r0] = r5
            java.lang.String r5 = "Error inflating fragment web view"
            r6.d(r5, r7)
            androidx.navigation.NavController r5 = androidx.navigation.fragment.FragmentKt.findNavController(r4)
            r5.navigateUp()
            android.view.View r5 = new android.view.View
            android.content.Context r6 = r4.requireContext()
            r5.<init>(r6)
            return r5
        L3e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        WebView webView;
        WebView webView2;
        super.onDestroy();
        l1 l1Var = (l1) a0();
        if (l1Var != null && (webView2 = l1Var.f62698j) != null) {
            webView2.stopLoading();
        }
        l1 l1Var2 = (l1) a0();
        if (l1Var2 == null || (webView = l1Var2.f62698j) == null) {
            return;
        }
        webView.destroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z9) {
        super.onHiddenChanged(z9);
        Timber.b bVar = Timber.f93860a;
        bVar.k("onHiddenChanged(): " + z9, new Object[0]);
        if (!z9 && Intrinsics.areEqual(((l1) m0()).f62698j.getUrl(), J0()) && System.currentTimeMillis() - this.f52811p > 600000) {
            ((l1) m0()).f62698j.reload();
        }
        if (z9) {
            e0().d().postValue(Boolean.FALSE);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ((l1) m0()).f62698j.reload();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        P0();
        this.f52811p = System.currentTimeMillis();
    }

    /* compiled from: MallFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ&\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J.\u0010\u000f\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0016J\"\u0010\u000f\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0017J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0014\u001a\u00020\fH\u0016J\u001c\u0010\u0016\u001a\u00020\u00152\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010H\u0017J&\u0010\u001a\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001c\u0010\u001b\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;", "Landroid/webkit/WebView;", "view", "Landroid/webkit/SslErrorHandler;", "handler", "Landroid/net/http/SslError;", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "", "onReceivedSslError", "", "errorCode", "", "description", "failingUrl", "onReceivedError", "Landroid/webkit/WebResourceRequest;", "req", "Landroid/webkit/WebResourceError;", "rerr", "url", "", "shouldOverrideUrlLoading", e3.b.f83149d, "Landroid/graphics/Bitmap;", "favicon", "onPageStarted", "onPageFinished", "webView", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;Landroid/webkit/WebView;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends com.qennnsad.aknkaksd.presentation.module.main.webview.e {

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ MallFragment f52820m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g MallFragment mallFragment, WebView webView) {
            super(mallFragment.b0(), mallFragment.M0(), mallFragment.K0(), webView);
            Intrinsics.checkNotNullParameter(webView, "webView");
            this.f52820m = mallFragment;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
            if (r2 != false) goto L20;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0052  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onPageFinished(@m8.h android.webkit.WebView r7, @m8.h java.lang.String r8) {
            /*
                r6 = this;
                timber.log.Timber$b r0 = timber.log.Timber.f93860a
                r1 = 0
                java.lang.Object[] r2 = new java.lang.Object[r1]
                java.lang.String r3 = "onPageFinished"
                r0.k(r3, r2)
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r0 = r6.f52820m
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel r0 = r0.e0()
                androidx.lifecycle.MutableLiveData r0 = r0.d()
                java.lang.Boolean r2 = java.lang.Boolean.FALSE
                r0.postValue(r2)
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r0 = r6.f52820m
                e5.l1 r0 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.A0(r0)
                r2 = 0
                if (r0 == 0) goto L25
                android.widget.ImageButton r0 = r0.f62692d
                goto L26
            L25:
                r0 = r2
            L26:
                if (r0 != 0) goto L29
                goto L57
            L29:
                r3 = 2
                r4 = 1
                if (r8 == 0) goto L37
                java.lang.String r5 = "app/payList?"
                boolean r5 = kotlin.text.StringsKt.contains$default(r8, r5, r1, r3, r2)
                if (r5 != r4) goto L37
                r5 = 1
                goto L38
            L37:
                r5 = 0
            L38:
                if (r5 != 0) goto L4e
                if (r8 == 0) goto L4a
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r5 = r6.f52820m
                java.lang.String r5 = com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.C0(r5)
                boolean r2 = kotlin.text.StringsKt.contains$default(r8, r5, r1, r3, r2)
                if (r2 != r4) goto L4a
                r2 = 1
                goto L4b
            L4a:
                r2 = 0
            L4b:
                if (r2 != 0) goto L4e
                goto L4f
            L4e:
                r4 = 0
            L4f:
                if (r4 == 0) goto L52
                goto L54
            L52:
                r1 = 8
            L54:
                r0.setVisibility(r1)
            L57:
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment r0 = r6.f52820m
                long r1 = java.lang.System.currentTimeMillis()
                com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.F0(r0, r1)
                super.onPageFinished(r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.a.onPageFinished(android.webkit.WebView, java.lang.String):void");
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@m8.h WebView webView, @m8.h String str, @m8.h Bitmap bitmap) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("onPageStarted:" + str, new Object[0]);
            this.f52820m.e0().d().postValue(Boolean.TRUE);
            l1 A0 = MallFragment.A0(this.f52820m);
            Group group = A0 != null ? A0.f62690b : null;
            if (group != null) {
                group.setVisibility(8);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@m8.h WebView webView, int i4, @m8.h String str, @m8.h String str2) {
            Timber.b bVar = Timber.f93860a;
            bVar.a("onReceivedError(): errorCode " + i4 + ", description: " + str + ", failingUrl: " + str2, new Object[0]);
            l1 A0 = MallFragment.A0(this.f52820m);
            Group group = A0 != null ? A0.f62690b : null;
            if (group == null) {
                return;
            }
            group.setVisibility(0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.webview.e, android.webkit.WebViewClient
        public void onReceivedSslError(@m8.h WebView webView, @m8.h SslErrorHandler sslErrorHandler, @m8.h SslError sslError) {
            Timber.b bVar = Timber.f93860a;
            bVar.a("onReceivedSslError()" + sslError, new Object[0]);
            if (sslErrorHandler != null) {
                sslErrorHandler.proceed();
            }
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@m8.h WebView webView, @m8.g String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            Timber.b bVar = Timber.f93860a;
            bVar.k("shouldOverrideUrlLoading---url: " + url, new Object[0]);
            Context requireContext = this.f52820m.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            return com.qennnsad.aknkaksd.util.l.l(requireContext, url);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(24)
        public boolean shouldOverrideUrlLoading(@m8.h WebView webView, @m8.h WebResourceRequest webResourceRequest) {
            return shouldOverrideUrlLoading(webView, String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null));
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(23)
        public void onReceivedError(@m8.h WebView webView, @m8.g WebResourceRequest req, @m8.g WebResourceError rerr) {
            Intrinsics.checkNotNullParameter(req, "req");
            Intrinsics.checkNotNullParameter(rerr, "rerr");
            Timber.b bVar = Timber.f93860a;
            bVar.a("onReceivedError(): errorCode " + rerr.getErrorCode() + ", description: " + ((Object) rerr.getDescription()) + ", failingUrl: " + req.getUrl(), new Object[0]);
            l1 A0 = MallFragment.A0(this.f52820m);
            Group group = A0 != null ? A0.f62690b : null;
            if (group == null) {
                return;
            }
            group.setVisibility(0);
        }
    }
}
