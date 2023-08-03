package com.qennnsad.aknkaksd.presentation.module.rank.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel;
import com.qennnsad.aknkaksd.presentation.module.rank.h;
import com.qennnsad.aknkaksd.util.l;
import com.qennnsad.aknkaksd.util.q0;
import com.qennnsad.aknkaksd.util.s1;
import e5.h0;
import java.util.Iterator;
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
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.s0;

/* compiled from: RankTodayDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 72\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00018B\u0007¢\u0006\u0004\b5\u00106J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u001a\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0006\u0010\u0014\u001a\u00020\u0006J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0003H\u0014R\u001b\u0010\u001c\u001a\u00020\u00178VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u001d\u00104\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\u0019\u001a\u0004\b2\u00103¨\u00069"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;", "Lcom/qennnsad/aknkaksd/presentation/common/e;", "Le5/h0;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$Event;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "item", "", "A0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "x0", "", "getTheme", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "s0", "e", "w0", "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;", "g", "Lkotlin/Lazy;", "r0", "()Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/q0;", "h", "Lcom/qennnsad/aknkaksd/util/q0;", "p0", "()Lcom/qennnsad/aknkaksd/util/q0;", "y0", "(Lcom/qennnsad/aknkaksd/util/q0;)V", "mysteryUtil", "Lcom/qennnsad/aknkaksd/data/repository/m;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/repository/m;", "q0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "z0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/presentation/module/rank/b;", "j", "Lcom/qennnsad/aknkaksd/presentation/module/rank/b;", "adapter", "k", "o0", "()Ljava/lang/Integer;", "lob", "<init>", "()V", "l", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RankTodayDialog extends com.qennnsad.aknkaksd.presentation.module.rank.dialogs.a<h0, RankTodayViewModel.Event> {
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final a f52268l = new a(null);
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    public static final String f52269m = "argLob";
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f52270g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public q0 f52271h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public m f52272i;

    /* renamed from: j  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.rank.b f52273j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52274k;

    /* compiled from: RankTodayDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$a;", "", "", "lob", "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;", "a", "(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;", "", "ARG_LOB", "Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final RankTodayDialog a(@m8.h Integer num) {
            RankTodayDialog rankTodayDialog = new RankTodayDialog();
            rankTodayDialog.setArguments(BundleKt.bundleOf(TuplesKt.to(RankTodayDialog.f52269m, num)));
            return rankTodayDialog;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h0 f52282a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RankTodayDialog f52283b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(h0 h0Var, RankTodayDialog rankTodayDialog) {
            super(0);
            this.f52282a = h0Var;
            this.f52283b = rankTodayDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Integer rankPosition;
            TextView tvEmptyList = this.f52282a.f62489n;
            Intrinsics.checkNotNullExpressionValue(tvEmptyList, "tvEmptyList");
            com.qennnsad.aknkaksd.presentation.module.rank.b bVar = this.f52283b.f52273j;
            RankItem rankItem = null;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                bVar = null;
            }
            tvEmptyList.setVisibility(bVar.snapshot().isEmpty() ? 0 : 8);
            RankTodayDialog rankTodayDialog = this.f52283b;
            com.qennnsad.aknkaksd.presentation.module.rank.b bVar2 = rankTodayDialog.f52273j;
            if (bVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                bVar2 = null;
            }
            Iterator<RankItem> it = bVar2.snapshot().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                RankItem next = it.next();
                RankItem rankItem2 = next;
                boolean z9 = true;
                if (rankItem2 == null || (rankPosition = rankItem2.getRankPosition()) == null || rankPosition.intValue() != 1) {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    rankItem = next;
                    break;
                }
            }
            rankTodayDialog.A0(rankItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
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
            RankTodayDialog.this.X().y().setValue(new h.b(RankTodayDialog.this.o0()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
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
            RankTodayDialog.this.X().y().setValue(new h.c(RankTodayDialog.this.o0()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<RankItem, Unit> {
        e() {
            super(1);
        }

        public final void a(@m8.g RankItem it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (Intrinsics.areEqual(it.isFollowed(), Boolean.TRUE)) {
                RankTodayDialog.this.X().B(it.getUserId());
            } else {
                RankTodayDialog.this.X().w(it.getUserId());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RankItem rankItem) {
            a(rankItem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<RankItem, Unit> {
        f() {
            super(1);
        }

        public final void a(@m8.g RankItem it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Context requireContext = RankTodayDialog.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            l.e0(requireContext, it, RankTodayDialog.this.p0());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RankItem rankItem) {
            a(rankItem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/paging/CombinedLoadStates;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function1<CombinedLoadStates, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f52288a = new g();

        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(CombinedLoadStates combinedLoadStates) {
            invoke2(combinedLoadStates);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g CombinedLoadStates it) {
            Intrinsics.checkNotNullParameter(it, "it");
            LoadState refresh = it.getRefresh();
            if (refresh instanceof LoadState.Error) {
                com.qennnsad.aknkaksd.util.toast.a.n(((LoadState.Error) refresh).getError().getMessage(), false, 2, null);
            }
        }
    }

    /* compiled from: RankTodayDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "", "positionStart", "itemCount", "", "onItemRangeChanged", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends RecyclerView.AdapterDataObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52289a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h0 f52290b;

        h(int i4, h0 h0Var) {
            this.f52289a = i4;
            this.f52290b = h0Var;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i4, int i10) {
            if (i4 == this.f52289a) {
                this.f52290b.f62485j.scrollToPosition(i4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankTodayDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog$initViews$1$7", f = "RankTodayDialog.kt", i = {}, l = {100}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class i extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52291a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RankTodayDialog.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog$initViews$1$7$1", f = "RankTodayDialog.kt", i = {}, l = {101}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<PagingData<RankItem>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f52293a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f52294b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ RankTodayDialog f52295c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(RankTodayDialog rankTodayDialog, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f52295c = rankTodayDialog;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f52295c, continuation);
                aVar.f52294b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g PagingData<RankItem> pagingData, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(pagingData, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f52293a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    PagingData pagingData = (PagingData) this.f52294b;
                    com.qennnsad.aknkaksd.presentation.module.rank.b bVar = this.f52295c.f52273j;
                    if (bVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        bVar = null;
                    }
                    this.f52293a = 1;
                    if (bVar.submitData(pagingData, this) == coroutine_suspended) {
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

        i(Continuation<? super i> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new i(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((i) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52291a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<PagingData<RankItem>> z9 = RankTodayDialog.this.X().z();
                a aVar = new a(RankTodayDialog.this, null);
                this.f52291a = 1;
                if (kotlinx.coroutines.flow.k.A(z9, aVar, this) == coroutine_suspended) {
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
    /* compiled from: RankTodayDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog$initViews$1$8", f = "RankTodayDialog.kt", i = {}, l = {105}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class j extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52296a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h0 f52298c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RankTodayDialog.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog$initViews$1$8$1", f = "RankTodayDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.qennnsad.aknkaksd.presentation.module.rank.h, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f52299a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f52300b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ h0 f52301c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(h0 h0Var, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f52301c = h0Var;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f52301c, continuation);
                aVar.f52300b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.qennnsad.aknkaksd.presentation.module.rank.h hVar, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(hVar, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f52299a == 0) {
                    ResultKt.throwOnFailure(obj);
                    boolean z9 = ((com.qennnsad.aknkaksd.presentation.module.rank.h) this.f52300b) instanceof h.c;
                    this.f52301c.f62491p.setActivated(z9);
                    this.f52301c.f62492q.setActivated(!z9);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(h0 h0Var, Continuation<? super j> continuation) {
            super(2, continuation);
            this.f52298c = h0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new j(this.f52298c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((j) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52296a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                t<com.qennnsad.aknkaksd.presentation.module.rank.h> y9 = RankTodayDialog.this.X().y();
                a aVar = new a(this.f52298c, null);
                this.f52296a = 1;
                if (kotlinx.coroutines.flow.k.A(y9, aVar, this) == coroutine_suspended) {
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

    /* compiled from: RankTodayDialog.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class k extends Lambda implements Function0<Integer> {
        k() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Integer invoke() {
            return Integer.valueOf(RankTodayDialog.this.requireArguments().getInt(RankTodayDialog.f52269m));
        }
    }

    public RankTodayDialog() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new RankTodayDialog$special$$inlined$viewModels$default$2(new RankTodayDialog$special$$inlined$viewModels$default$1(this)));
        this.f52270g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(RankTodayViewModel.class), new RankTodayDialog$special$$inlined$viewModels$default$3(lazy), new RankTodayDialog$special$$inlined$viewModels$default$4(null, lazy), new RankTodayDialog$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new k());
        this.f52274k = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0(final RankItem rankItem) {
        Unit unit;
        h0 h0Var = (h0) b0();
        if (rankItem != null) {
            Group groupTopItem = h0Var.f62479d;
            Intrinsics.checkNotNullExpressionValue(groupTopItem, "groupTopItem");
            groupTopItem.setVisibility(0);
            h0Var.f62490o.setText(rankItem.getNickname());
            ImageView imageView = h0Var.f62480e;
            com.qennnsad.aknkaksd.util.img.e.g(imageView, q0().j(rankItem.getAvatar()), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.rank.dialogs.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RankTodayDialog.B0(RankTodayDialog.this, rankItem, view);
                }
            });
            ImageView ivSex = h0Var.f62483h;
            Intrinsics.checkNotNullExpressionValue(ivSex, "ivSex");
            s1.w(ivSex, Integer.valueOf(rankItem.getSex()));
            ImageView ivLevel = h0Var.f62481f;
            Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
            s1.A(ivLevel, rankItem.getLevelId(), rankItem.isMystery());
            ImageView ivPeerage = h0Var.f62482g;
            Intrinsics.checkNotNullExpressionValue(ivPeerage, "ivPeerage");
            s1.C(ivPeerage, rankItem.getPeerageId());
            h0Var.f62487l.setText(String.valueOf(rankItem.getCoin()));
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            Group groupTopItem2 = h0Var.f62479d;
            Intrinsics.checkNotNullExpressionValue(groupTopItem2, "groupTopItem");
            groupTopItem2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(RankTodayDialog this$0, RankItem rankItem, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        l.e0(requireContext, rankItem, this$0.p0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer o0() {
        return (Integer) this.f52274k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(RankTodayDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar = this$0.f52273j;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            bVar = null;
        }
        bVar.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(h0 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        SwipeRefreshLayout swipeRefreshLayout = this_with.f62486k;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    @JvmStatic
    @m8.g
    public static final RankTodayDialog v0(@m8.h Integer num) {
        return f52268l.a(num);
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.BottomWideDialogStyle;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        s0();
    }

    @m8.g
    public final q0 p0() {
        q0 q0Var = this.f52271h;
        if (q0Var != null) {
            return q0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mysteryUtil");
        return null;
    }

    @m8.g
    public final m q0() {
        m mVar = this.f52272i;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e
    @m8.g
    /* renamed from: r0 */
    public RankTodayViewModel X() {
        return (RankTodayViewModel) this.f52270g.getValue();
    }

    public final void s0() {
        final h0 h0Var = (h0) b0();
        TextView tvRankWeek = h0Var.f62492q;
        Intrinsics.checkNotNullExpressionValue(tvRankWeek, "tvRankWeek");
        s1.U(tvRankWeek, 0L, new c(), 1, null);
        h0Var.f62491p.setActivated(true);
        TextView tvRankToday = h0Var.f62491p;
        Intrinsics.checkNotNullExpressionValue(tvRankToday, "tvRankToday");
        s1.U(tvRankToday, 0L, new d(), 1, null);
        h0Var.f62486k.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.qennnsad.aknkaksd.presentation.module.rank.dialogs.d
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                RankTodayDialog.t0(RankTodayDialog.this);
            }
        });
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar = new com.qennnsad.aknkaksd.presentation.module.rank.b(q0(), 1, new e(), new f());
        bVar.addLoadStateListener(g.f52288a);
        bVar.registerAdapterDataObserver(new h(1, h0Var));
        this.f52273j = bVar;
        h0Var.f62485j.setAdapter(bVar);
        h0Var.f62485j.setLayoutManager(new LinearLayoutManager(getContext()));
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar2 = null;
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new i(null), 3, null);
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new j(h0Var, null), 3, null);
        X().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.rank.dialogs.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RankTodayDialog.u0(h0.this, (Boolean) obj);
            }
        });
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar3 = this.f52273j;
        if (bVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            bVar2 = bVar3;
        }
        bVar2.addOnPagesUpdatedListener(new b(h0Var, this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.e
    /* renamed from: w0 */
    public void onEvent(@m8.g RankTodayViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e
    @m8.g
    /* renamed from: x0 */
    public h0 a0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        h0 d4 = h0.d(getLayoutInflater(), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, container, false)");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(80);
        }
        return d4;
    }

    public final void y0(@m8.g q0 q0Var) {
        Intrinsics.checkNotNullParameter(q0Var, "<set-?>");
        this.f52271h = q0Var;
    }

    public final void z0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f52272i = mVar;
    }
}
