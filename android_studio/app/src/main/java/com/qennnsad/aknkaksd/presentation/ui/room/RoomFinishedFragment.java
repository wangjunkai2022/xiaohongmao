package com.qennnsad.aknkaksd.presentation.ui.room;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel;
import com.qennnsad.aknkaksd.util.s1;
import e5.l0;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: RoomFinishedFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 :2\u00020\u0001:\u0001;B\u0007¢\u0006\u0004\b8\u00109J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J$\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016R\u001b\u0010\u0017\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R$\u0010$\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010+\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006<"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;", "Landroidx/fragment/app/Fragment;", "", "e0", "f0", "Le5/l0;", "i0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "g", "Lkotlin/Lazy;", "c0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "playerViewModel", "Lcom/qennnsad/aknkaksd/data/repository/m;", "h", "Lcom/qennnsad/aknkaksd/data/repository/m;", "d0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "m0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "", "h0", "()Z", "isWatcher", "binding", "Le5/l0;", "a0", "()Le5/l0;", "k0", "(Le5/l0;)V", "Lg5/a;", "localDataManager", "Lg5/a;", "b0", "()Lg5/a;", "l0", "(Lg5/a;)V", "Lx4/a;", "analytics", "Lx4/a;", "Z", "()Lx4/a;", "j0", "(Lx4/a;)V", "<init>", "()V", "k", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RoomFinishedFragment extends com.qennnsad.aknkaksd.presentation.ui.room.e {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    public static final a f53267k = new a(null);
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final String f53268l = "key_watcher";
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private l0 f53269f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f53270g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(PlayerViewModel.class), new RoomFinishedFragment$special$$inlined$activityViewModels$default$1(this), new RoomFinishedFragment$special$$inlined$activityViewModels$default$2(null, this), new RoomFinishedFragment$special$$inlined$activityViewModels$default$3(this));
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public m f53271h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public g5.a f53272i;
    @u7.a

    /* renamed from: j  reason: collision with root package name */
    public x4.a f53273j;

    /* compiled from: RoomFinishedFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$a;", "", "", "watcher", "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;", "a", "", "KEY_IS_WATCHER", "Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final RoomFinishedFragment a(boolean z9) {
            Bundle bundleOf = BundleKt.bundleOf(TuplesKt.to(RoomFinishedFragment.f53268l, Boolean.valueOf(z9)));
            RoomFinishedFragment roomFinishedFragment = new RoomFinishedFragment();
            roomFinishedFragment.setArguments(bundleOf);
            return roomFinishedFragment;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomFinishedFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LiveSummary f53279b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(LiveSummary liveSummary) {
            super(0);
            this.f53279b = liveSummary;
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
            Context requireContext = RoomFinishedFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            String id = this.f53279b.getId();
            Intrinsics.checkNotNullExpressionValue(id, "it.getId()");
            aVar.a(requireContext, id);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomFinishedFragment.kt */
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
            RoomFinishedFragment.this.c0().l(new PlayerViewModel.a.c(null, null, 3, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomFinishedFragment.kt */
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
            RoomFinishedFragment.this.c0().l(new PlayerViewModel.a.c(null, null, 3, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomFinishedFragment.kt */
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
            RoomFinishedFragment.this.c0().L(true);
        }
    }

    private final void e0() {
        if (h0()) {
            f0();
        } else {
            f.a(this);
        }
        ImageView imageView = i0().f62685i;
        Intrinsics.checkNotNullExpressionValue(imageView, "requireBinding().ivAd");
        s1.m(imageView, b0().b().getStreamFinished(), d0(), Z());
    }

    private final void f0() {
        final l0 i02 = i0();
        LinearLayout layoutIncome = i02.f62687k;
        Intrinsics.checkNotNullExpressionValue(layoutIncome, "layoutIncome");
        layoutIncome.setVisibility(8);
        LinearLayout layoutAudience = i02.f62686j;
        Intrinsics.checkNotNullExpressionValue(layoutAudience, "layoutAudience");
        layoutAudience.setVisibility(8);
        LiveSummary value = c0().n0().getValue();
        if (value != null) {
            TextView dialogRoomFinishAnchorName = i02.f62678b;
            Intrinsics.checkNotNullExpressionValue(dialogRoomFinishAnchorName, "dialogRoomFinishAnchorName");
            dialogRoomFinishAnchorName.setVisibility(0);
            i02.f62678b.setText(value.getNickname());
            ImageView imageView = i02.f62679c;
            m d02 = d0();
            String avatar = value.getAvatar();
            Intrinsics.checkNotNullExpressionValue(avatar, "it.avatar");
            com.qennnsad.aknkaksd.util.img.e.g(imageView, d02.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            ImageView dialogRoomFinishAnchorPhoto = i02.f62679c;
            Intrinsics.checkNotNullExpressionValue(dialogRoomFinishAnchorPhoto, "dialogRoomFinishAnchorPhoto");
            s1.U(dialogRoomFinishAnchorPhoto, 0L, new b(value), 1, null);
            TextView dialogRoomFinishBtnFinish = i02.f62681e;
            Intrinsics.checkNotNullExpressionValue(dialogRoomFinishBtnFinish, "dialogRoomFinishBtnFinish");
            s1.U(dialogRoomFinishBtnFinish, 0L, new c(), 1, null);
            ImageView dialogRoomFinishBtnClose = i02.f62680d;
            Intrinsics.checkNotNullExpressionValue(dialogRoomFinishBtnClose, "dialogRoomFinishBtnClose");
            s1.U(dialogRoomFinishBtnClose, 0L, new d(), 1, null);
            TextView dialogRoomFinishBtnFollow = i02.f62682f;
            Intrinsics.checkNotNullExpressionValue(dialogRoomFinishBtnFollow, "dialogRoomFinishBtnFollow");
            s1.U(dialogRoomFinishBtnFollow, 0L, new e(), 1, null);
            c0().l0().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.g
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    RoomFinishedFragment.g0(l0.this, (Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(l0 this_with, Boolean bool) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        TextView dialogRoomFinishBtnFollow = this_with.f62682f;
        Intrinsics.checkNotNullExpressionValue(dialogRoomFinishBtnFollow, "dialogRoomFinishBtnFollow");
        dialogRoomFinishBtnFollow.setVisibility(bool.booleanValue() ^ true ? 0 : 8);
    }

    private final boolean h0() {
        return requireArguments().getBoolean(f53268l);
    }

    @m8.g
    public final x4.a Z() {
        x4.a aVar = this.f53273j;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("analytics");
        return null;
    }

    @m8.h
    public final l0 a0() {
        return this.f53269f;
    }

    @m8.g
    public final g5.a b0() {
        g5.a aVar = this.f53272i;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final PlayerViewModel c0() {
        return (PlayerViewModel) this.f53270g.getValue();
    }

    @m8.g
    public final m d0() {
        m mVar = this.f53271h;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @m8.g
    public final l0 i0() {
        l0 l0Var = this.f53269f;
        Intrinsics.checkNotNull(l0Var);
        return l0Var;
    }

    public final void j0(@m8.g x4.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53273j = aVar;
    }

    public final void k0(@m8.h l0 l0Var) {
        this.f53269f = l0Var;
    }

    public final void l0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53272i = aVar;
    }

    public final void m0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f53271h = mVar;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.g
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        l0 d4 = l0.d(inflater, viewGroup, false);
        this.f53269f = d4;
        LinearLayout root = d4.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…ing = this\n        }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f53269f = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        e0();
    }
}
