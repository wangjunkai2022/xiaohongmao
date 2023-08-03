package com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.me.UserMoney;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.j1;
import com.qennnsad.aknkaksd.util.s1;
import e5.o1;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.MessageBundle;
import timber.log.Timber;

/* compiled from: PrivateRoomFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010<J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0007\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\t\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\n\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0003J\u0014\u0010\u000b\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0016H\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J$\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001c\u0010&\u001a\u00020\u0002*\u00020\r2\b\b\u0001\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\u0011J\b\u0010'\u001a\u00020\u0002H\u0016R\u001b\u0010-\u001a\u00020(8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R$\u0010.\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u00105\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006="}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;", "Landroidx/fragment/app/Fragment;", "", "k0", "Le5/o1;", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", ErrorBundle.SUMMARY_ENTRY, "g0", "h0", "f0", "i0", "j0", "a0", "Landroid/widget/TextView;", "", MessageBundle.TITLE_ENTRY, "m0", "", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "o0", "", "withBackground", "Landroid/text/SpannableString;", "Z", "e0", "n0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "viewId", "previewTime", "r0", "onDestroyView", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "g", "Lkotlin/Lazy;", "d0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "playerViewModel", "binding", "Le5/o1;", "c0", "()Le5/o1;", "q0", "(Le5/o1;)V", "Lx4/a;", "analytics", "Lx4/a;", "b0", "()Lx4/a;", "p0", "(Lx4/a;)V", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class PrivateRoomFragment extends com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.a {
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private o1 f53922f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f53923g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(PlayerViewModel.class), new PrivateRoomFragment$special$$inlined$activityViewModels$default$1(this), new PrivateRoomFragment$special$$inlined$activityViewModels$default$2(null, this), new PrivateRoomFragment$special$$inlined$activityViewModels$default$3(this));
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public x4.a f53924h;

    /* compiled from: PrivateRoomFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a", "Landroid/text/style/ClickableSpan;", "Landroid/view/View;", "textView", "", "onClick", "Landroid/text/TextPaint;", "ds", "updateDrawState", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends ClickableSpan {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f53930b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f53931c;

        a(int i4, boolean z9) {
            this.f53930b = i4;
            this.f53931c = z9;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View textView) {
            Intrinsics.checkNotNullParameter(textView, "textView");
            FragmentActivity requireActivity = PrivateRoomFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.o0(requireActivity, PrivateRoomFragment.this.d0().b0());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@m8.g TextPaint ds) {
            Intrinsics.checkNotNullParameter(ds, "ds");
            super.updateDrawState(ds);
            ds.setColor(ContextCompat.getColor(PrivateRoomFragment.this.requireActivity(), this.f53930b));
            ds.setUnderlineText(!this.f53931c);
        }
    }

    /* compiled from: PrivateRoomFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$b", "Landroid/text/style/ClickableSpan;", "Landroid/view/View;", "textView", "", "onClick", "Landroid/text/TextPaint;", "ds", "updateDrawState", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View textView) {
            Intrinsics.checkNotNullParameter(textView, "textView");
            FragmentActivity requireActivity = PrivateRoomFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.b0(requireActivity, PrivateRoomFragment.this.d0().b0());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@m8.g TextPaint ds) {
            Intrinsics.checkNotNullParameter(ds, "ds");
            super.updateDrawState(ds);
            FragmentActivity activity = PrivateRoomFragment.this.getActivity();
            Intrinsics.checkNotNull(activity);
            ds.setColor(ContextCompat.getColor(activity, R.color.color_private_room_dialog_price_start));
            ds.setUnderlineText(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            PlayerViewModel.i0(PrivateRoomFragment.this.d0(), "3", null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            PrivateRoomFragment.this.d0().l(new PlayerViewModel.a.c(null, null, 3, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o1 f53936b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(o1 o1Var) {
            super(0);
            this.f53936b = o1Var;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            CharSequence trim;
            PlayerViewModel d02 = PrivateRoomFragment.this.d0();
            trim = StringsKt__StringsKt.trim((CharSequence) this.f53936b.f62843c.f62507e.getText().toString());
            d02.h0("1", trim.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {
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
            PlayerViewModel.i0(PrivateRoomFragment.this.d0(), "2", null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            UserBean C;
            if (PrivateRoomFragment.this.d0().b0().C() == null) {
                return;
            }
            SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
            Context requireContext = PrivateRoomFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            SimpleWebViewActivity.a.d(aVar, requireContext, com.qennnsad.aknkaksd.util.m.f54843m + "?uid=" + C.getId() + "&ver=1.13.0&lob=" + C.getLob_no(), false, false, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            PlayerViewModel.i0(PrivateRoomFragment.this.d0(), g5.h.f67840d, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function0<Unit> {
        i() {
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
            FragmentActivity requireActivity = PrivateRoomFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.o0(requireActivity, PrivateRoomFragment.this.d0().b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            PlayerViewModel.i0(PrivateRoomFragment.this.d0(), g5.h.f67844h, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            UserBean C;
            if (PrivateRoomFragment.this.d0().b0().C() == null) {
                return;
            }
            SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
            Context requireContext = PrivateRoomFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            SimpleWebViewActivity.a.d(aVar, requireContext, com.qennnsad.aknkaksd.util.m.f54843m + "?uid=" + C.getId() + "&ver=1.13.0&lob=" + C.getLob_no(), false, false, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            PlayerViewModel.i0(PrivateRoomFragment.this.d0(), g5.h.f67842f, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            FragmentActivity requireActivity = PrivateRoomFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.o0(requireActivity, PrivateRoomFragment.this.d0().b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            PlayerViewModel.i0(PrivateRoomFragment.this.d0(), g5.h.f67841e, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class o extends Lambda implements Function0<Unit> {
        o() {
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
            PrivateRoomFragment.this.d0().l(new PlayerViewModel.a.c(null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrivateRoomFragment.kt */
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
            UserProfileActivity.a aVar = UserProfileActivity.f51833l;
            Context requireContext = PrivateRoomFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            UserInfo value = PrivateRoomFragment.this.d0().o0().getValue();
            String id = value != null ? value.getId() : null;
            if (id == null) {
                return;
            }
            aVar.a(requireContext, id);
        }
    }

    private final SpannableString Z(boolean z9) {
        String str = z9 ? "充值" : "充值金币";
        SpannableString spannableString = new SpannableString(str);
        int i4 = z9 ? R.color.white : R.color.color_private_room_dialog_price_start;
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireActivity(), i4)), 0, str.length(), 33);
        spannableString.setSpan(new a(i4, z9), 0, str.length(), 33);
        return spannableString;
    }

    private final void a0() {
        d0().l(new PlayerViewModel.a.c(null, Integer.valueOf((int) R.string.toast_unexpected_error), 1, null));
    }

    private final SpannableString e0() {
        SpannableString spannableString = new SpannableString("了解推广计划");
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), R.color.color_private_room_dialog_price_start)), 0, 6, 33);
        spannableString.setSpan(new b(), 0, spannableString.length(), 33);
        return spannableString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00a9, code lost:
        r4 = kotlin.text.StringsKt__StringNumberConversionsKt.toIntOrNull(r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void f0(e5.o1 r14, com.qennnsad.aknkaksd.data.bean.LiveSummary r15) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.PrivateRoomFragment.f0(e5.o1, com.qennnsad.aknkaksd.data.bean.LiveSummary):void");
    }

    private final void g0(o1 o1Var, LiveSummary liveSummary) {
        Timber.f93860a.k("Bind pwd views", new Object[0]);
        TextView privaterRoomDialogType = o1Var.f62852l;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogType, "privaterRoomDialogType");
        privaterRoomDialogType.setVisibility(0);
        ImageView imageView = o1Var.f62843c.f62504b;
        Intrinsics.checkNotNullExpressionValue(imageView, "layoutPwd.ivPasswordAd");
        s1.m(imageView, d0().b0().b().getPasswordRoom(), d0().q0(), b0());
        TextView textView = o1Var.f62843c.f62506d;
        Intrinsics.checkNotNullExpressionValue(textView, "layoutPwd.privaterRoomDialogPasswdCommit");
        s1.U(textView, 0L, new e(o1Var), 1, null);
        TextView tvGuestPreviewHint = o1Var.f62853m;
        Intrinsics.checkNotNullExpressionValue(tvGuestPreviewHint, "tvGuestPreviewHint");
        tvGuestPreviewHint.setVisibility(8);
        RelativeLayout relativeLayout = o1Var.f62843c.f62505c;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "layoutPwd.privaterRoomDialogPasswd");
        relativeLayout.setVisibility(0);
    }

    private final void h0(o1 o1Var, LiveSummary liveSummary) {
        Timber.f93860a.k("Bind ticket views", new Object[0]);
        TextView privaterRoomDialogType = o1Var.f62852l;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogType, "privaterRoomDialogType");
        privaterRoomDialogType.setVisibility(0);
        o1Var.f62852l.setText(liveSummary.getLimit().getPtname());
        TextView textView = o1Var.f62844d.f62561h;
        Intrinsics.checkNotNullExpressionValue(textView, "layoutTicket.privaterRoomDialogTicketCommit");
        String string = getString(R.string.goprivate_room_pwd_commit);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.goprivate_room_pwd_commit)");
        m0(textView, string);
        TextView textView2 = o1Var.f62844d.f62561h;
        Intrinsics.checkNotNullExpressionValue(textView2, "layoutTicket.privaterRoomDialogTicketCommit");
        s1.U(textView2, 0L, new f(), 1, null);
        ImageView imageView = o1Var.f62844d.f62555b;
        Intrinsics.checkNotNullExpressionValue(imageView, "layoutTicket.ivTicketAd");
        s1.m(imageView, d0().b0().b().getTicketRoom(), d0().q0(), b0());
        if (liveSummary.getLimit().getCome() == 0 && liveSummary.getLimit().getPreview_time() > 0) {
            TextView tvGuestPreviewHint = o1Var.f62853m;
            Intrinsics.checkNotNullExpressionValue(tvGuestPreviewHint, "tvGuestPreviewHint");
            r0(tvGuestPreviewHint, R.id.layout_ticket, liveSummary.getLimit().getPreview_time());
        } else {
            TextView tvGuestPreviewHint2 = o1Var.f62853m;
            Intrinsics.checkNotNullExpressionValue(tvGuestPreviewHint2, "tvGuestPreviewHint");
            tvGuestPreviewHint2.setVisibility(8);
        }
        o1Var.f62844d.f62557d.setText("门票价格:");
        o1Var.f62844d.f62558e.setText(String.valueOf(liveSummary.getLimit().getPrerequisite()));
        LinearLayout linearLayout = o1Var.f62844d.f62559f;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "layoutTicket.privaterRoomDialogTicket");
        linearLayout.setVisibility(0);
        o1Var.f62844d.f62560g.setText(Z(true));
        o1Var.f62844d.f62560g.setMovementMethod(new LinkMovementMethod());
    }

    @SuppressLint({"SetTextI18n"})
    private final void i0(o1 o1Var, LiveSummary liveSummary) {
        Timber.f93860a.k("Bind time views", new Object[0]);
        TextView privaterRoomDialogType = o1Var.f62852l;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogType, "privaterRoomDialogType");
        privaterRoomDialogType.setVisibility(8);
        TextView textView = o1Var.f62845e.f62611l;
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        TextView textView2 = o1Var.f62845e.f62611l;
        Intrinsics.checkNotNullExpressionValue(textView2, "layoutTime.privaterRoomDialogTimePointTuiguang2");
        s1.U(textView2, 0L, new g(), 1, null);
        TextView textView3 = o1Var.f62845e.f62606g;
        Intrinsics.checkNotNullExpressionValue(textView3, "layoutTime.privaterRoomDialogTimeCommit");
        s1.U(textView3, 0L, new h(), 1, null);
        TextView textView4 = o1Var.f62845e.f62605f;
        Intrinsics.checkNotNullExpressionValue(textView4, "layoutTime.privaterRoomDialogTimeAddmoney");
        s1.U(textView4, 0L, new i(), 1, null);
        TextView textView5 = o1Var.f62845e.f62606g;
        Intrinsics.checkNotNullExpressionValue(textView5, "layoutTime.privaterRoomDialogTimeCommit");
        String string = getString(R.string.goprivate_room_pwd_commit);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.goprivate_room_pwd_commit)");
        m0(textView5, string);
        TextView textView6 = o1Var.f62845e.f62609j;
        Intrinsics.checkNotNullExpressionValue(textView6, "layoutTime.privaterRoomDialogTimePointComimt");
        s1.U(textView6, 0L, new j(), 1, null);
        if (liveSummary.getLimit().getCome() == 0 && liveSummary.getLimit().getPreview_time() > 0) {
            TextView tvGuestPreviewHint = o1Var.f62853m;
            Intrinsics.checkNotNullExpressionValue(tvGuestPreviewHint, "tvGuestPreviewHint");
            r0(tvGuestPreviewHint, R.id.layout_time, liveSummary.getLimit().getPreview_time());
        } else {
            TextView tvGuestPreviewHint2 = o1Var.f62853m;
            Intrinsics.checkNotNullExpressionValue(tvGuestPreviewHint2, "tvGuestPreviewHint");
            tvGuestPreviewHint2.setVisibility(8);
        }
        o1Var.f62845e.f62602c.setText("计费价格:");
        TextView textView7 = o1Var.f62845e.f62603d;
        textView7.setText(liveSummary.getLimit().getPrerequisite() + "金币/分钟");
        o1Var.f62845e.f62605f.setText(Z(true));
        o1Var.f62845e.f62605f.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
        o1Var.f62845e.f62605f.setBackgroundResource(R.drawable.shape_follow_btn_horiz_small);
        o1Var.f62845e.f62610k.setText("参与推广计划，可以免费获得观看收费房的时长");
        o1Var.f62845e.f62611l.setText(e0());
        RelativeLayout relativeLayout = o1Var.f62845e.f62604e;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "layoutTime.privaterRoomDialogTime");
        relativeLayout.setVisibility(0);
    }

    private final void j0(o1 o1Var, LiveSummary liveSummary) {
        Timber.f93860a.k("Bind video views", new Object[0]);
        TextView privaterRoomDialogType = o1Var.f62852l;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogType, "privaterRoomDialogType");
        privaterRoomDialogType.setVisibility(0);
        o1Var.f62852l.setText("");
        TextView privaterRoomDialogType2 = o1Var.f62852l;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogType2, "privaterRoomDialogType");
        s1.o(privaterRoomDialogType2, Integer.valueOf((int) R.drawable.ic_room_type_typography), true, false, false, false, 28, null);
        TextView tvGuestPreviewHint = o1Var.f62853m;
        Intrinsics.checkNotNullExpressionValue(tvGuestPreviewHint, "tvGuestPreviewHint");
        tvGuestPreviewHint.setVisibility(8);
        TextView textView = o1Var.f62846f.f62665n;
        Intrinsics.checkNotNullExpressionValue(textView, "layoutVideo.privaterRoomDialogVideoPointTuiguang2");
        s1.U(textView, 0L, new k(), 1, null);
        TextView textView2 = o1Var.f62846f.f62662k;
        Intrinsics.checkNotNullExpressionValue(textView2, "layoutVideo.privaterRoomDialogVideoPointComimt");
        s1.U(textView2, 0L, new l(), 1, null);
        TextView textView3 = o1Var.f62846f.f62657f;
        Intrinsics.checkNotNullExpressionValue(textView3, "layoutVideo.privaterRoomDialogVideoAddmoney");
        s1.U(textView3, 0L, new m(), 1, null);
        TextView textView4 = o1Var.f62846f.f62658g;
        Intrinsics.checkNotNullExpressionValue(textView4, "layoutVideo.privaterRoomDialogVideoCommit");
        s1.U(textView4, 0L, new n(), 1, null);
        o1Var.f62846f.f62654c.setText("计费价格:");
        TextView textView5 = o1Var.f62846f.f62655d;
        textView5.setText(liveSummary.getLimit().getPrerequisite() + "/分钟");
        o1Var.f62846f.f62657f.setText(Z(true));
        o1Var.f62846f.f62665n.setText(e0());
        TextView textView6 = o1Var.f62846f.f62659h;
        textView6.setText("计费价格:  " + liveSummary.getLimit().getPrerequisite_coin() + "金币可观看24小时所有福利房");
        TextView textView7 = o1Var.f62846f.f62663l;
        textView7.setText("计费价格:  " + liveSummary.getLimit().getPrerequisite_minute() + "分钟免费观看时长，可观看24小时所有福利房");
        RelativeLayout relativeLayout = o1Var.f62846f.f62656e;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "layoutVideo.privaterRoomDialogVideo");
        relativeLayout.setVisibility(0);
    }

    private final void k0() {
        Unit unit;
        final o1 n02 = n0();
        d0().t0().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PrivateRoomFragment.l0(PrivateRoomFragment.this, n02, (UserMoney) obj);
            }
        });
        ImageView privaterRoomDialogClose = n02.f62848h;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogClose, "privaterRoomDialogClose");
        s1.U(privaterRoomDialogClose, 0L, new o(), 1, null);
        ImageView privaterRoomDialogPhoto = n02.f62850j;
        Intrinsics.checkNotNullExpressionValue(privaterRoomDialogPhoto, "privaterRoomDialogPhoto");
        s1.U(privaterRoomDialogPhoto, 0L, new p(), 1, null);
        LiveSummary it = d0().n0().getValue();
        if (it != null) {
            n02.f62849i.setText(it.getNickname());
            com.qennnsad.aknkaksd.util.img.e eVar = com.qennnsad.aknkaksd.util.img.e.f54753a;
            ImageView imageView = n02.f62850j;
            com.qennnsad.aknkaksd.data.repository.m q02 = d0().q0();
            String avatar = it.getAvatar();
            Intrinsics.checkNotNullExpressionValue(avatar, "it.avatar");
            eVar.d(imageView, q02.j(avatar));
            String valueOf = String.valueOf(it.getLimit().getPtid());
            switch (valueOf.hashCode()) {
                case 49:
                    if (valueOf.equals("1")) {
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        g0(n02, it);
                        break;
                    }
                    break;
                case 50:
                    if (valueOf.equals("2")) {
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        h0(n02, it);
                        break;
                    }
                    break;
                case 51:
                    if (valueOf.equals("3")) {
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        f0(n02, it);
                        break;
                    }
                    break;
                case 52:
                    if (valueOf.equals(g5.h.f67840d)) {
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        i0(n02, it);
                        break;
                    }
                    break;
                case 53:
                    if (valueOf.equals(g5.h.f67841e)) {
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        j0(n02, it);
                        break;
                    }
                    break;
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            a0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(PrivateRoomFragment this$0, o1 this_with, UserMoney userMoney) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (userMoney == null) {
            return;
        }
        SpannableString spannableString = new SpannableString("你现在拥有:  " + userMoney.getCoinbalance() + "个金币");
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this$0.requireContext(), R.color.color_private_room_dialog_price_start)), 8, String.valueOf(userMoney.getCoinbalance()).length() + 8, 33);
        String o02 = this$0.o0(userMoney.getPointbalance());
        SpannableString spannableString2 = new SpannableString("你现在拥有:  " + o02 + "分钟 免费观看时长");
        spannableString2.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this$0.requireContext(), R.color.color_private_room_dialog_price_start)), 8, o02.length() + 8 + 2, 33);
        this_with.f62844d.f62563j.setText(spannableString);
        this_with.f62845e.f62607h.setText(spannableString);
        this_with.f62846f.f62660i.setText(spannableString);
        this_with.f62846f.f62661j.setText(spannableString2);
        this_with.f62845e.f62608i.setText(spannableString2);
    }

    private final void m0(TextView textView, String str) {
        Bitmap decodeResource = BitmapFactory.decodeResource(textView.getResources(), R.drawable.coin_room_top_2);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        int f10 = h1.f(requireContext, 20);
        j1.a aVar = new j1.a(requireContext(), Bitmap.createScaledBitmap(decodeResource, f10, f10, false), 0);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(ExifInterface.LONGITUDE_WEST);
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) " ").append((CharSequence) str);
        textView.setText(spannableStringBuilder);
    }

    private final String o0(int i4) {
        return String.valueOf(Math.max(0, i4 / 60));
    }

    @m8.g
    public final x4.a b0() {
        x4.a aVar = this.f53924h;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("analytics");
        return null;
    }

    @m8.h
    public final o1 c0() {
        return this.f53922f;
    }

    @m8.g
    public final PlayerViewModel d0() {
        return (PlayerViewModel) this.f53923g.getValue();
    }

    @m8.g
    public final o1 n0() {
        o1 o1Var = this.f53922f;
        Intrinsics.checkNotNull(o1Var);
        return o1Var;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.g
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        o1 d4 = o1.d(inflater, viewGroup, false);
        this.f53922f = d4;
        FrameLayout root = d4.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…nding = it\n        }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f53922f = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        k0();
    }

    public final void p0(@m8.g x4.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53924h = aVar;
    }

    public final void q0(@m8.h o1 o1Var) {
        this.f53922f = o1Var;
    }

    public final void r0(@m8.g TextView textView, @IdRes int i4, int i10) {
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setVisibility(0);
        String str = "绑定手机号后，收费房间有" + i10 + "秒试看时间！";
        SpannableString spannableString = new SpannableString(str);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(requireContext(), R.color.private_room_dialog_coin));
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, String.valueOf(i10 / 10), 0, false, 6, (Object) null);
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, "试", 0, false, 6, (Object) null);
        spannableString.setSpan(foregroundColorSpan, indexOf$default, indexOf$default2, 33);
        textView.setText(spannableString);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        layoutParams.topMargin = h1.f(requireContext, 20);
        layoutParams.addRule(3, i4);
        textView.setLayoutParams(layoutParams);
    }
}
