package com.qennnsad.aknkaksd.presentation.ui.main;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.activity.OnBackPressedCallback;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.navigation.NavDestination;
import androidx.navigation.ViewKt;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.k2;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.analytics.data.events.Screen;
import com.qennnsad.aknkaksd.data.bean.AdConfigBean;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.GuestConfig;
import com.qennnsad.aknkaksd.data.bean.HallPopupBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.module.auth.GuestLinkPhoneNumberActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.o;
import com.qennnsad.aknkaksd.presentation.ui.main.a;
import com.qennnsad.aknkaksd.presentation.ui.main.c;
import com.qennnsad.aknkaksd.util.m1;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s1;
import e5.c0;
import e5.k1;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: MainFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b7\u00108J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0003J\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\f\u0010\u0011\u001a\u00020\u0005*\u00020\u0002H\u0002J\u001a\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001c\u001a\u00020\u0005H\u0016J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0003H\u0014J\u001c\u0010!\u001a\u00020\u0005*\u00020\u00172\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001fJ\u000e\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"R\u001b\u0010*\u001a\u00020%8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00069"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/k1;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/o;", "", "R0", "N0", "i1", "a1", "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "adConfigBean", "h1", "", "destinationId", "f1", "(Ljava/lang/Integer;)V", "O0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "c1", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "onResume", "e", "b1", "Lkotlin/Function0;", "onAnimFinished", "d1", "Lcom/qennnsad/aknkaksd/presentation/ui/main/a;", "bottomNavigation", "Z0", "Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;", "k", "Lkotlin/Lazy;", "Q0", "()Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/m1;", "l", "Lcom/qennnsad/aknkaksd/util/m1;", "P0", "()Lcom/qennnsad/aknkaksd/util/m1;", "g1", "(Lcom/qennnsad/aknkaksd/util/m1;)V", "updateUtil", "", "m", "J", "lastTimeTapBack", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class MainFragment extends com.qennnsad.aknkaksd.presentation.ui.main.b<k1, com.qennnsad.aknkaksd.presentation.ui.main.c> implements com.qennnsad.aknkaksd.presentation.ui.base.o {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52740k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public m1 f52741l;

    /* renamed from: m  reason: collision with root package name */
    private long f52742m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a extends AdaptedFunctionReference implements Function2<AppUpdateBean, Boolean, Unit> {
        a(Object obj) {
            super(2, obj, com.qennnsad.aknkaksd.util.l.class, "showUpdateFragment", "showUpdateFragment(Landroidx/fragment/app/FragmentActivity;Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;ZLkotlin/jvm/functions/Function0;)V", 1);
        }

        public final void b(@m8.g AppUpdateBean p02, boolean z9) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            FragmentActivity fragmentActivity = (FragmentActivity) this.receiver;
            Intrinsics.checkNotNullExpressionValue(fragmentActivity, "requireActivity()::showUpdateFragment");
            com.qennnsad.aknkaksd.util.l.V(fragmentActivity, p02, z9, null, 4, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(AppUpdateBean appUpdateBean, Boolean bool) {
            b(appUpdateBean, bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {
        b() {
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
            String simpleName = Reflection.getOrCreateKotlinClass(MainFragment.this.getClass()).getSimpleName();
            if (simpleName == null) {
                simpleName = "";
            }
            o0.a(simpleName, "No app update");
        }
    }

    /* compiled from: MainFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/main/MainFragment$c", "Landroidx/activity/OnBackPressedCallback;", "", "handleOnBackPressed", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends OnBackPressedCallback {
        c() {
            super(true);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            MainFragment.this.a1();
        }
    }

    /* compiled from: MainFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/main/MainFragment$d", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/view/animation/Animation;", "p0", "", "onAnimationStart", "onAnimationEnd", "onAnimationRepeat", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f52752a;

        d(Function0<Unit> function0) {
            this.f52752a = function0;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(@m8.h Animation animation) {
            this.f52752a.invoke();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(@m8.h Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(@m8.h Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f52754b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Dialog dialog) {
            super(0);
            this.f52754b = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            UserBean C = MainFragment.this.b0().C();
            boolean z9 = true;
            if ((C == null || !C.isGuest()) ? false : false) {
                MainFragment.this.i1();
            }
            this.f52754b.dismiss();
        }
    }

    public MainFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new MainFragment$special$$inlined$viewModels$default$2(new MainFragment$special$$inlined$viewModels$default$1(this)));
        this.f52740k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MainViewModel.class), new MainFragment$special$$inlined$viewModels$default$3(lazy), new MainFragment$special$$inlined$viewModels$default$4(null, lazy), new MainFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void N0() {
        m1 P0 = P0();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        P0.c(new a(requireActivity), new b());
    }

    private final void O0(k1 k1Var) {
        k1Var.f62640f.setSelected(false);
        k1Var.f62642h.setSelected(false);
        k1Var.f62639e.setSelected(false);
        k1Var.f62644j.setSelected(false);
        k1Var.f62641g.setSelected(false);
    }

    private final void R0() {
        q5.b.h(requireActivity(), false, false);
        requireActivity().getOnBackPressedDispatcher().addCallback(getViewLifecycleOwner(), new c());
        final k1 k1Var = (k1) m0();
        k1Var.f62639e.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.S0(MainFragment.this, view);
            }
        });
        k1Var.f62642h.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.T0(MainFragment.this, view);
            }
        });
        k1Var.f62640f.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.U0(MainFragment.this, view);
            }
        });
        k1Var.f62641g.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.V0(MainFragment.this, view);
            }
        });
        k1Var.f62644j.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.W0(MainFragment.this, view);
            }
        });
        e0().u().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainFragment.X0(k1.this, (Boolean) obj);
            }
        });
        e0().s().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainFragment.Y0(k1.this, (Boolean) obj);
            }
        });
        s.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.d0().E().getValue().booleanValue()) {
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.error_im_not_available, false, 2, null);
        } else {
            this$0.Z0(a.C0434a.f52778c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Z0(a.d.f52781c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Z0(a.b.f52779c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Z0(a.c.f52780c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Z0(a.e.f52782c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(k1 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        RelativeLayout mainRlChat = this_with.f62639e;
        Intrinsics.checkNotNullExpressionValue(mainRlChat, "mainRlChat");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        mainRlChat.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(k1 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        ImageView mainNewIndicator = this_with.f62638d;
        Intrinsics.checkNotNullExpressionValue(mainNewIndicator, "mainNewIndicator");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        mainNewIndicator.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a1() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f52742m > k2.f23783i1) {
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.main_tap_to_exit, false, 2, null);
            this.f52742m = currentTimeMillis;
            return;
        }
        BaseBeautyApplication.a aVar = BaseBeautyApplication.Companion;
        BaseBeautyApplication.gameCenterPointsRefreshPending = true;
        requireActivity().finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e1(MainFragment mainFragment, View view, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function0 = null;
        }
        mainFragment.d1(view, function0);
    }

    private final void f1(Integer num) {
        k1 k1Var = (k1) m0();
        O0(k1Var);
        int a10 = a.C0434a.f52778c.a();
        if (num != null && num.intValue() == a10) {
            k1Var.f62639e.setSelected(true);
            return;
        }
        int a11 = a.c.f52780c.a();
        if (num != null && num.intValue() == a11) {
            k1Var.f62641g.setSelected(true);
            return;
        }
        int a12 = a.d.f52781c.a();
        if (num != null && num.intValue() == a12) {
            k1Var.f62642h.setSelected(true);
            return;
        }
        int a13 = a.e.f52782c.a();
        if (num != null && num.intValue() == a13) {
            k1Var.f62644j.setSelected(true);
        } else {
            k1Var.f62640f.setSelected(true);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private final void h1(AdConfigBean adConfigBean) {
        String content;
        HallPopupBean hallPopup = adConfigBean.getHallPopup();
        String content2 = hallPopup != null ? hallPopup.getContent() : null;
        boolean z9 = true;
        if (content2 == null || content2.length() == 0) {
            UserBean C = b0().C();
            if ((C == null || !C.isGuest()) ? false : false) {
                i1();
                return;
            }
            return;
        }
        HallPopupBean hallPopup2 = adConfigBean.getHallPopup();
        if (hallPopup2 == null || (content = hallPopup2.getContent()) == null) {
            return;
        }
        c0 c10 = c0.c(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        Dialog dialog = new Dialog(requireContext(), R.style.TransparentBgDialog);
        dialog.setContentView(c10.getRoot());
        dialog.setCanceledOnTouchOutside(false);
        ImageView dialogHallIvClose = c10.f62283c;
        Intrinsics.checkNotNullExpressionValue(dialogHallIvClose, "dialogHallIvClose");
        s1.U(dialogHallIvClose, 0L, new e(dialog), 1, null);
        WebView webView = c10.f62282b;
        webView.setBackgroundColor(0);
        webView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadDataWithBaseURL(null, content, "text/html", "utf-8", null);
        webView.requestFocus();
        dialog.show();
        Window window = dialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i1() {
        final Dialog dialog;
        GuestConfig guest;
        Integer status;
        ConfigBean e4 = b0().e();
        if ((e4 == null || (guest = e4.getGuest()) == null || (status = guest.getStatus()) == null || status.intValue() != -1) ? false : true) {
            dialog = new Dialog(requireContext(), R.style.TransparentBgDialog);
            dialog.setContentView(R.layout.dialog_guest_force_link);
            dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.i
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    MainFragment.j1(dialog, this, dialogInterface);
                }
            });
            dialog.setCancelable(false);
        } else {
            dialog = new Dialog(requireContext(), R.style.TransparentBgDialog);
            dialog.setContentView(R.layout.dialog_guest_warning);
            dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.d
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    MainFragment.m1(dialog, this, dialogInterface);
                }
            });
        }
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(Dialog this_apply, final MainFragment this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.findViewById(R.id.btn_logout).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.k1(MainFragment.this, view);
            }
        });
        this_apply.findViewById(R.id.btn_link_phone).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.l1(MainFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AuthActivity.a aVar = AuthActivity.f50991k;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        AuthActivity.a.d(aVar, requireContext, null, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GuestLinkPhoneNumberActivity.a aVar = GuestLinkPhoneNumberActivity.f50992k;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        aVar.a(requireContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(final Dialog this_apply, final MainFragment this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.n1(this_apply, view);
            }
        });
        this_apply.findViewById(R.id.btn_continue).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.o1(this_apply, view);
            }
        });
        this_apply.findViewById(R.id.btn_login).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainFragment.p1(MainFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n1(Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o1(Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p1(MainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AuthActivity.a aVar = AuthActivity.f50991k;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        AuthActivity.a.d(aVar, requireContext, null, false, 3, null);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.o
    public void P(boolean z9) {
        o.a.a(this, z9);
    }

    @m8.g
    public final m1 P0() {
        m1 m1Var = this.f52741l;
        if (m1Var != null) {
            return m1Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("updateUtil");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: Q0 */
    public MainViewModel e0() {
        return (MainViewModel) this.f52740k.getValue();
    }

    public final void Z0(@m8.g com.qennnsad.aknkaksd.presentation.ui.main.a bottomNavigation) {
        Intrinsics.checkNotNullParameter(bottomNavigation, "bottomNavigation");
        k1 k1Var = (k1) m0();
        FragmentContainerView navHostFragment = k1Var.f62645k;
        Intrinsics.checkNotNullExpressionValue(navHostFragment, "navHostFragment");
        NavDestination currentDestination = ViewKt.findNavController(navHostFragment).getCurrentDestination();
        boolean z9 = false;
        if (currentDestination != null && currentDestination.getId() == bottomNavigation.a()) {
            z9 = true;
        }
        if (z9) {
            return;
        }
        O0(k1Var);
        FragmentContainerView navHostFragment2 = k1Var.f62645k;
        Intrinsics.checkNotNullExpressionValue(navHostFragment2, "navHostFragment");
        ViewKt.findNavController(navHostFragment2).navigate(bottomNavigation.a());
        if (Intrinsics.areEqual(bottomNavigation, a.C0434a.f52778c)) {
            RelativeLayout mainRlChat = k1Var.f62639e;
            Intrinsics.checkNotNullExpressionValue(mainRlChat, "mainRlChat");
            e1(this, mainRlChat, null, 1, null);
        } else if (Intrinsics.areEqual(bottomNavigation, a.b.f52779c)) {
            RelativeLayout mainRlIndex = k1Var.f62640f;
            Intrinsics.checkNotNullExpressionValue(mainRlIndex, "mainRlIndex");
            e1(this, mainRlIndex, null, 1, null);
        } else if (Intrinsics.areEqual(bottomNavigation, a.c.f52780c)) {
            x4.a.h(Z(), EventSignature.APP_CLICK, Screen.BottomMenu.id, Screen.BottomMenu.Action.Topup, null, false, 16, null);
            RelativeLayout mainRlMall = k1Var.f62641g;
            Intrinsics.checkNotNullExpressionValue(mainRlMall, "mainRlMall");
            e1(this, mainRlMall, null, 1, null);
        } else if (Intrinsics.areEqual(bottomNavigation, a.d.f52781c)) {
            RelativeLayout mainRlMe = k1Var.f62642h;
            Intrinsics.checkNotNullExpressionValue(mainRlMe, "mainRlMe");
            e1(this, mainRlMe, null, 1, null);
        } else if (Intrinsics.areEqual(bottomNavigation, a.e.f52782c)) {
            RelativeLayout mainRlRankingList = k1Var.f62644j;
            Intrinsics.checkNotNullExpressionValue(mainRlRankingList, "mainRlRankingList");
            e1(this, mainRlRankingList, null, 1, null);
        }
        q5.b.i(bottomNavigation.b(), requireActivity());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: b1 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.ui.main.c e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (e4 instanceof c.b) {
            h1(((c.b) e4).d());
        } else if (e4 instanceof com.qennnsad.aknkaksd.presentation.ui.main.a) {
            Z0((com.qennnsad.aknkaksd.presentation.ui.main.a) e4);
        } else if (Intrinsics.areEqual(e4, c.C0435c.f52790a)) {
            i1();
        } else if (Intrinsics.areEqual(e4, c.a.f52788a)) {
            N0();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: c1 */
    public k1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        k1 d4 = k1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void d1(@m8.g View view, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setSelected(true);
        AnimationSet animationSet = new AnimationSet(true);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.1f, 1.0f, 1.1f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(200L);
        animationSet.addAnimation(scaleAnimation);
        animationSet.setFillBefore(true);
        if (function0 != null) {
            animationSet.setAnimationListener(new d(function0));
        }
        view.startAnimation(animationSet);
    }

    public final void g1(@m8.g m1 m1Var) {
        Intrinsics.checkNotNullParameter(m1Var, "<set-?>");
        this.f52741l = m1Var;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.o
    public void l(int i4) {
        o.a.b(this, i4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentContainerView fragmentContainerView = ((k1) m0()).f62645k;
        Intrinsics.checkNotNullExpressionValue(fragmentContainerView, "requireBinding().navHostFragment");
        NavDestination currentDestination = ViewKt.findNavController(fragmentContainerView).getCurrentDestination();
        f1(currentDestination != null ? Integer.valueOf(currentDestination.getId()) : null);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        R0();
    }
}
