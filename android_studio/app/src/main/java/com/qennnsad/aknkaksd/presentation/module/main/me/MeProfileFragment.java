package com.qennnsad.aknkaksd.presentation.module.main.me;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.analytics.data.events.Screen;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.HostBean;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.presentation.module.auth.GuestLinkPhoneNumberActivity;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsActivity;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.s1;
import com.qennnsad.aknkaksd.util.x0;
import e5.s3;
import e5.u0;
import io.sentry.protocol.a;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.s0;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: MeProfileFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\bL\u0010MJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0002J\u0016\u0010\u000f\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J$\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\r2\b\b\u0002\u0010\u001d\u001a\u00020\u00192\b\b\u0002\u0010\u001e\u001a\u00020\u0019H\u0002J\u001a\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010)\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0003H\u0014R\u001b\u00101\u001a\u00020,8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104R$\u0010<\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R.\u0010B\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r ?*\n\u0012\u0004\u0012\u00020\r\u0018\u00010>0>0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\"\u0010E\u001a\u0010\u0012\f\u0012\n ?*\u0004\u0018\u00010C0C0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010AR\"\u0010G\u001a\u0010\u0012\f\u0012\n ?*\u0004\u0018\u00010\u00110\u00110=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010AR\"\u0010I\u001a\u0010\u0012\f\u0012\n ?*\u0004\u0018\u00010C0C0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010AR\"\u0010K\u001a\u0010\u0012\f\u0012\n ?*\u0004\u0018\u00010C0C0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010A¨\u0006N"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/u0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/j;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;", "menuItem", "", "e1", "f1", "Y0", "T0", "q1", "", "", a.b.f83633h, "g1", "a1", "Landroid/net/Uri;", "uri", "o1", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "userBean", "r1", MessageBundle.TITLE_ENTRY, "m1", "", "isFollowees", "c1", "url", "hideNavBar", "isSpa", "j1", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "l1", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "d1", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;", "k", "Lkotlin/Lazy;", "S0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;", "menuAdapter", "m", "Landroid/net/Uri;", "R0", "()Landroid/net/Uri;", "n1", "(Landroid/net/Uri;)V", "photoURI", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "n", "Landroidx/activity/result/ActivityResultLauncher;", "requestPermissions", "Landroid/content/Intent;", "o", "openSettings", "p", "launchCamera", "q", "openGallery", "r", "startUCrop", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class MeProfileFragment extends com.qennnsad.aknkaksd.presentation.module.main.me.f<u0, com.qennnsad.aknkaksd.presentation.module.main.me.j> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51704k;

    /* renamed from: l  reason: collision with root package name */
    private w f51705l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private Uri f51706m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final ActivityResultLauncher<String[]> f51707n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f51708o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final ActivityResultLauncher<Uri> f51709p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f51710q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f51711r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileFragment$initViewModel$1", f = "MeProfileFragment.kt", i = {}, l = {223}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51719a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileFragment$initViewModel$1$1", f = "MeProfileFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0421a extends SuspendLambda implements Function2<UserBean, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51721a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51722b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ MeProfileFragment f51723c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0421a(MeProfileFragment meProfileFragment, Continuation<? super C0421a> continuation) {
                super(2, continuation);
                this.f51723c = meProfileFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0421a c0421a = new C0421a(this.f51723c, continuation);
                c0421a.f51722b = obj;
                return c0421a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.h UserBean userBean, @m8.h Continuation<? super Unit> continuation) {
                return ((C0421a) create(userBean, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f51721a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f51723c.e0().C().postValue((UserBean) this.f51722b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51719a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.t<UserBean> A = MeProfileFragment.this.d0().A();
                C0421a c0421a = new C0421a(MeProfileFragment.this, null);
                this.f51719a = 1;
                if (kotlinx.coroutines.flow.k.A(A, c0421a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
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
            MeProfileFragment.this.e0().E(Screen.Profile.Action.PersonalSettings, null);
            MeProfileFragment.this.c0().navigate(R.id.toEditProfile);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MeProfileFragment f51726a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(MeProfileFragment meProfileFragment) {
                super(0);
                this.f51726a = meProfileFragment;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f51726a.q1();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }

        c() {
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
            Context requireContext = MeProfileFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            new com.qennnsad.aknkaksd.presentation.ui.main.me.edit.d(requireContext, new a(MeProfileFragment.this), new b(MeProfileFragment.this)).show();
            MeProfileFragment.this.e0().E(Screen.Profile.Action.AvatarChange, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MeProfileFragment f51727a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(MeProfileFragment meProfileFragment) {
                super(0);
                this.f51727a = meProfileFragment;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction("android.intent.action.GET_CONTENT");
                intent.addCategory("android.intent.category.OPENABLE");
                this.f51727a.f51710q.launch(Intent.createChooser(intent, this.f51727a.getString(R.string.photo_select)));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {
        d() {
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
            FragmentActivity requireActivity = MeProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            FanClubInfoBean value = MeProfileFragment.this.e0().x().getValue();
            h1.e(requireActivity, String.valueOf(value != null ? Long.valueOf(value.getFanOf()) : null), null, null, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {
        e() {
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
            FragmentActivity requireActivity = MeProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.h0(requireActivity, MeProfileFragment.this.e0().B(), null, 2, null);
            MeProfileFragment.this.e0().E(Screen.Profile.Action.OpenVip, "成为贵族");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "", "a", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function2<String, UrlTarget, Unit> {
        f() {
            super(2);
        }

        public final void a(@m8.g String url, @m8.g UrlTarget target) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(target, "target");
            FragmentActivity requireActivity = MeProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.z(requireActivity, url, target, false, false, 12, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function1<Unit, Unit> {
        g() {
            super(1);
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            MeProfileFragment.this.e0().F();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class h extends FunctionReferenceImpl implements Function1<com.qennnsad.aknkaksd.presentation.module.main.me.i, Unit> {
        h(Object obj) {
            super(1, obj, MeProfileFragment.class, "onMenuClick", "onMenuClick(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeMenuItem;)V", 0);
        }

        public final void a(@m8.g com.qennnsad.aknkaksd.presentation.module.main.me.i p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((MeProfileFragment) this.receiver).e1(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.qennnsad.aknkaksd.presentation.module.main.me.i iVar) {
            a(iVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class i extends FunctionReferenceImpl implements Function1<com.qennnsad.aknkaksd.presentation.module.main.me.i, Unit> {
        i(Object obj) {
            super(1, obj, MeProfileFragment.class, "onMenuLongClick", "onMenuLongClick(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeMenuItem;)V", 0);
        }

        public final void a(@m8.g com.qennnsad.aknkaksd.presentation.module.main.me.i p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((MeProfileFragment) this.receiver).f1(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.qennnsad.aknkaksd.presentation.module.main.me.i iVar) {
            a(iVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function0<Unit> {
        j() {
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
            MeProfileFragment.this.c1(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function0<Unit> {
        k() {
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
            MeProfileFragment.this.c1(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
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
            MeProfileFragment.this.c1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class m extends Lambda implements Function0<Unit> {
        m() {
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
            MeProfileFragment.this.c1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class n extends Lambda implements Function0<Unit> {
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
            MeProfileFragment.this.e0().E(Screen.Profile.Action.PersonalSettings, null);
            MeProfileFragment.this.c0().navigate(R.id.toEditProfile);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class o extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserBean f51738b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(UserBean userBean) {
            super(0);
            this.f51738b = userBean;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            MeProfileFragment meProfileFragment = MeProfileFragment.this;
            MeProfileFragment.k1(meProfileFragment, com.qennnsad.aknkaksd.util.m.f54849s + "?lob=" + this.f51738b.getLob_no(), false, false, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
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
            UserBean H = MeProfileFragment.this.e0().H();
            FragmentActivity requireActivity = MeProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.z(requireActivity, com.qennnsad.aknkaksd.util.m.f54845o + H.getId() + "&ver=1.13.0&lob=" + H.getLob_no(), UrlTarget.Browser, false, false, 12, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class q extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<String> f51741b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(List<String> list) {
            super(0);
            this.f51741b = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ActivityResultLauncher activityResultLauncher = MeProfileFragment.this.f51707n;
            Object[] array = this.f51741b.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            activityResultLauncher.launch(array);
        }
    }

    /* compiled from: MeProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class r extends Lambda implements Function0<Unit> {
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
            MeProfileFragment.this.a1();
        }
    }

    /* compiled from: MeProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class s extends Lambda implements Function1<List<? extends String>, Unit> {
        s() {
            super(1);
        }

        public final void a(@m8.g List<String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (MeProfileFragment.this.isDetached()) {
                return;
            }
            FragmentActivity requireActivity = MeProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            p5.e.s(requireActivity, it, MeProfileFragment.this.f51708o);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: MeProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class t extends Lambda implements Function1<List<? extends String>, Unit> {
        t() {
            super(1);
        }

        public final void a(@m8.g List<String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            MeProfileFragment.this.g1(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    public MeProfileFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new MeProfileFragment$special$$inlined$viewModels$default$2(new MeProfileFragment$special$$inlined$viewModels$default$1(this)));
        this.f51704k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MeProfileViewModel.class), new MeProfileFragment$special$$inlined$viewModels$default$3(lazy), new MeProfileFragment$special$$inlined$viewModels$default$4(null, lazy), new MeProfileFragment$special$$inlined$viewModels$default$5(this, lazy));
        this.f51707n = p5.h.d(this, new r(), new s(), new t());
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.n
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MeProfileFragment.i1(MeProfileFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…t()\n    ) { takePhoto() }");
        this.f51708o = registerForActivityResult;
        ActivityResultLauncher<Uri> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.TakePicture(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.o
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MeProfileFragment.b1(MeProfileFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…ropActivity(photoURI!!) }");
        this.f51709p = registerForActivityResult2;
        ActivityResultLauncher<Intent> registerForActivityResult3 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.m
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MeProfileFragment.h1(MeProfileFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult3, "registerForActivityResul…        }\n        }\n    }");
        this.f51710q = registerForActivityResult3;
        ActivityResultLauncher<Intent> registerForActivityResult4 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.l
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MeProfileFragment.p1(MeProfileFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult4, "registerForActivityResul…ieve_cropped_image)\n    }");
        this.f51711r = registerForActivityResult4;
    }

    private final void T0() {
        LifecycleOwnerKt.getLifecycleScope(this).launchWhenCreated(new a(null));
        e0().C().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.q
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MeProfileFragment.V0(MeProfileFragment.this, (UserBean) obj);
            }
        });
        e0().A().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.s
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MeProfileFragment.W0(MeProfileFragment.this, (List) obj);
            }
        });
        e0().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.p
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MeProfileFragment.X0(MeProfileFragment.this, (FanClubInfoBean) obj);
            }
        });
        e0().z().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.r
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MeProfileFragment.U0(MeProfileFragment.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(MeProfileFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SwipeRefreshLayout swipeRefreshLayout = ((u0) this$0.m0()).f63177g;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(MeProfileFragment this$0, UserBean userBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.r1(userBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(MeProfileFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        w wVar = this$0.f51705l;
        if (wVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("menuAdapter");
            wVar = null;
        }
        wVar.submitList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(MeProfileFragment this$0, FanClubInfoBean fanClubInfoBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = ((u0) this$0.m0()).f63175e.f63087j;
        Intrinsics.checkNotNullExpressionValue(textView, "");
        textView.setVisibility(fanClubInfoBean != null ? 0 : 8);
        textView.setText(fanClubInfoBean != null ? fanClubInfoBean.getNickname() : null);
        textView.setBackgroundResource(s1.h(fanClubInfoBean != null ? fanClubInfoBean.getLevel() : -1));
    }

    private final void Y0() {
        u0 u0Var = (u0) m0();
        SwipeRefreshLayout swipeRefreshLayout = u0Var.f63177g;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "swipeRefreshLayout");
        s1.J(swipeRefreshLayout, new g());
        RecyclerView recyclerView = u0Var.f63173c;
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        w wVar = new w(new h(this), new i(this));
        this.f51705l = wVar;
        recyclerView.setAdapter(wVar);
        TextView textView = u0Var.f63175e.f63093p;
        SpannableString spannableString = new SpannableString("神秘人模式已开启");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFCC00")), spannableString.length() - 3, spannableString.length(), 33);
        textView.setText(spannableString);
        TextView textView2 = u0Var.f63174d;
        Object[] objArr = new Object[1];
        objArr[0] = x0.f(getActivity(), Boolean.valueOf(b0().i() == DnsResolver.ForcedServerType.TEST));
        textView2.setText(getString(R.string.setting_version, objArr));
        u0Var.f63175e.f63092o.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MeProfileFragment.Z0(MeProfileFragment.this, view);
            }
        });
        TextView textView3 = u0Var.f63175e.f63090m;
        Intrinsics.checkNotNullExpressionValue(textView3, "header.tvFollows");
        s1.U(textView3, 0L, new j(), 1, null);
        TextView textView4 = u0Var.f63175e.f63091n;
        Intrinsics.checkNotNullExpressionValue(textView4, "header.tvFollowsHint");
        s1.U(textView4, 0L, new k(), 1, null);
        TextView textView5 = u0Var.f63175e.f63088k;
        Intrinsics.checkNotNullExpressionValue(textView5, "header.tvFollowees");
        s1.U(textView5, 0L, new l(), 1, null);
        TextView textView6 = u0Var.f63175e.f63089l;
        Intrinsics.checkNotNullExpressionValue(textView6, "header.tvFolloweesHint");
        s1.U(textView6, 0L, new m(), 1, null);
        ImageView imageView = u0Var.f63175e.f63080c;
        Intrinsics.checkNotNullExpressionValue(imageView, "header.meEdit");
        s1.U(imageView, 0L, new n(), 1, null);
        ImageView imageView2 = u0Var.f63175e.f63081d;
        Intrinsics.checkNotNullExpressionValue(imageView2, "header.meLevel");
        s1.U(imageView2, 0L, new b(), 1, null);
        ImageView imageView3 = u0Var.f63175e.f63083f;
        Intrinsics.checkNotNullExpressionValue(imageView3, "header.myMePhoto");
        s1.U(imageView3, 0L, new c(), 1, null);
        TextView textView7 = u0Var.f63175e.f63087j;
        Intrinsics.checkNotNullExpressionValue(textView7, "header.tvFanClubLabel");
        s1.U(textView7, 0L, new d(), 1, null);
        ImageView ivOpenPeerage = u0Var.f63176f;
        Intrinsics.checkNotNullExpressionValue(ivOpenPeerage, "ivOpenPeerage");
        s1.U(ivOpenPeerage, 0L, new e(), 1, null);
        u0Var.f63172b.c(b0().b().getMeProfile(), e0().B(), Z(), new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(MeProfileFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        h1.e(requireActivity, this$0.e0().H().getId(), null, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a1() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        Uri o9 = com.qennnsad.aknkaksd.util.l.o(requireActivity);
        this.f51706m = o9;
        if (o9 != null) {
            this.f51709p.launch(o9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(MeProfileFragment this$0, Boolean it) {
        Uri uri;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (!it.booleanValue() || (uri = this$0.f51706m) == null) {
            return;
        }
        Intrinsics.checkNotNull(uri);
        this$0.o1(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c1(boolean z9) {
        c0().navigate(R.id.toFollowers, BundleKt.bundleOf(TuplesKt.to("user_id", e0().H().getId()), TuplesKt.to(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a, Boolean.valueOf(z9))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e1(com.qennnsad.aknkaksd.presentation.module.main.me.i iVar) {
        HostBean host;
        UserBean H = e0().H();
        if (Intrinsics.areEqual(iVar, com.qennnsad.aknkaksd.presentation.module.main.me.b.f51779f)) {
            ContributorsActivity.a aVar = ContributorsActivity.f51292d;
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            aVar.a(requireActivity, H.getId());
        } else if (iVar instanceof g0) {
            FragmentActivity requireActivity2 = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.L(requireActivity2, b0(), new o(H));
        } else if (iVar instanceof f0) {
            FragmentActivity requireActivity3 = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity3, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.o0(requireActivity3, b0());
            e0().E(Screen.Profile.Action.Topup, getString(R.string.me_diamonds));
        } else if (iVar instanceof com.qennnsad.aknkaksd.presentation.module.main.me.d) {
            GuestLinkPhoneNumberActivity.a aVar2 = GuestLinkPhoneNumberActivity.f50992k;
            FragmentActivity requireActivity4 = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity4, "requireActivity()");
            aVar2.a(requireActivity4);
        } else {
            String str = null;
            if (iVar instanceof com.qennnsad.aknkaksd.presentation.module.main.me.c) {
                StringBuilder sb = new StringBuilder();
                ConfigBean e4 = b0().e();
                if (e4 != null && (host = e4.getHost()) != null) {
                    str = host.getWeb();
                }
                sb.append(str);
                sb.append("/home/family/index?ver=1.13.0&lob=");
                sb.append(H.getLob_no());
                k1(this, sb.toString(), false, false, 6, null);
                return;
            }
            boolean z9 = true;
            if (iVar instanceof c0) {
                c0 c0Var = (c0) iVar;
                String m9 = e0().B().m(c0Var.o(), 1);
                if (m9 != null) {
                    FragmentActivity requireActivity5 = requireActivity();
                    Intrinsics.checkNotNullExpressionValue(requireActivity5, "requireActivity()");
                    com.qennnsad.aknkaksd.util.l.y(requireActivity5, m9, c0Var.m(), c0Var.j(), c0Var.l());
                    m1(c0Var.n());
                }
            } else if (iVar instanceof com.qennnsad.aknkaksd.presentation.module.main.me.a) {
                k1(this, com.qennnsad.aknkaksd.util.m.f54843m + "?uid=" + H.getId() + "&ver=1.13.0&lob=" + H.getLob_no(), false, false, 6, null);
            } else if (iVar instanceof b0) {
                k1(this, com.qennnsad.aknkaksd.util.m.f54844n + "?uid=" + H.getId() + "&ver=1.13.0&lob=" + H.getLob_no(), false, false, 6, null);
            } else if (iVar instanceof d0) {
                k1(this, com.qennnsad.aknkaksd.util.m.f54848r + "?ver=1.13.0&lob=" + H.getLob_no(), false, false, 6, null);
            } else if (iVar instanceof com.qennnsad.aknkaksd.presentation.module.main.me.e) {
                String value = e0().y().getValue();
                if (value != null && value.length() != 0) {
                    z9 = false;
                }
                if (z9) {
                    com.qennnsad.aknkaksd.util.toast.a.n("连接客服失败..请稍后再试", false, 2, null);
                    e0().G();
                    return;
                }
                k1(this, e0().y().getValue() + "&ver=1.13.0", false, false, 6, null);
            } else if (iVar instanceof e0) {
                c0().navigate(R.id.toSettings);
            } else if (iVar instanceof com.qennnsad.aknkaksd.presentation.module.main.me.h) {
                k1(this, com.qennnsad.aknkaksd.util.m.f54851u + "?uid=" + H.getId() + "&ver=1.13.0&lob=" + H.getLob_no(), false, false, 6, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1(com.qennnsad.aknkaksd.presentation.module.main.me.i iVar) {
        if (iVar instanceof f0) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.L(requireActivity, b0(), new p());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g1(List<String> list) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        p5.e.p(requireActivity, list, new q(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(MeProfileFragment this$0, ActivityResult result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getResultCode() != -1 || result.getData() == null) {
            return;
        }
        Intent data = result.getData();
        Uri data2 = data != null ? data.getData() : null;
        if (data2 != null) {
            this$0.o1(data2);
        } else {
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.toast_cannot_retrieve_selected_image, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(MeProfileFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q1();
    }

    private final void j1(String str, boolean z9, boolean z10) {
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        aVar.c(requireContext, str, z9, z10);
    }

    static /* synthetic */ void k1(MeProfileFragment meProfileFragment, String str, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        if ((i4 & 4) != 0) {
            z10 = false;
        }
        meProfileFragment.j1(str, z9, z10);
    }

    private final void m1(String str) {
        String str2;
        switch (str.hashCode()) {
            case -1780753251:
                if (str.equals("修改手机号")) {
                    e0().E(Screen.Profile.Action.ChangePhone, str);
                    return;
                }
                return;
            case 625018736:
                if (str.equals("会员签到")) {
                    e0().E(Screen.Profile.Action.DailyCoins, str);
                    return;
                }
                return;
            case 972050016:
                str2 = "等级介绍";
                break;
            case 1008169857:
                str2 = "收藏回家地址";
                break;
            case 1596745070:
                str2 = "纪定收款方式";
                break;
            case 2142610336:
                str2 = "看广告领金币";
                break;
            default:
                return;
        }
        str.equals(str2);
    }

    private final void o1(Uri uri) {
        ActivityResultLauncher<Intent> activityResultLauncher = this.f51711r;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        activityResultLauncher.launch(com.qennnsad.aknkaksd.util.l.q(requireActivity, uri));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p1(MeProfileFragment this$0, ActivityResult result) {
        Unit unit;
        String path;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        Intent data = result.getData();
        if (data != null) {
            Uri e4 = com.yalantis.ucrop.d.e(data);
            if (e4 != null && (path = e4.getPath()) != null) {
                Intrinsics.checkNotNullExpressionValue(path, "UCrop.getOutput(it)?.path ?: return@let");
                this$0.e0().I(path);
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.toast_cannot_retrieve_cropped_image, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        if (com.qennnsad.aknkaksd.util.l.m(requireContext, "android.permission.CAMERA")) {
            a1();
        } else {
            this.f51707n.launch(new String[]{"android.permission.CAMERA"});
        }
    }

    private final void r1(UserBean userBean) {
        if (userBean == null) {
            return;
        }
        ImageView imageView = ((u0) m0()).f63176f;
        Intrinsics.checkNotNullExpressionValue(imageView, "requireBinding().ivOpenPeerage");
        imageView.setVisibility(userBean.is_join_peerage() ? 0 : 8);
        s3 s3Var = ((u0) m0()).f63175e;
        com.qennnsad.aknkaksd.util.img.e.g(s3Var.f63083f, e0().B().j(userBean.getAvatar()), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
        s3Var.f63092o.setText(getString(R.string.userinfo_dialog_id, userBean.getId()));
        s3Var.f63094q.setText(userBean.getNickname());
        ImageView tvSex = s3Var.f63095r;
        Intrinsics.checkNotNullExpressionValue(tvSex, "tvSex");
        s1.w(tvSex, Integer.valueOf(userBean.getSex()));
        ImageView meLevel = s3Var.f63081d;
        Intrinsics.checkNotNullExpressionValue(meLevel, "meLevel");
        s1.A(meLevel, userBean.getEmceelevel(), false);
        ImageView ivPeerage = s3Var.f63079b;
        Intrinsics.checkNotNullExpressionValue(ivPeerage, "ivPeerage");
        s1.B(ivPeerage, Integer.valueOf(userBean.getPeerage_id()));
        boolean z9 = userBean.isMystery() == 1;
        TextView tvMysteryEnabledHint = s3Var.f63093p;
        Intrinsics.checkNotNullExpressionValue(tvMysteryEnabledHint, "tvMysteryEnabledHint");
        tvMysteryEnabledHint.setVisibility(z9 ? 0 : 8);
        TextView tvFamilyLevel = s3Var.f63086i;
        Intrinsics.checkNotNullExpressionValue(tvFamilyLevel, "tvFamilyLevel");
        s1.v(tvFamilyLevel, userBean.getFamilyLevel());
        TextView tvFamilyLevel2 = s3Var.f63086i;
        Intrinsics.checkNotNullExpressionValue(tvFamilyLevel2, "tvFamilyLevel");
        TextView tvFamilyLevel3 = s3Var.f63086i;
        Intrinsics.checkNotNullExpressionValue(tvFamilyLevel3, "tvFamilyLevel");
        tvFamilyLevel2.setVisibility((tvFamilyLevel3.getVisibility() == 0) && !z9 ? 0 : 8);
        TextView tvFamilyHint = s3Var.f63085h;
        Intrinsics.checkNotNullExpressionValue(tvFamilyHint, "tvFamilyHint");
        TextView tvFamilyLevel4 = s3Var.f63086i;
        Intrinsics.checkNotNullExpressionValue(tvFamilyLevel4, "tvFamilyLevel");
        tvFamilyHint.setVisibility(tvFamilyLevel4.getVisibility() == 0 ? 0 : 8);
        s3Var.f63084g.setText(getString(R.string.userinfo_dialog_sent, Integer.valueOf(userBean.getSpendcoin())));
        s3Var.f63090m.setText(userBean.getFollowees_cnt());
        s3Var.f63088k.setText(userBean.getFollowers_cnt());
        s3Var.f63082e.setText(((userBean.getIntro().length() == 0) || Intrinsics.areEqual(userBean.getIntro(), "null")) ? getString(R.string.me_sign_null) : getString(R.string.me_sign_prefix, userBean.getIntro()));
    }

    @m8.h
    public final Uri R0() {
        return this.f51706m;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: S0 */
    public MeProfileViewModel e0() {
        return (MeProfileViewModel) this.f51704k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: d1 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.main.me.j e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: l1 */
    public u0 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        u0 d4 = u0.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void n1(@m8.h Uri uri) {
        this.f51706m = uri;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Y0();
        T0();
    }
}
