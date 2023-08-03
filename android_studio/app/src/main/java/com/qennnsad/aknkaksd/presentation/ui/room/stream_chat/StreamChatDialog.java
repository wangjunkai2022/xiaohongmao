package com.qennnsad.aknkaksd.presentation.ui.room.stream_chat;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.DepositOption;
import com.qennnsad.aknkaksd.data.bean.StreamDeposit;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel;
import com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel;
import com.qennnsad.aknkaksd.util.s1;
import com.wang.avi.AVLoadingIndicatorView;
import e5.p0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: StreamChatDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 <2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001=B\u0007¢\u0006\u0004\b:\u0010;J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\tH\u0016J\u001a\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016J\u0006\u0010\u0019\u001a\u00020\u0004J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0003H\u0014R\u001b\u0010!\u001a\u00020\u001c8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u00101R\"\u00104\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006>"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;", "Lcom/qennnsad/aknkaksd/presentation/common/e;", "Le5/p0;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "", "s0", "Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "n0", "", k4.b.f84734a, "", "startTime", "C0", "getTheme", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "z0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "x0", "e", "y0", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;", "g", "Lkotlin/Lazy;", "r0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "h", "p0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "playerViewModel", "Lcom/qennnsad/aknkaksd/data/repository/m;", "j", "Lcom/qennnsad/aknkaksd/data/repository/m;", "q0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "B0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;", "k", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;", "adapter", "Lg5/a;", "localDataManager", "Lg5/a;", "o0", "()Lg5/a;", "A0", "(Lg5/a;)V", "<init>", "()V", "l", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class StreamChatDialog extends com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.c<p0, StreamChatViewModel.a> {
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final a f54204l = new a(null);
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f54205g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final Lazy f54206h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public g5.a f54207i;
    @u7.a

    /* renamed from: j  reason: collision with root package name */
    public m f54208j;

    /* renamed from: k  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.a f54209k;

    /* compiled from: StreamChatDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$a;", "", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final StreamChatDialog a() {
            return new StreamChatDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatDialog.kt */
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
            StreamChatDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p0 f54223b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StreamChatDialog.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Boolean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ StreamChatDialog f54224a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ p0 f54225b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(StreamChatDialog streamChatDialog, p0 p0Var) {
                super(1);
                this.f54224a = streamChatDialog;
                this.f54225b = p0Var;
            }

            public final void a(boolean z9) {
                if (z9) {
                    Integer value = this.f54224a.X().y().getValue();
                    if (value != null) {
                        p0 p0Var = this.f54225b;
                        StreamChatDialog streamChatDialog = this.f54224a;
                        if (value.intValue() != 0) {
                            Group groupDepositOptions = p0Var.f62885h;
                            Intrinsics.checkNotNullExpressionValue(groupDepositOptions, "groupDepositOptions");
                            if (!(groupDepositOptions.getVisibility() == 0)) {
                                streamChatDialog.p0().w0(value.intValue());
                            }
                        }
                    }
                    this.f54224a.dismiss();
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                a(bool.booleanValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(p0 p0Var) {
            super(0);
            this.f54223b = p0Var;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FragmentActivity requireActivity = StreamChatDialog.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.P(requireActivity, StreamChatDialog.this.getString(R.string.stream_chat_close_confirm_title), StreamChatDialog.this.getString(R.string.stream_chat_close_confirm_message), StreamChatDialog.this.getString(R.string.commit), StreamChatDialog.this.getString(R.string.cancel), new a(StreamChatDialog.this, this.f54223b), null, 32, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatDialog.kt */
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
            StreamDeposit streamDeposit;
            SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
            FragmentActivity requireActivity = StreamChatDialog.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            m q02 = StreamChatDialog.this.q0();
            ConfigBean e4 = StreamChatDialog.this.o0().e();
            String m9 = q02.m((e4 == null || (streamDeposit = e4.getStreamDeposit()) == null) ? null : streamDeposit.getHelpUri(), 0);
            if (m9 == null) {
                return;
            }
            SimpleWebViewActivity.a.d(aVar, requireActivity, m9, false, false, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p0 f54227a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ StreamChatDialog f54228b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(p0 p0Var, StreamChatDialog streamChatDialog) {
            super(0);
            this.f54227a = p0Var;
            this.f54228b = streamChatDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Group groupDepositOptions = this.f54227a.f62885h;
            Intrinsics.checkNotNullExpressionValue(groupDepositOptions, "groupDepositOptions");
            groupDepositOptions.setVisibility(8);
            StreamChatViewModel X = this.f54228b.X();
            UserInfo value = this.f54228b.p0().o0().getValue();
            String id = value != null ? value.getId() : null;
            if (id == null) {
                id = "";
            }
            X.E(id);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/DepositOption;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<DepositOption, Unit> {
        f() {
            super(1);
        }

        public final void a(@m8.g DepositOption it) {
            Intrinsics.checkNotNullParameter(it, "it");
            StreamChatDialog.this.X().C(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DepositOption depositOption) {
            a(depositOption);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function1<Boolean, Unit> {
        g() {
            super(1);
        }

        public final void a(boolean z9) {
            StreamChatDialog.this.dismiss();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    public StreamChatDialog() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new StreamChatDialog$special$$inlined$viewModels$default$2(new StreamChatDialog$special$$inlined$viewModels$default$1(this)));
        this.f54205g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(StreamChatViewModel.class), new StreamChatDialog$special$$inlined$viewModels$default$3(lazy), new StreamChatDialog$special$$inlined$viewModels$default$4(null, lazy), new StreamChatDialog$special$$inlined$viewModels$default$5(this, lazy));
        this.f54206h = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(PlayerViewModel.class), new StreamChatDialog$special$$inlined$activityViewModels$default$1(this), new StreamChatDialog$special$$inlined$activityViewModels$default$2(null, this), new StreamChatDialog$special$$inlined$activityViewModels$default$3(this));
    }

    private final void C0(int i4, long j4) {
        p0 p0Var = (p0) b0();
        Group groupDepositOptions = p0Var.f62885h;
        Intrinsics.checkNotNullExpressionValue(groupDepositOptions, "groupDepositOptions");
        groupDepositOptions.setVisibility(8);
        TextView tvNickname = p0Var.f62890m;
        Intrinsics.checkNotNullExpressionValue(tvNickname, "tvNickname");
        tvNickname.setVisibility(0);
        TextView tvOnlineIndicator = p0Var.f62891n;
        Intrinsics.checkNotNullExpressionValue(tvOnlineIndicator, "tvOnlineIndicator");
        tvOnlineIndicator.setVisibility(0);
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        ChatDetailsFragment chatDetailsFragment = new ChatDetailsFragment();
        chatDetailsFragment.setArguments(BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(i4)), TuplesKt.to(k4.b.f84740g, Long.valueOf(j4))));
        Unit unit = Unit.INSTANCE;
        beginTransaction.add(R.id.chat_container, chatDetailsFragment).commit();
    }

    private final void n0(Chat chat) {
        p0 p0Var = (p0) W();
        if (p0Var != null) {
            p0Var.f62890m.setText(chat.getTitle());
            UserModel opponent = chat.getOpponent();
            boolean z9 = opponent != null && opponent.getLastOnline() == Long.MAX_VALUE;
            p0Var.f62891n.setText(z9 ? R.string.stream_chat_online : R.string.stream_chat_offline);
            Drawable drawable = p0Var.f62891n.getCompoundDrawables()[0];
            if (drawable != null) {
                drawable.setTint(ContextCompat.getColor(requireContext(), z9 ? R.color.md_green_400 : R.color.md_grey_500));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlayerViewModel p0() {
        return (PlayerViewModel) this.f54206h.getValue();
    }

    private final void s0() {
        X().d().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                StreamChatDialog.t0(StreamChatDialog.this, (Boolean) obj);
            }
        });
        X().A().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                StreamChatDialog.u0(StreamChatDialog.this, (List) obj);
            }
        });
        X().B().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                StreamChatDialog.v0(StreamChatDialog.this, (DepositOption) obj);
            }
        });
        X().z().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                StreamChatDialog.w0(StreamChatDialog.this, (Chat) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(StreamChatDialog this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p0 p0Var = (p0) this$0.W();
        AVLoadingIndicatorView aVLoadingIndicatorView = p0Var != null ? p0Var.f62887j : null;
        if (aVLoadingIndicatorView == null) {
            return;
        }
        aVLoadingIndicatorView.setVisibility(Intrinsics.areEqual(bool, Boolean.TRUE) ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(StreamChatDialog this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.a aVar = this$0.f54209k;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            aVar = null;
        }
        aVar.submitList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(StreamChatDialog this$0, DepositOption depositOption) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p0 p0Var = (p0) this$0.W();
        Button button = p0Var != null ? p0Var.f62880c : null;
        if (button == null) {
            return;
        }
        button.setEnabled(depositOption != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(StreamChatDialog this$0, Chat chat) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (chat == null) {
            return;
        }
        this$0.n0(chat);
    }

    public final void A0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f54207i = aVar;
    }

    public final void B0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f54208j = mVar;
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.BottomWideDialogStyle;
    }

    @m8.g
    public final g5.a o0() {
        g5.a aVar = this.f54207i;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        x0();
        s0();
    }

    @m8.g
    public final m q0() {
        m mVar = this.f54208j;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e
    @m8.g
    /* renamed from: r0 */
    public StreamChatViewModel X() {
        return (StreamChatViewModel) this.f54205g.getValue();
    }

    public final void x0() {
        p0 p0Var = (p0) b0();
        Button btnHide = p0Var.f62879b;
        Intrinsics.checkNotNullExpressionValue(btnHide, "btnHide");
        s1.U(btnHide, 0L, new b(), 1, null);
        ImageView ivClose = p0Var.f62886i;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        s1.U(ivClose, 0L, new c(p0Var), 1, null);
        TextView tvHint = p0Var.f62889l;
        Intrinsics.checkNotNullExpressionValue(tvHint, "tvHint");
        s1.U(tvHint, 0L, new d(), 1, null);
        Button btnStartChat = p0Var.f62880c;
        Intrinsics.checkNotNullExpressionValue(btnStartChat, "btnStartChat");
        s1.U(btnStartChat, 0L, new e(p0Var, this), 1, null);
        this.f54209k = new com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.a(new f());
        p0Var.f62888k.setLayoutManager(new GridLayoutManager(requireContext(), 3));
        RecyclerView recyclerView = p0Var.f62888k;
        com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.a aVar = this.f54209k;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            aVar = null;
        }
        recyclerView.setAdapter(aVar);
        p0Var.f62888k.setItemAnimator(null);
        RecyclerView recyclerView2 = p0Var.f62888k;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        recyclerView2.addItemDecoration(new AbstractAnchorFragment.a(requireContext, R.dimen.deposit_options_grid_items_margin));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.e
    /* renamed from: y0 */
    public void onEvent(@m8.g StreamChatViewModel.a e4) {
        TextView textView;
        Intrinsics.checkNotNullParameter(e4, "e");
        if (e4 instanceof StreamChatViewModel.a.d) {
            StreamChatViewModel.a.d dVar = (StreamChatViewModel.a.d) e4;
            C0(dVar.e(), dVar.f());
            return;
        }
        boolean z9 = false;
        if (Intrinsics.areEqual(e4, StreamChatViewModel.a.b.f54239a)) {
            p0 p0Var = (p0) W();
            Group group = p0Var != null ? p0Var.f62885h : null;
            if (group == null) {
                return;
            }
            group.setVisibility(0);
        } else if (Intrinsics.areEqual(e4, StreamChatViewModel.a.C0452a.f54238a)) {
            p0 p0Var2 = (p0) W();
            if (p0Var2 != null && (textView = p0Var2.f62890m) != null) {
                if (textView.getVisibility() == 0) {
                    z9 = true;
                }
            }
            if (z9) {
                dismiss();
            }
        } else if (Intrinsics.areEqual(e4, StreamChatViewModel.a.c.f54240a)) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            Dialog P = com.qennnsad.aknkaksd.util.l.P(requireActivity, getString(R.string.stream_chat_close_confirm_title), getString(R.string.stream_chat_no_agents_available), getString(R.string.commit), null, new g(), null, 40, null);
            P.setCancelable(false);
            P.setCanceledOnTouchOutside(false);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e
    @m8.g
    /* renamed from: z0 */
    public p0 a0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        p0 d4 = p0.d(getLayoutInflater(), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, container, false)");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(80);
            WindowCompat.setDecorFitsSystemWindows(window, false);
            n4.a aVar = new n4.a(WindowInsetsCompat.Type.systemBars(), WindowInsetsCompat.Type.ime());
            ViewCompat.setWindowInsetsAnimationCallback(d4.f62881d, aVar);
            ViewCompat.setOnApplyWindowInsetsListener(d4.f62881d, aVar);
        }
        return d4;
    }
}
