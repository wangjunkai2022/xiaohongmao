package com.qennnsad.aknkaksd.presentation.module.main.webview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.fragment.FragmentKt;
import com.alipay.sdk.app.PayTask;
import com.didi.live.spring.R;
import com.im.freechat.sdk.SDKManager;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.i;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment;
import com.qennnsad.aknkaksd.presentation.module.main.webview.h;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.k0;
import com.qennnsad.aknkaksd.util.s1;
import com.qennnsad.aknkaksd.util.t0;
import e5.x1;
import io.sentry.e3;
import io.sentry.protocol.y;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import timber.log.Timber;

/* compiled from: SimpleWebViewFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001fB\u0007¢\u0006\u0004\bd\u0010eJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\u001a\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010 \u001a\u00020\u0004H\u0016J\b\u0010!\u001a\u00020\u0004H\u0016J\b\u0010\"\u001a\u00020\u0004H\u0016J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0003H\u0014R\u001b\u0010*\u001a\u00020%8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R$\u00108\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020504\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00100<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010A\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010:R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010'\u001a\u0004\bD\u0010ER\u001b\u0010J\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010'\u001a\u0004\bH\u0010IR\u001b\u0010M\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010'\u001a\u0004\bL\u0010IR\u001b\u0010P\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010'\u001a\u0004\bO\u0010IR\u001b\u0010S\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010'\u001a\u0004\bR\u0010IR\u001b\u0010V\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010'\u001a\u0004\bU\u0010ER\"\u0010\\\u001a\u0010\u0012\f\u0012\n Y*\u0004\u0018\u00010X0X0W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\"\u0010^\u001a\u00020]8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010c¨\u0006g"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/x1;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;", "", "f1", "", "doubleBack", "d1", "U0", "", "oldProgress", "newProgress", "r1", "progress", "p1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "peerage", "k1", "l1", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/t;", "W0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "m1", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "onResume", "onPause", "onDestroyView", "e", "j1", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;", "k", "Lkotlin/Lazy;", "b1", "()Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/t0;", "m", "Lcom/qennnsad/aknkaksd/util/t0;", "Z0", "()Lcom/qennnsad/aknkaksd/util/t0;", "n1", "(Lcom/qennnsad/aknkaksd/util/t0;)V", "networkUtility", "Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "n", "Landroid/webkit/ValueCallback;", "uploadMessage", "o", "Z", "isDismissProgressAnimating", "", "p", "Ljava/util/List;", "peerageAnimationQueue", "q", "isSvgaAnimating", "", "r", "V0", "()Ljava/lang/String;", "baseUrl", "s", "X0", "()Z", "hideNavBar", "t", "a1", com.qennnsad.aknkaksd.presentation.module.main.webview.n.f52152c, "u", "h1", "isGameCenter", "v", "i1", "isWebViewInterceptorSkipped", "w", "Y0", "loadUrl", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", y.b.f83919g, "Landroidx/activity/result/ActivityResultLauncher;", "fileChooser", "Lc5/g;", "webViewAuthInterceptor", "Lc5/g;", "c1", "()Lc5/g;", "o1", "(Lc5/g;)V", "<init>", "()V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class SimpleWebViewFragment extends com.qennnsad.aknkaksd.presentation.module.main.webview.a<x1, com.qennnsad.aknkaksd.presentation.module.main.webview.h> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52048k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public c5.g f52049l;
    @u7.a

    /* renamed from: m  reason: collision with root package name */
    public t0 f52050m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private ValueCallback<Uri[]> f52051n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f52052o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final List<PeerageLogin> f52053p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f52054q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final Lazy f52055r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final Lazy f52056s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final Lazy f52057t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final Lazy f52058u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final Lazy f52059v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final Lazy f52060w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f52061x;

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<String> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            String string = SimpleWebViewFragment.this.requireArguments().getString("url");
            if (string != null) {
                return string;
            }
            throw new IllegalStateException("URL can't be null!".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<String, Unit> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            boolean contains$default;
            boolean equals;
            Intrinsics.checkNotNullParameter(it, "it");
            x1 D0 = SimpleWebViewFragment.D0(SimpleWebViewFragment.this);
            TextView textView = D0 != null ? D0.f63309h : null;
            if (textView == null) {
                return;
            }
            if (it.length() == 0) {
                return;
            }
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) it, (CharSequence) ".jpg", false, 2, (Object) null);
            if (contains$default) {
                it = "";
            } else {
                equals = StringsKt__StringsJVMKt.equals(it, "Game Center", true);
                if (equals) {
                    it = "游戏中心";
                }
            }
            textView.setText(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "message", "Landroid/webkit/JsResult;", "result", "", "a", "(Ljava/lang/String;Landroid/webkit/JsResult;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<String, JsResult, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SimpleWebViewFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Boolean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f52073a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(JsResult jsResult) {
                super(1);
                this.f52073a = jsResult;
            }

            public final void a(boolean z9) {
                if (z9) {
                    JsResult jsResult = this.f52073a;
                    if (jsResult != null) {
                        jsResult.confirm();
                        return;
                    }
                    return;
                }
                JsResult jsResult2 = this.f52073a;
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
        /* compiled from: SimpleWebViewFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f52074a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(JsResult jsResult) {
                super(0);
                this.f52074a = jsResult;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                JsResult jsResult = this.f52074a;
                if (jsResult != null) {
                    jsResult.cancel();
                }
            }
        }

        d() {
            super(2);
        }

        public final void a(@m8.h String str, @m8.h JsResult jsResult) {
            FragmentActivity requireActivity = SimpleWebViewFragment.this.requireActivity();
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
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<Integer, Unit> {
        e() {
            super(1);
        }

        public final void a(int i4) {
            ProgressBar progressBar;
            x1 D0 = SimpleWebViewFragment.D0(SimpleWebViewFragment.this);
            if (D0 == null || (progressBar = D0.f63304c) == null) {
                return;
            }
            SimpleWebViewFragment simpleWebViewFragment = SimpleWebViewFragment.this;
            if (i4 >= 100 && !simpleWebViewFragment.f52052o) {
                simpleWebViewFragment.f52052o = true;
                progressBar.setProgress(i4);
                simpleWebViewFragment.p1(progressBar.getProgress());
                return;
            }
            simpleWebViewFragment.r1(progressBar.getProgress(), i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0003\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0018\u00010\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "filePathCallback", "Landroid/webkit/WebChromeClient$FileChooserParams;", "fileChooserParams", "", "a", "(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function2<ValueCallback<Uri[]>, WebChromeClient.FileChooserParams, Unit> {
        f() {
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
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                android.webkit.ValueCallback r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.I0(r0)
                if (r0 == 0) goto Lc
                r1 = 0
                r0.onReceiveValue(r1)
            Lc:
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.Q0(r0, r4)
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
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r5 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                androidx.activity.result.ActivityResultLauncher r5 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.E0(r5)
                java.lang.String r0 = "File Chooser"
                android.content.Intent r4 = android.content.Intent.createChooser(r4, r0)
                r5.launch(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.f.a(android.webkit.ValueCallback, android.webkit.WebChromeClient$FileChooserParams):void");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            a(valueCallback, fileChooserParams);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class g extends Lambda implements Function0<Boolean> {
        g() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(SimpleWebViewFragment.this.requireArguments().getBoolean(com.qennnsad.aknkaksd.presentation.module.main.webview.n.f52151b, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function1<String, Unit> {
        h() {
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
            Context requireContext = SimpleWebViewFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            h1.e(requireContext, it, null, "复制成功: " + it, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function1<Boolean, Unit> {
        i() {
            super(1);
        }

        public final void a(boolean z9) {
            SimpleWebViewFragment.this.d1(z9);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function1<String, Unit> {
        j() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(SimpleWebViewFragment this$0, String it) {
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
            Context requireContext = SimpleWebViewFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            if (com.qennnsad.aknkaksd.util.l.r(requireContext)) {
                final SimpleWebViewFragment simpleWebViewFragment = SimpleWebViewFragment.this;
                new Thread(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        SimpleWebViewFragment.j.b(SimpleWebViewFragment.this, it);
                    }
                }).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function1<Integer, Unit> {
        k() {
            super(1);
        }

        public final void a(int i4) {
            SimpleWebViewFragment.this.e0().w(i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class l extends Lambda implements Function1<String, Unit> {
        l() {
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
            FragmentActivity activity = SimpleWebViewFragment.this.getActivity();
            if (activity != null) {
                com.qennnsad.aknkaksd.util.l.A(activity, it);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class m extends Lambda implements Function1<PeerageLogin, Unit> {
        m() {
            super(1);
        }

        public final void a(@m8.g PeerageLogin it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SimpleWebViewFragment.this.e0().y(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(PeerageLogin peerageLogin) {
            a(peerageLogin);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class n extends Lambda implements Function0<Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SimpleWebViewFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            public static final a f52085a = new a();

            a() {
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
            }
        }

        n() {
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
            FragmentActivity activity = SimpleWebViewFragment.this.getActivity();
            if (activity != null) {
                com.qennnsad.aknkaksd.util.l.L(activity, SimpleWebViewFragment.this.b0(), a.f52085a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class o extends Lambda implements Function1<String, Unit> {
        o() {
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
            FragmentActivity activity = SimpleWebViewFragment.this.getActivity();
            if (activity != null) {
                com.qennnsad.aknkaksd.util.l.A(activity, it);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class p extends Lambda implements Function0<Unit> {
        p() {
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
            SimpleWebViewFragment.this.d1(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class q extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x1 f52088a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SimpleWebViewFragment f52089b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(x1 x1Var, SimpleWebViewFragment simpleWebViewFragment) {
            super(0);
            this.f52088a = x1Var;
            this.f52089b = simpleWebViewFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            String url = this.f52088a.f63311j.getUrl();
            if (url != null) {
                x1 x1Var = this.f52088a;
                SimpleWebViewFragment simpleWebViewFragment = this.f52089b;
                x1Var.f63311j.loadUrl(url);
                BaseMvvmFragment.r0(simpleWebViewFragment, null, 1, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class r extends Lambda implements Function0<Unit> {
        r() {
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
            SimpleWebViewFragment.this.U0();
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s", "Lcom/opensource/svgaplayer/d;", "", "onPause", "onFinished", "b", "", TypedValues.Attributes.S_FRAME, "", "percentage", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class s implements com.opensource.svgaplayer.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ x1 f52092b;

        s(x1 x1Var) {
            this.f52092b = x1Var;
        }

        @Override // com.opensource.svgaplayer.d
        public void a(int i4, double d4) {
        }

        @Override // com.opensource.svgaplayer.d
        public void b() {
        }

        @Override // com.opensource.svgaplayer.d
        public void onFinished() {
            Timber.f93860a.k("webSvga onFinished", new Object[0]);
            SimpleWebViewFragment.this.f52054q = false;
            this.f52092b.f63305d.a();
            if (!SimpleWebViewFragment.this.f52053p.isEmpty()) {
                SimpleWebViewFragment.this.f52053p.remove(0);
                SimpleWebViewFragment.this.l1();
            }
        }

        @Override // com.opensource.svgaplayer.d
        public void onPause() {
            Timber.f93860a.k("webSvga onPause", new Object[0]);
            SimpleWebViewFragment.this.f52054q = false;
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class t extends Lambda implements Function0<Boolean> {
        t() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
            if (r0 != false) goto L10;
         */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Boolean invoke() {
            /*
                r5 = this;
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r0)
                java.lang.String r1 = "points/pointsview"
                r2 = 0
                r3 = 2
                r4 = 0
                boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r2, r3, r4)
                if (r0 != 0) goto L2d
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r0)
                java.lang.String r1 = "game-center"
                boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r2, r3, r4)
                if (r0 != 0) goto L2d
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r0)
                java.lang.String r1 = "gameCenter"
                boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r2, r3, r4)
                if (r0 == 0) goto L2e
            L2d:
                r2 = 1
            L2e:
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.t.invoke():java.lang.Boolean");
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class u extends Lambda implements Function0<Boolean> {
        u() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0046 A[ADDED_TO_REGION] */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Boolean invoke() {
            /*
                r7 = this;
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r0)
                java.lang.String r1 = "streamer-rewards"
                r2 = 0
                r3 = 2
                r4 = 0
                boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r2, r3, r4)
                r1 = 1
                if (r0 != 0) goto L23
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r0)
                java.lang.String r5 = "RewardsActivity"
                boolean r0 = kotlin.text.StringsKt.contains$default(r0, r5, r2, r3, r4)
                if (r0 == 0) goto L21
                goto L23
            L21:
                r0 = 0
                goto L24
            L23:
                r0 = 1
            L24:
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r5 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r5 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r5)
                java.lang.String r6 = "fan-page"
                boolean r5 = kotlin.text.StringsKt.contains$default(r5, r6, r2, r3, r4)
                if (r5 != 0) goto L43
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r5 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                java.lang.String r5 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.C0(r5)
                java.lang.String r6 = "fanClub"
                boolean r3 = kotlin.text.StringsKt.contains$default(r5, r6, r2, r3, r4)
                if (r3 == 0) goto L41
                goto L43
            L41:
                r3 = 0
                goto L44
            L43:
                r3 = 1
            L44:
                if (r0 != 0) goto L58
                if (r3 != 0) goto L58
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                boolean r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.L0(r0)
                if (r0 != 0) goto L58
                com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.this
                boolean r0 = com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.H0(r0)
                if (r0 == 0) goto L59
            L58:
                r2 = 1
            L59:
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.u.invoke():java.lang.Boolean");
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class v extends Lambda implements Function0<String> {
        v() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            if (SimpleWebViewFragment.this.i1()) {
                t0 Z0 = SimpleWebViewFragment.this.Z0();
                String V0 = SimpleWebViewFragment.this.V0();
                String o9 = SimpleWebViewFragment.this.b0().o();
                if (o9 == null) {
                    o9 = "";
                }
                return Z0.u(V0, "token", o9);
            }
            return SimpleWebViewFragment.this.Z0().u(SimpleWebViewFragment.this.V0(), "ver", com.qennnsad.aknkaksd.e.f48514f);
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w", "Lcom/opensource/svgaplayer/i$d;", "Lcom/opensource/svgaplayer/l;", "videoItem", "", "b", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class w implements i.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x1 f52096a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SimpleWebViewFragment f52097b;

        w(x1 x1Var, SimpleWebViewFragment simpleWebViewFragment) {
            this.f52096a = x1Var;
            this.f52097b = simpleWebViewFragment;
        }

        @Override // com.opensource.svgaplayer.i.d
        public void a() {
            this.f52097b.f52054q = false;
        }

        @Override // com.opensource.svgaplayer.i.d
        public void b(@m8.g com.opensource.svgaplayer.l videoItem) {
            Intrinsics.checkNotNullParameter(videoItem, "videoItem");
            this.f52096a.f63310i.setVideoItem(videoItem);
            this.f52096a.f63310i.z();
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class x extends Lambda implements Function0<Boolean> {
        x() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(SimpleWebViewFragment.this.requireArguments().getBoolean(com.qennnsad.aknkaksd.presentation.module.main.webview.n.f52152c, false));
        }
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$y", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animation", "", "onAnimationEnd", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class y extends AnimatorListenerAdapter {
        y() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.g Animator animation) {
            ProgressBar progressBar;
            Intrinsics.checkNotNullParameter(animation, "animation");
            x1 D0 = SimpleWebViewFragment.D0(SimpleWebViewFragment.this);
            if (D0 == null || (progressBar = D0.f63304c) == null) {
                return;
            }
            SimpleWebViewFragment simpleWebViewFragment = SimpleWebViewFragment.this;
            progressBar.setProgress(0);
            progressBar.setVisibility(8);
            simpleWebViewFragment.f52052o = false;
        }
    }

    public SimpleWebViewFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new SimpleWebViewFragment$special$$inlined$viewModels$default$2(new SimpleWebViewFragment$special$$inlined$viewModels$default$1(this)));
        this.f52048k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SimpleWebViewViewModel.class), new SimpleWebViewFragment$special$$inlined$viewModels$default$3(lazy), new SimpleWebViewFragment$special$$inlined$viewModels$default$4(null, lazy), new SimpleWebViewFragment$special$$inlined$viewModels$default$5(this, lazy));
        this.f52053p = new ArrayList();
        lazy2 = LazyKt__LazyJVMKt.lazy(new b());
        this.f52055r = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new g());
        this.f52056s = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new x());
        this.f52057t = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new t());
        this.f52058u = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new u());
        this.f52059v = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new v());
        this.f52060w = lazy7;
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.k
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                SimpleWebViewFragment.T0(SimpleWebViewFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ploadMessage = null\n    }");
        this.f52061x = registerForActivityResult;
    }

    public static final /* synthetic */ x1 D0(SimpleWebViewFragment simpleWebViewFragment) {
        return (x1) simpleWebViewFragment.a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(SimpleWebViewFragment this$0, ActivityResult result) {
        String str;
        Intent data;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        if (this$0.f52051n == null) {
            return;
        }
        try {
            str = k0.n(this$0.requireActivity(), (result.getResultCode() != -1 || (data = result.getData()) == null) ? null : data.getData());
        } catch (SecurityException unused) {
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.error_grant_storage_permission, false, 2, null);
            str = null;
        }
        if (str == null || str.length() == 0) {
            ValueCallback<Uri[]> valueCallback = this$0.f52051n;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            this$0.f52051n = null;
            return;
        }
        Uri uri = b6.a.a(this$0.getActivity(), new File(str));
        ValueCallback<Uri[]> valueCallback2 = this$0.f52051n;
        if (valueCallback2 != null) {
            Intrinsics.checkNotNullExpressionValue(uri, "uri");
            valueCallback2.onReceiveValue(new Uri[]{uri});
        }
        this$0.f52051n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U0() {
        if (requireActivity() instanceof SimpleWebViewActivity) {
            requireActivity().finish();
        } else {
            FragmentKt.findNavController(this).navigateUp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String V0() {
        return (String) this.f52055r.getValue();
    }

    private final com.qennnsad.aknkaksd.presentation.module.main.webview.t W0() {
        return new com.qennnsad.aknkaksd.presentation.module.main.webview.t(new c(), new d(), new e(), new f());
    }

    private final boolean X0() {
        return ((Boolean) this.f52056s.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String Y0() {
        return (String) this.f52060w.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a1() {
        return ((Boolean) this.f52057t.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1(final boolean z9) {
        final WebView webView;
        x1 x1Var = (x1) a0();
        if (x1Var == null || (webView = x1Var.f63311j) == null) {
            return;
        }
        webView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.l
            @Override // java.lang.Runnable
            public final void run() {
                SimpleWebViewFragment.e1(webView, z9, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(WebView this_apply, boolean z9, SimpleWebViewFragment this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.canGoBack() && !Intrinsics.areEqual(this_apply.getOriginalUrl(), this_apply.getUrl())) {
            this_apply.goBack();
            if (z9) {
                this_apply.goBack();
                return;
            }
            return;
        }
        this$0.U0();
    }

    private final void f1() {
        x1 x1Var = (x1) m0();
        WebView webView = x1Var.f63311j;
        Intrinsics.checkNotNullExpressionValue(webView, "");
        s1.t(webView);
        webView.getSettings().setLoadsImagesAutomatically(true);
        webView.getSettings().setMixedContentMode(2);
        webView.setScrollBarStyle(0);
        webView.setScrollbarFadingEnabled(false);
        webView.setFocusable(true);
        webView.setFocusableInTouchMode(true);
        webView.addJavascriptInterface(new com.qennnsad.aknkaksd.presentation.module.main.webview.v(b0().C(), new h(), new i(), new j(), new k(), new l(), new m(), new n()), "myapp");
        webView.setWebChromeClient(W0());
        webView.setWebViewClient(new a(this, webView));
        webView.setDownloadListener(new com.qennnsad.aknkaksd.presentation.module.main.webview.u(new o()));
        webView.setOnKeyListener(new View.OnKeyListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.j
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                boolean g12;
                g12 = SimpleWebViewFragment.g1(SimpleWebViewFragment.this, view, i4, keyEvent);
                return g12;
            }
        });
        webView.loadUrl(Y0());
        ImageButton imgbtnToolbarBack = x1Var.f63303b;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new p(), 1, null);
        ImageButton toolbarRefresh = x1Var.f63308g;
        Intrinsics.checkNotNullExpressionValue(toolbarRefresh, "toolbarRefresh");
        s1.U(toolbarRefresh, 0L, new q(x1Var, this), 1, null);
        TextView toolbarClose = x1Var.f63307f;
        Intrinsics.checkNotNullExpressionValue(toolbarClose, "toolbarClose");
        s1.U(toolbarClose, 0L, new r(), 1, null);
        Toolbar toolbar = x1Var.f63306e;
        Intrinsics.checkNotNullExpressionValue(toolbar, "toolbar");
        toolbar.setVisibility(X0() ^ true ? 0 : 8);
        TextView toolbarClose2 = x1Var.f63307f;
        Intrinsics.checkNotNullExpressionValue(toolbarClose2, "toolbarClose");
        toolbarClose2.setVisibility(h1() ? 0 : 8);
        ImageButton toolbarRefresh2 = x1Var.f63308g;
        Intrinsics.checkNotNullExpressionValue(toolbarRefresh2, "toolbarRefresh");
        toolbarRefresh2.setVisibility(h1() ^ true ? 0 : 8);
        ImageButton imgbtnToolbarBack2 = x1Var.f63303b;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack2, "imgbtnToolbarBack");
        imgbtnToolbarBack2.setVisibility(h1() ^ true ? 0 : 8);
        SVGAImageView sVGAImageView = x1Var.f63310i;
        sVGAImageView.setFillMode(SVGAImageView.FillMode.Backward);
        sVGAImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        sVGAImageView.setCallback(new s(x1Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g1(SimpleWebViewFragment this$0, View view, int i4, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i4 == 4) {
            if (keyEvent.getAction() == 0) {
                this$0.d1(false);
                return true;
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h1() {
        return ((Boolean) this.f52058u.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean i1() {
        return ((Boolean) this.f52059v.getValue()).booleanValue();
    }

    private final void k1(PeerageLogin peerageLogin) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("Adding peerage to queue: " + peerageLogin, new Object[0]);
        this.f52053p.add(peerageLogin);
        if (this.f52054q) {
            return;
        }
        l1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.f52053p);
        PeerageLogin peerageLogin = (PeerageLogin) firstOrNull;
        if (peerageLogin != null) {
            x1 x1Var = (x1) m0();
            x1Var.f63305d.c(e0().x(), peerageLogin);
            x1Var.f63305d.d();
            this.f52054q = true;
            com.opensource.svgaplayer.i d4 = com.opensource.svgaplayer.i.f47267i.d();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            d4.E(requireContext);
            try {
                FileInputStream openFileInput = requireActivity().openFileInput(peerageLogin.getCache_name());
                Intrinsics.checkNotNullExpressionValue(openFileInput, "requireActivity().openFileInput(it.cache_name)");
                String cache_name = peerageLogin.getCache_name();
                Intrinsics.checkNotNullExpressionValue(cache_name, "it.cache_name");
                com.opensource.svgaplayer.i.w(d4, openFileInput, cache_name, new w(x1Var, this), false, null, null, 56, null);
            } catch (FileNotFoundException e4) {
                Timber.b bVar = Timber.f93860a;
                bVar.d("SVGA " + peerageLogin.getCache_name() + " not found", e4);
                this.f52054q = false;
            } catch (OutOfMemoryError e10) {
                Timber.b bVar2 = Timber.f93860a;
                bVar2.d("SVGA " + peerageLogin.getCache_name() + " was too large", e10);
                this.f52054q = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1(final int i4) {
        ProgressBar progressBar;
        x1 x1Var = (x1) a0();
        if (x1Var == null || (progressBar = x1Var.f63304c) == null) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(progressBar, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(1500L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SimpleWebViewFragment.q1(i4, this, valueAnimator);
            }
        });
        ofFloat.addListener(new y());
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(int i4, SimpleWebViewFragment this$0, ValueAnimator valueAnimator) {
        ProgressBar progressBar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        float animatedFraction = valueAnimator.getAnimatedFraction();
        int i10 = 100 - i4;
        x1 x1Var = (x1) this$0.a0();
        if (x1Var == null || (progressBar = x1Var.f63304c) == null) {
            return;
        }
        progressBar.setProgress((int) (i4 + (i10 * animatedFraction)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r1(int i4, int i10) {
        ProgressBar progressBar;
        x1 x1Var = (x1) a0();
        if (x1Var == null || (progressBar = x1Var.f63304c) == null) {
            return;
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(progressBar, "progress", i4, i10);
        ofInt.setDuration(300L);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.start();
    }

    @m8.g
    public final t0 Z0() {
        t0 t0Var = this.f52050m;
        if (t0Var != null) {
            return t0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkUtility");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: b1 */
    public SimpleWebViewViewModel e0() {
        return (SimpleWebViewViewModel) this.f52048k.getValue();
    }

    @m8.g
    public final c5.g c1() {
        c5.g gVar = this.f52049l;
        if (gVar != null) {
            return gVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webViewAuthInterceptor");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: j1 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.main.webview.h e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (e4 instanceof h.a) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.presentation.ui.chat.im.a.f(requireActivity, ((h.a) e4).d(), null, null, null, null, 30, null);
        } else if (e4 instanceof h.b) {
            k1(((h.b) e4).d());
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: m1 */
    public x1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        x1 d4 = x1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void n1(@m8.g t0 t0Var) {
        Intrinsics.checkNotNullParameter(t0Var, "<set-?>");
        this.f52050m = t0Var;
    }

    public final void o1(@m8.g c5.g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<set-?>");
        this.f52049l = gVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        WebView webView;
        super.onDestroyView();
        try {
            x1 x1Var = (x1) a0();
            if (x1Var == null || (webView = x1Var.f63311j) == null) {
                return;
            }
            webView.stopLoading();
            webView.destroy();
        } catch (Exception e4) {
            Timber.f93860a.e(e4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        SDKManager.y(false);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SDKManager.y(true);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        f1();
    }

    /* compiled from: SimpleWebViewFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\fH\u0016J.\u0010\u0014\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0016J\"\u0010\u0014\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0017J\u001a\u0010\u0018\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001c\u0010\u0018\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J\"\u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006 "}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;", "", "url", "", "L", "", "K", "Landroid/webkit/WebView;", "view", "Landroid/webkit/WebResourceRequest;", e3.b.f83149d, "Landroid/webkit/WebResourceResponse;", "shouldInterceptRequest", "errorResponse", "onReceivedHttpError", "", "errorCode", "description", "failingUrl", "onReceivedError", "req", "Landroid/webkit/WebResourceError;", "rerr", "shouldOverrideUrlLoading", "Landroid/graphics/Bitmap;", "favicon", "onPageStarted", "onPageFinished", "webView", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Landroid/webkit/WebView;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends com.qennnsad.aknkaksd.presentation.module.main.webview.e {

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ SimpleWebViewFragment f52069m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g SimpleWebViewFragment simpleWebViewFragment, WebView webView) {
            super(simpleWebViewFragment.b0(), simpleWebViewFragment.c1(), simpleWebViewFragment.Z0(), webView);
            Intrinsics.checkNotNullParameter(webView, "webView");
            this.f52069m = simpleWebViewFragment;
        }

        private final boolean K(String str) {
            return Intrinsics.areEqual(x().t(this.f52069m.Y0(), null), x().t(str, null));
        }

        private final void L(String str) {
            WebView webView;
            if (this.f52069m.h1() && K(str)) {
                String str2 = "javascript:setWebParams('" + w().g().getHostWithProtocol(false) + "')";
                Timber.f93860a.k("Sending web params on Game Center main page: " + str2, new Object[0]);
                x1 D0 = SimpleWebViewFragment.D0(this.f52069m);
                if (D0 == null || (webView = D0.f63311j) == null) {
                    return;
                }
                webView.evaluateJavascript(str2, null);
                webView.clearHistory();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@m8.g WebView view, @m8.g String url) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            super.onPageFinished(view, url);
            this.f52069m.a();
            L(url);
            if (this.f52069m.h1()) {
                return;
            }
            x1 D0 = SimpleWebViewFragment.D0(this.f52069m);
            ImageButton imageButton = D0 != null ? D0.f63303b : null;
            if (imageButton == null) {
                return;
            }
            imageButton.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@m8.g WebView view, @m8.g String url, @m8.h Bitmap bitmap) {
            ProgressBar progressBar;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            super.onPageStarted(view, url, bitmap);
            Timber.b bVar = Timber.f93860a;
            bVar.k("onPageStarted:" + url, new Object[0]);
            x1 D0 = SimpleWebViewFragment.D0(this.f52069m);
            if (D0 != null && (progressBar = D0.f63304c) != null) {
                progressBar.setVisibility(0);
                progressBar.setAlpha(1.0f);
            }
            Context requireContext = this.f52069m.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            com.qennnsad.aknkaksd.util.l.l(requireContext, url);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@m8.h WebView webView, int i4, @m8.h String str, @m8.h String str2) {
            Timber.b bVar = Timber.f93860a;
            bVar.a("onReceivedError(): errorCode " + i4 + ", description: " + str + ", failingUrl: " + str2, new Object[0]);
            if (webView != null) {
                webView.goBack();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(@m8.g WebView view, @m8.g WebResourceRequest request, @m8.g WebResourceResponse errorResponse) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
            super.onReceivedHttpError(view, request, errorResponse);
            Timber.b bVar = Timber.f93860a;
            bVar.k("onReceivedHttpError(), url: " + request.getUrl() + ", statusCode: " + errorResponse.getStatusCode(), new Object[0]);
        }

        @Override // com.konstantinschubert.writeinterceptingwebview.e, android.webkit.WebViewClient
        @m8.h
        public WebResourceResponse shouldInterceptRequest(@m8.g WebView view, @m8.g WebResourceRequest request) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(request, "request");
            if (this.f52069m.i1()) {
                return null;
            }
            return super.shouldInterceptRequest(view, request);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@m8.h WebView webView, @m8.g String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            Timber.b bVar = Timber.f93860a;
            bVar.k("shouldOverrideUrlLoading---url: " + url, new Object[0]);
            Context requireContext = this.f52069m.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            return com.qennnsad.aknkaksd.util.l.l(requireContext, url);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(23)
        public void onReceivedError(@m8.h WebView webView, @m8.g WebResourceRequest req, @m8.g WebResourceError rerr) {
            Intrinsics.checkNotNullParameter(req, "req");
            Intrinsics.checkNotNullParameter(rerr, "rerr");
            Timber.b bVar = Timber.f93860a;
            bVar.a("onReceivedError(): errorCode " + rerr.getErrorCode() + ", description: " + ((Object) rerr.getDescription()) + ", failingUrl: " + req.getUrl(), new Object[0]);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(24)
        public boolean shouldOverrideUrlLoading(@m8.h WebView webView, @m8.h WebResourceRequest webResourceRequest) {
            return shouldOverrideUrlLoading(webView, String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null));
        }
    }
}
