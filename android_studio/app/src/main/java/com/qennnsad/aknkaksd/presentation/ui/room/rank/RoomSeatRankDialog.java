package com.qennnsad.aknkaksd.presentation.ui.room.rank;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
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
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankViewModel;
import com.qennnsad.aknkaksd.util.l;
import com.qennnsad.aknkaksd.util.s1;
import e5.n0;
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
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;

/* compiled from: RoomSeatRankDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 42\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00015B\u0007¢\u0006\u0004\b2\u00103J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0006\u0010\u0011\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0003H\u0014R\u001b\u0010\u0019\u001a\u00020\u00148VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u001d\u0010*\u001a\u0004\u0018\u00010&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0016\u001a\u0004\b(\u0010)R\"\u0010,\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00066"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;", "Lcom/qennnsad/aknkaksd/presentation/common/e;", "Le5/n0;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$Event;", "", "getTheme", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "s0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "o0", "e", "r0", "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;", "g", "Lkotlin/Lazy;", "n0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/data/repository/m;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/repository/m;", "m0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "u0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;", "j", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;", "adapter", "", "k", "k0", "()Ljava/lang/String;", "anchorId", "Lg5/a;", "localDataManager", "Lg5/a;", "l0", "()Lg5/a;", "t0", "(Lg5/a;)V", "<init>", "()V", "l", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RoomSeatRankDialog extends com.qennnsad.aknkaksd.presentation.ui.room.rank.a<n0, RoomSeatRankViewModel.Event> {
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final a f54143l = new a(null);
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f54144g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public g5.a f54145h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public m f54146i;

    /* renamed from: j  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.contributors.c f54147j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f54148k;

    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$a;", "", "", "roomId", "anchorId", "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final RoomSeatRankDialog a(@m8.g String roomId, @m8.g String anchorId) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Intrinsics.checkNotNullParameter(anchorId, "anchorId");
            RoomSeatRankDialog roomSeatRankDialog = new RoomSeatRankDialog();
            roomSeatRankDialog.setArguments(BundleKt.bundleOf(TuplesKt.to(com.qennnsad.aknkaksd.presentation.ui.room.rank.f.f54199a, anchorId), TuplesKt.to(com.qennnsad.aknkaksd.presentation.ui.room.rank.f.f54200b, roomId)));
            return roomSeatRankDialog;
        }
    }

    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<String> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.h
        public final String invoke() {
            return RoomSeatRankDialog.this.requireArguments().getString(com.qennnsad.aknkaksd.presentation.ui.room.rank.f.f54199a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<RankItem, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g RankItem it) {
            Intrinsics.checkNotNullParameter(it, "it");
            UserProfileActivity.a aVar = UserProfileActivity.f51833l;
            Context requireContext = RoomSeatRankDialog.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            aVar.a(requireContext, it.getUserId());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RankItem rankItem) {
            a(rankItem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomSeatRankDialog.kt */
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
            FragmentActivity requireActivity = RoomSeatRankDialog.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            l.g0(requireActivity, RoomSeatRankDialog.this.m0(), RoomSeatRankDialog.this.k0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/paging/CombinedLoadStates;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<CombinedLoadStates, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f54159a = new e();

        e() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<Unit, Unit> {
        f() {
            super(1);
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = RoomSeatRankDialog.this.f54147j;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                cVar = null;
            }
            cVar.refresh();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog$initViews$1$5", f = "RoomSeatRankDialog.kt", i = {}, l = {81}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f54161a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RoomSeatRankDialog.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog$initViews$1$5$1", f = "RoomSeatRankDialog.kt", i = {}, l = {82}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<PagingData<RankItem>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f54163a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f54164b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ RoomSeatRankDialog f54165c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(RoomSeatRankDialog roomSeatRankDialog, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f54165c = roomSeatRankDialog;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f54165c, continuation);
                aVar.f54164b = obj;
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
                int i4 = this.f54163a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    PagingData pagingData = (PagingData) this.f54164b;
                    com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = this.f54165c.f54147j;
                    if (cVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        cVar = null;
                    }
                    this.f54163a = 1;
                    if (cVar.submitData(pagingData, this) == coroutine_suspended) {
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

        g(Continuation<? super g> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f54161a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<PagingData<RankItem>> u9 = RoomSeatRankDialog.this.X().u();
                a aVar = new a(RoomSeatRankDialog.this, null);
                this.f54161a = 1;
                if (k.A(u9, aVar, this) == coroutine_suspended) {
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
    /* compiled from: RoomSeatRankDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f54166a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RoomSeatRankDialog f54167b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(n0 n0Var, RoomSeatRankDialog roomSeatRankDialog) {
            super(0);
            this.f54166a = n0Var;
            this.f54167b = roomSeatRankDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            TextView tvEmptyList = this.f54166a.f62766e;
            Intrinsics.checkNotNullExpressionValue(tvEmptyList, "tvEmptyList");
            com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = this.f54167b.f54147j;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                cVar = null;
            }
            tvEmptyList.setVisibility(cVar.snapshot().isEmpty() ? 0 : 8);
        }
    }

    public RoomSeatRankDialog() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new RoomSeatRankDialog$special$$inlined$viewModels$default$2(new RoomSeatRankDialog$special$$inlined$viewModels$default$1(this)));
        this.f54144g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(RoomSeatRankViewModel.class), new RoomSeatRankDialog$special$$inlined$viewModels$default$3(lazy), new RoomSeatRankDialog$special$$inlined$viewModels$default$4(null, lazy), new RoomSeatRankDialog$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new b());
        this.f54148k = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(n0 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        SwipeRefreshLayout swipeRefreshLayout = this_with.f62765d;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    @JvmStatic
    @m8.g
    public static final RoomSeatRankDialog q0(@m8.g String str, @m8.g String str2) {
        return f54143l.a(str, str2);
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.BottomWideDialogStyle;
    }

    @m8.h
    public final String k0() {
        return (String) this.f54148k.getValue();
    }

    @m8.g
    public final g5.a l0() {
        g5.a aVar = this.f54145h;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final m m0() {
        m mVar = this.f54146i;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e
    @m8.g
    /* renamed from: n0 */
    public RoomSeatRankViewModel X() {
        return (RoomSeatRankViewModel) this.f54144g.getValue();
    }

    public final void o0() {
        final n0 n0Var = (n0) b0();
        this.f54147j = new com.qennnsad.aknkaksd.presentation.module.contributors.c(m0(), 0, new c());
        FrameLayout flPeerageAd = n0Var.f62763b;
        Intrinsics.checkNotNullExpressionValue(flPeerageAd, "flPeerageAd");
        UserBean C = l0().C();
        boolean z9 = true;
        flPeerageAd.setVisibility((C == null || !C.is_join_peerage()) ? false : false ? 0 : 8);
        FrameLayout flPeerageAd2 = n0Var.f62763b;
        Intrinsics.checkNotNullExpressionValue(flPeerageAd2, "flPeerageAd");
        s1.U(flPeerageAd2, 0L, new d(), 1, null);
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = this.f54147j;
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar2 = null;
        if (cVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            cVar = null;
        }
        cVar.addLoadStateListener(e.f54159a);
        SwipeRefreshLayout swipeRefreshLayout = n0Var.f62765d;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "swipeRefreshLayout");
        s1.J(swipeRefreshLayout, new f());
        RecyclerView recyclerView = n0Var.f62764c;
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar3 = this.f54147j;
        if (cVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            cVar3 = null;
        }
        recyclerView.setAdapter(cVar3);
        n0Var.f62764c.setLayoutManager(new LinearLayoutManager(requireContext()));
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new g(null), 3, null);
        X().t().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.rank.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RoomSeatRankDialog.p0(n0.this, (Boolean) obj);
            }
        });
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar4 = this.f54147j;
        if (cVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            cVar2 = cVar4;
        }
        cVar2.addOnPagesUpdatedListener(new h(n0Var, this));
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        o0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.e
    /* renamed from: r0 */
    public void onEvent(@m8.g RoomSeatRankViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.e
    @m8.g
    /* renamed from: s0 */
    public n0 a0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        n0 d4 = n0.d(getLayoutInflater(), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, container, false)");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(80);
        }
        return d4;
    }

    public final void t0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f54145h = aVar;
    }

    public final void u0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f54146i = mVar;
    }
}
