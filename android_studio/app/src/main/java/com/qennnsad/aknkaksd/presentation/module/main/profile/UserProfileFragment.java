package com.qennnsad.aknkaksd.presentation.module.main.profile;

import android.app.Dialog;
import android.graphics.Color;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.im.freechat.shared.entities.chat.Status;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.TextAdBean;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsActivity;
import com.qennnsad.aknkaksd.presentation.module.main.profile.e;
import com.qennnsad.aknkaksd.presentation.ui.base.o;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.view.ScrollingText;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.s1;
import e5.z1;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* compiled from: UserProfileFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b.\u0010/J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\u0012\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0018\u0010\u000e\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0002J\u0012\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0005H\u0002J\u001a\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010 \u001a\u00020\u0005H\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0003H\u0014R\u001b\u0010(\u001a\u00020#8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010,¨\u00060"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/z1;", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/o;", "", "N0", "I0", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "user", "O", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "list", "S0", "Lcom/im/freechat/shared/entities/chat/Status;", "friendStatus", "V0", "R0", "Landroid/app/Dialog;", "T0", "U0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Q0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "onResume", "e", "P0", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;", "k", "Lkotlin/Lazy;", "H0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;", "viewModel", "", "l", "G0", "()I", "userId", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class UserProfileFragment extends com.qennnsad.aknkaksd.presentation.module.main.profile.a<z1, com.qennnsad.aknkaksd.presentation.module.main.profile.e> implements com.qennnsad.aknkaksd.presentation.ui.base.o {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51835k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final Lazy f51836l;

    /* compiled from: UserProfileFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            iArr[Status.REQUEST_RECEIVED.ordinal()] = 1;
            iArr[Status.REQUEST_SENT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
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
            if (Intrinsics.areEqual(UserProfileFragment.this.e0().E().getValue(), Boolean.TRUE)) {
                UserProfileFragment.this.e0().K();
            } else {
                UserProfileFragment.this.e0().w();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {
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
            UserInfo value = UserProfileFragment.this.e0().B().getValue();
            boolean z9 = false;
            if (value != null && value.getIsHit() == 0) {
                z9 = true;
            }
            if (z9) {
                UserProfileFragment.this.e0().v();
            } else {
                UserProfileFragment.this.e0().J();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
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
            UserProfileFragment.this.U0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
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
            if (UserProfileFragment.this.d0().E().getValue().booleanValue()) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.error_im_not_available, false, 2, null);
            } else {
                UserProfileFragment.this.e0().I();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {

        /* compiled from: UserProfileFragment.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Status.values().length];
                iArr[Status.REQUEST_RECEIVED.ordinal()] = 1;
                iArr[Status.REQUEST_SENT.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        f() {
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
            if (UserProfileFragment.this.d0().E().getValue().booleanValue()) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.error_im_not_available, false, 2, null);
                return;
            }
            FriendStatus value = UserProfileFragment.this.e0().y().getValue();
            Status status = value != null ? value.getStatus() : null;
            int i4 = status == null ? -1 : a.$EnumSwitchMapping$0[status.ordinal()];
            if (i4 == 1) {
                UserProfileFragment.this.T0();
            } else if (i4 != 2) {
                UserProfileFragment.this.R0();
            } else {
                com.qennnsad.aknkaksd.util.toast.a.n("您已经发送了好友请求！", false, 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function0<Unit> {
        g() {
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
            ContributorsActivity.a aVar = ContributorsActivity.f51292d;
            FragmentActivity requireActivity = UserProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            aVar.a(requireActivity, String.valueOf(UserProfileFragment.this.G0()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function0<Unit> {
        h() {
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
            if (UserProfileFragment.this.requireActivity() instanceof UserProfileActivity) {
                UserProfileFragment.this.requireActivity().finish();
            } else {
                FragmentKt.findNavController(UserProfileFragment.this).navigateUp();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextAdBean f51852b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(TextAdBean textAdBean) {
            super(0);
            this.f51852b = textAdBean;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FragmentActivity requireActivity = UserProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            String targetUrl = this.f51852b.getTargetUrl();
            if (targetUrl == null) {
                return;
            }
            com.qennnsad.aknkaksd.util.l.z(requireActivity, targetUrl, this.f51852b.getTarget(), false, false, 12, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
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
            UserProfileFragment.this.e0().H(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function1<Boolean, Unit> {
        k() {
            super(1);
        }

        public final void a(boolean z9) {
            UserProfileFragment.this.e0().G(z9);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class l extends Lambda implements Function0<Integer> {
        l() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
            r0 = kotlin.text.StringsKt__StringNumberConversionsKt.toIntOrNull(r0);
         */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Integer invoke() {
            /*
                r2 = this;
                com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileFragment r0 = com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileFragment.this
                android.os.Bundle r0 = r0.requireArguments()
                java.lang.String r1 = "user_id"
                java.lang.String r0 = r0.getString(r1)
                if (r0 == 0) goto L1d
                java.lang.Integer r0 = kotlin.text.StringsKt.toIntOrNull(r0)
                if (r0 == 0) goto L1d
                int r0 = r0.intValue()
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                return r0
            L1d:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.String r1 = "Wrong userId value!"
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileFragment.l.invoke():java.lang.Integer");
        }
    }

    public UserProfileFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new UserProfileFragment$special$$inlined$viewModels$default$2(new UserProfileFragment$special$$inlined$viewModels$default$1(this)));
        this.f51835k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(UserProfileViewModel.class), new UserProfileFragment$special$$inlined$viewModels$default$3(lazy), new UserProfileFragment$special$$inlined$viewModels$default$4(null, lazy), new UserProfileFragment$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new l());
        this.f51836l = lazy2;
    }

    private final void I0() {
        e0().D(G0());
        e0().B().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.profile.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.J0(UserProfileFragment.this, (UserInfo) obj);
            }
        });
        e0().A().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.profile.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.K0(UserProfileFragment.this, (List) obj);
            }
        });
        e0().E().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.profile.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.L0(UserProfileFragment.this, (Boolean) obj);
            }
        });
        e0().y().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.profile.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.M0(UserProfileFragment.this, (FriendStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(UserProfileFragment this$0, UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.O(userInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(UserProfileFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.S0(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(UserProfileFragment this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (bool == null) {
            return;
        }
        bool.booleanValue();
        TextView textView = ((z1) this$0.m0()).f63415x;
        textView.setText(bool.booleanValue() ? R.string.un_star : R.string.star);
        textView.setActivated(!bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(UserProfileFragment this$0, FriendStatus friendStatus) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.V0(friendStatus != null ? friendStatus.getStatus() : null);
    }

    private final void N0() {
        ScrollingText scrollingText;
        int i4 = 0;
        q5.b.i(false, requireActivity());
        z1 z1Var = (z1) m0();
        z1Var.A.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.profile.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserProfileFragment.O0(UserProfileFragment.this, view);
            }
        });
        TextView tvFollowUser = z1Var.f63415x;
        Intrinsics.checkNotNullExpressionValue(tvFollowUser, "tvFollowUser");
        s1.U(tvFollowUser, 0L, new b(), 1, null);
        TextView tvBlacklistUser = z1Var.f63406o;
        Intrinsics.checkNotNullExpressionValue(tvBlacklistUser, "tvBlacklistUser");
        s1.U(tvBlacklistUser, 0L, new c(), 1, null);
        TextView tvOpenStream = z1Var.F;
        Intrinsics.checkNotNullExpressionValue(tvOpenStream, "tvOpenStream");
        s1.U(tvOpenStream, 0L, new d(), 1, null);
        TextView tvChat = z1Var.f63407p;
        Intrinsics.checkNotNullExpressionValue(tvChat, "tvChat");
        s1.U(tvChat, 0L, new e(), 1, null);
        TextView tvAddFriend = z1Var.f63405n;
        Intrinsics.checkNotNullExpressionValue(tvAddFriend, "tvAddFriend");
        s1.U(tvAddFriend, 0L, new f(), 1, null);
        ConstraintLayout clContributors = z1Var.f63394c;
        Intrinsics.checkNotNullExpressionValue(clContributors, "clContributors");
        s1.U(clContributors, 0L, new g(), 1, null);
        ImageButton ibBack = z1Var.f63395d;
        Intrinsics.checkNotNullExpressionValue(ibBack, "ibBack");
        s1.U(ibBack, 0L, new h(), 1, null);
        TextAdBean otherUserProfile = b0().b().getOtherUserProfile();
        if (otherUserProfile != null) {
            scrollingText = z1Var.f63403l;
            if (otherUserProfile.getContent() == null) {
                Intrinsics.checkNotNullExpressionValue(scrollingText, "");
                scrollingText.setVisibility(8);
            } else {
                Intrinsics.checkNotNullExpressionValue(scrollingText, "");
                scrollingText.setVisibility(0);
                String content = otherUserProfile.getContent();
                if (otherUserProfile.getTextColor() != null) {
                    i4 = Color.parseColor('#' + otherUserProfile.getTextColor());
                }
                scrollingText.e(content, i4);
                s1.U(scrollingText, 0L, new i(otherUserProfile), 1, null);
            }
        } else {
            scrollingText = null;
        }
        if (scrollingText == null) {
            ScrollingText scrollText = z1Var.f63403l;
            Intrinsics.checkNotNullExpressionValue(scrollText, "scrollText");
            scrollText.setVisibility(8);
        }
    }

    private final void O(UserInfo userInfo) {
        Integer intOrNull;
        if (userInfo == null) {
            return;
        }
        if (userInfo.isMystery()) {
            String id = userInfo.getId();
            UserBean value = e0().x().getValue();
            if (!Intrinsics.areEqual(id, value != null ? value.getId() : null)) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.msg_mystery_profile_hidden, false, 2, null);
                return;
            }
        }
        z1 z1Var = (z1) m0();
        ImageView imageView = z1Var.f63397f;
        com.qennnsad.aknkaksd.data.repository.m z9 = e0().z();
        String snap = userInfo.getSnap();
        Intrinsics.checkNotNullExpressionValue(snap, "user.snap");
        com.qennnsad.aknkaksd.util.img.e.f(imageView, z9.j(snap), false, R.drawable.ic_default_head, R.drawable.ic_default_head, 2, null);
        z1Var.E.setText(userInfo.getNickname());
        z1Var.A.setText(getString(R.string.usercard_id, userInfo.getId()));
        TextView tvSex = z1Var.I;
        Intrinsics.checkNotNullExpressionValue(tvSex, "tvSex");
        int sex = userInfo.getSex();
        String age = userInfo.getAge();
        Intrinsics.checkNotNullExpressionValue(age, "user.age");
        s1.x(tvSex, sex, age);
        ImageView ivLevel = z1Var.f63401j;
        Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
        s1.A(ivLevel, userInfo.getLevel(), userInfo.isMystery());
        ImageView ivPeerage = z1Var.f63402k;
        Intrinsics.checkNotNullExpressionValue(ivPeerage, "ivPeerage");
        s1.B(ivPeerage, Integer.valueOf(userInfo.getPeerage_id()));
        TextView tvFamilyLevel = z1Var.f63414w;
        Intrinsics.checkNotNullExpressionValue(tvFamilyLevel, "tvFamilyLevel");
        s1.v(tvFamilyLevel, userInfo.getFamilyLevel());
        z1Var.f63413v.setVisibility(z1Var.f63414w.getVisibility());
        z1Var.f63410s.setText(getString(R.string.userinfo_dialog_sent, Integer.valueOf(userInfo.getTotalContribution())));
        z1Var.f63416y.setText(getString(R.string.my_info_followee_count, userInfo.getFollowersCount()));
        z1Var.f63417z.setText(getString(R.string.my_info_follower_count, userInfo.getFolloweesCount()));
        z1Var.f63406o.setText(userInfo.getIsHit() == 1 ? R.string.pull_black_compelet : R.string.pull_black);
        TextView tvOpenStream = z1Var.F;
        Intrinsics.checkNotNullExpressionValue(tvOpenStream, "tvOpenStream");
        tvOpenStream.setVisibility(Intrinsics.areEqual(userInfo.getBroadcasting(), y.b.f83920h) ? 0 : 8);
        TextView textView = z1Var.H;
        String professional = userInfo.getProfessional();
        boolean z10 = professional.length() == 0;
        String str = com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a;
        if (z10) {
            professional = com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a;
        }
        textView.setText(professional);
        TextView textView2 = z1Var.f63408q;
        String city = userInfo.getCity();
        if (city.length() == 0) {
            city = com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a;
        }
        textView2.setText(city);
        TextView textView3 = z1Var.C;
        String intro = userInfo.getIntro();
        if (intro.length() == 0) {
            intro = com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a;
        }
        textView3.setText(intro);
        TextView textView4 = z1Var.f63411t;
        String emotion = userInfo.getEmotion();
        Intrinsics.checkNotNullExpressionValue(emotion, "user.emotion");
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(emotion);
        if (intOrNull != null && intOrNull.intValue() == 0) {
            str = getString(R.string.popup_feel_secret);
        } else if (intOrNull != null && intOrNull.intValue() == 1) {
            str = getString(R.string.popup_feel_lonely);
        } else if (intOrNull != null && intOrNull.intValue() == 2) {
            str = getString(R.string.popup_feel_love);
        } else if (intOrNull != null && intOrNull.intValue() == 3) {
            str = getString(R.string.popup_feel_married);
        } else if (intOrNull != null && intOrNull.intValue() == 4) {
            str = getString(R.string.popup_feel_gay);
        }
        textView4.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(UserProfileFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        h1.e(requireActivity, this$0.e0().C(), null, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0() {
        com.qennnsad.aknkaksd.util.l.I(this, "发送好友请求", "请输入请求内容", (r17 & 4) != 0 ? "" : null, (r17 & 8) != 0 ? 1 : 0, (r17 & 16) != 0 ? new InputFilter[0] : null, (r17 & 32) != 0 ? null : null, new j());
    }

    private final void S0(List<RankItem> list) {
        List listOf;
        RankItem rankItem;
        String avatar;
        Object orNull;
        z1 z1Var = (z1) m0();
        ConstraintLayout clContributors = z1Var.f63394c;
        Intrinsics.checkNotNullExpressionValue(clContributors, "clContributors");
        clContributors.setVisibility((list == null || list.isEmpty()) ^ true ? 0 : 8);
        View cardDivider = z1Var.f63393b;
        Intrinsics.checkNotNullExpressionValue(cardDivider, "cardDivider");
        ConstraintLayout clContributors2 = z1Var.f63394c;
        Intrinsics.checkNotNullExpressionValue(clContributors2, "clContributors");
        cardDivider.setVisibility((clContributors2.getVisibility() == 0) ^ true ? 0 : 8);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ImageView[]{z1Var.f63398g, z1Var.f63399h, z1Var.f63400i});
        int i4 = 0;
        for (Object obj : listOf) {
            int i10 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ImageView imageView = (ImageView) obj;
            if (list != null) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(list, i4);
                rankItem = (RankItem) orNull;
            } else {
                rankItem = null;
            }
            Intrinsics.checkNotNullExpressionValue(imageView, "imageView");
            imageView.setVisibility(rankItem != null ? 0 : 8);
            com.qennnsad.aknkaksd.data.repository.m z9 = e0().z();
            if (rankItem != null && (avatar = rankItem.getAvatar()) != null) {
                com.qennnsad.aknkaksd.util.img.e.g(imageView, z9.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            }
            i4 = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Dialog T0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        FriendStatus value = e0().y().getValue();
        return com.qennnsad.aknkaksd.util.l.P(requireActivity, "好友请求", (value == null || (r1 = value.getReason()) == null) ? "" : "", getString(R.string.chat_request_accept), getString(R.string.chat_request_decline), new k(), null, 32, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U0() {
        UserInfo value = e0().B().getValue();
        if (value == null) {
            return;
        }
        DistrictType.a aVar = DistrictType.Companion;
        DistrictType broadcastingTab = value.getBroadcastingTab();
        String id = value.getId();
        Intrinsics.checkNotNullExpressionValue(id, "user.id");
        DistrictType a10 = aVar.a(broadcastingTab, id);
        PlayerActivity.a aVar2 = PlayerActivity.f53641e3;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        aVar2.b(requireActivity, b5.a.p(value), a10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
        if ((r3 != null ? r3.intValue() : 0) >= 50) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void V0(com.im.freechat.shared.entities.chat.Status r8) {
        /*
            r7 = this;
            androidx.viewbinding.ViewBinding r0 = r7.m0()
            e5.z1 r0 = (e5.z1) r0
            com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel r1 = r7.e0()
            androidx.lifecycle.LiveData r1 = r1.x()
            java.lang.Object r1 = r1.getValue()
            com.qennnsad.aknkaksd.data.bean.user.UserBean r1 = (com.qennnsad.aknkaksd.data.bean.user.UserBean) r1
            android.widget.TextView r2 = r0.f63407p
            java.lang.String r3 = "tvChat"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            boolean r3 = b5.a.h(r1)
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L57
            com.im.freechat.shared.entities.chat.Status r3 = com.im.freechat.shared.entities.chat.Status.FRIEND
            if (r8 == r3) goto L55
            if (r1 == 0) goto L31
            int r3 = r1.isAdmin()
            if (r3 != r4) goto L31
            r3 = 1
            goto L32
        L31:
            r3 = 0
        L32:
            if (r3 != 0) goto L55
            if (r1 == 0) goto L3e
            int r3 = r1.is_single_conversation()
            if (r3 != r4) goto L3e
            r3 = 1
            goto L3f
        L3e:
            r3 = 0
        L3f:
            if (r3 == 0) goto L57
            java.lang.String r3 = r1.getEmceelevel()
            java.lang.Integer r3 = kotlin.text.StringsKt.toIntOrNull(r3)
            if (r3 == 0) goto L50
            int r3 = r3.intValue()
            goto L51
        L50:
            r3 = 0
        L51:
            r6 = 50
            if (r3 < r6) goto L57
        L55:
            r3 = 1
            goto L58
        L57:
            r3 = 0
        L58:
            r6 = 8
            if (r3 == 0) goto L5e
            r3 = 0
            goto L60
        L5e:
            r3 = 8
        L60:
            r2.setVisibility(r3)
            android.widget.TextView r0 = r0.f63405n
            java.lang.String r2 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            boolean r1 = b5.a.h(r1)
            if (r1 == 0) goto L76
            com.im.freechat.shared.entities.chat.Status r1 = com.im.freechat.shared.entities.chat.Status.FRIEND
            if (r8 == r1) goto L76
            r1 = 1
            goto L77
        L76:
            r1 = 0
        L77:
            if (r1 == 0) goto L7a
            r6 = 0
        L7a:
            r0.setVisibility(r6)
            if (r8 != 0) goto L81
            r1 = -1
            goto L89
        L81:
            int[] r1 = com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileFragment.a.$EnumSwitchMapping$0
            int r2 = r8.ordinal()
            r1 = r1[r2]
        L89:
            if (r1 == r4) goto L96
            r2 = 2
            if (r1 == r2) goto L92
            r1 = 2131951793(0x7f1300b1, float:1.954001E38)
            goto L99
        L92:
            r1 = 2131952053(0x7f1301b5, float:1.9540538E38)
            goto L99
        L96:
            r1 = 2131952479(0x7f13035f, float:1.9541402E38)
        L99:
            r0.setText(r1)
            if (r8 == 0) goto La8
            com.im.freechat.shared.entities.chat.Status r1 = com.im.freechat.shared.entities.chat.Status.NONE
            if (r8 == r1) goto La8
            com.im.freechat.shared.entities.chat.Status r1 = com.im.freechat.shared.entities.chat.Status.REQUEST_RECEIVED
            if (r8 != r1) goto La7
            goto La8
        La7:
            r4 = 0
        La8:
            r0.setActivated(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileFragment.V0(com.im.freechat.shared.entities.chat.Status):void");
    }

    public final int G0() {
        return ((Number) this.f51836l.getValue()).intValue();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: H0 */
    public UserProfileViewModel e0() {
        return (UserProfileViewModel) this.f51835k.getValue();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.o
    public void P(boolean z9) {
        o.a.a(this, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: P0 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.main.profile.e e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (e4 instanceof e.a) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.presentation.ui.chat.im.a.f(requireActivity, ((e.a) e4).d(), null, null, null, null, 30, null);
        } else if (e4 instanceof e.b) {
            com.qennnsad.aknkaksd.util.toast.a.m(((e.b) e4).d(), false, 2, null);
            ((z1) m0()).f63395d.performClick();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: Q0 */
    public z1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        z1 d4 = z1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.o
    public void l(int i4) {
        o.a.b(this, i4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        e0().F(G0());
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        N0();
        I0();
    }
}
