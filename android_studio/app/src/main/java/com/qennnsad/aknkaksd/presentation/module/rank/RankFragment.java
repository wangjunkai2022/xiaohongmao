package com.qennnsad.aknkaksd.presentation.module.rank;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
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
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.RankItemKt;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel;
import com.qennnsad.aknkaksd.util.l;
import com.qennnsad.aknkaksd.util.q0;
import com.qennnsad.aknkaksd.util.s1;
import e5.r1;
import e5.y2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.s0;

/* compiled from: RankFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 32\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00014B\u0007¢\u0006\u0004\b1\u00102J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001a\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0003H\u0014R\u001b\u0010\u001c\u001a\u00020\u00178VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/¨\u00065"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/r1;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$Event;", "", "E0", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "items", "K0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "H0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "onResume", "e", "G0", "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;", "k", "Lkotlin/Lazy;", "D0", "()Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/data/repository/m;", "l", "Lcom/qennnsad/aknkaksd/data/repository/m;", "C0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "J0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/util/q0;", "m", "Lcom/qennnsad/aknkaksd/util/q0;", "B0", "()Lcom/qennnsad/aknkaksd/util/q0;", "I0", "(Lcom/qennnsad/aknkaksd/util/q0;)V", "mysteryUtil", "Lcom/qennnsad/aknkaksd/presentation/module/rank/b;", "n", "Lcom/qennnsad/aknkaksd/presentation/module/rank/b;", "rankDataAdapter", "<init>", "()V", "o", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RankFragment extends com.qennnsad.aknkaksd.presentation.module.rank.a<r1, RankViewModel.Event> {
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    public static final a f52175o = new a(null);
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52176k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public m f52177l;
    @u7.a

    /* renamed from: m  reason: collision with root package name */
    public q0 f52178m;

    /* renamed from: n  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.rank.b f52179n;

    /* compiled from: RankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$a;", "", "", "rootPosition", "rankListPosition", "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final RankFragment a(int i4, int i10) {
            RankFragment rankFragment = new RankFragment();
            rankFragment.setArguments(BundleKt.bundleOf(TuplesKt.to(com.qennnsad.aknkaksd.presentation.module.rank.container.d.f52262a, Integer.valueOf(i4)), TuplesKt.to(com.qennnsad.aknkaksd.presentation.module.rank.container.d.f52263b, Integer.valueOf(i10))));
            return rankFragment;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<RankItem, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g RankItem it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (RankItemKt.isGameRank(it)) {
                FragmentActivity requireActivity = RankFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                l.u(requireActivity, RankFragment.this.b0());
            } else if (Intrinsics.areEqual(it.isFollowed(), Boolean.TRUE)) {
                RankFragment.this.e0().B(it.getUserId());
            } else {
                RankFragment.this.e0().x(it.getUserId());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RankItem rankItem) {
            a(rankItem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<RankItem, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g RankItem it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Context requireContext = RankFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            l.e0(requireContext, it, RankFragment.this.B0());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RankItem rankItem) {
            a(rankItem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankFragment$initViews$3", f = "RankFragment.kt", i = {}, l = {66}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52189a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RankFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankFragment$initViews$3$1", f = "RankFragment.kt", i = {}, l = {67}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<PagingData<RankItem>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f52191a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f52192b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ RankFragment f52193c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(RankFragment rankFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f52193c = rankFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f52193c, continuation);
                aVar.f52192b = obj;
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
                int i4 = this.f52191a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    PagingData pagingData = (PagingData) this.f52192b;
                    com.qennnsad.aknkaksd.presentation.module.rank.b bVar = this.f52193c.f52179n;
                    if (bVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
                        bVar = null;
                    }
                    this.f52191a = 1;
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

        d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52189a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<PagingData<RankItem>> A = RankFragment.this.e0().A();
                a aVar = new a(RankFragment.this, null);
                this.f52189a = 1;
                if (kotlinx.coroutines.flow.k.A(A, aVar, this) == coroutine_suspended) {
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
    /* compiled from: RankFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/paging/CombinedLoadStates;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<CombinedLoadStates, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f52194a = new e();

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
    /* compiled from: RankFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ r1 f52196b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(r1 r1Var) {
            super(0);
            this.f52196b = r1Var;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            List filterNotNull;
            if (RankFragment.this.f0()) {
                TextView tvEmptyList = this.f52196b.f62990h;
                Intrinsics.checkNotNullExpressionValue(tvEmptyList, "tvEmptyList");
                com.qennnsad.aknkaksd.presentation.module.rank.b bVar = RankFragment.this.f52179n;
                com.qennnsad.aknkaksd.presentation.module.rank.b bVar2 = null;
                if (bVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
                    bVar = null;
                }
                tvEmptyList.setVisibility(bVar.snapshot().isEmpty() ? 0 : 8);
                RankFragment rankFragment = RankFragment.this;
                com.qennnsad.aknkaksd.presentation.module.rank.b bVar3 = rankFragment.f52179n;
                if (bVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
                } else {
                    bVar2 = bVar3;
                }
                filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(bVar2.snapshot());
                ArrayList arrayList = new ArrayList();
                for (Object obj : filterNotNull) {
                    Integer rankPosition = ((RankItem) obj).getRankPosition();
                    if ((rankPosition != null ? rankPosition.intValue() : 0) <= 3) {
                        arrayList.add(obj);
                    }
                }
                rankFragment.K0(arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function1<Unit, Unit> {
        g() {
            super(1);
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            com.qennnsad.aknkaksd.presentation.module.rank.b bVar = RankFragment.this.f52179n;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
                bVar = null;
            }
            bVar.refresh();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "", "a", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function2<String, UrlTarget, Unit> {
        h() {
            super(2);
        }

        public final void a(@m8.g String url, @m8.g UrlTarget target) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(target, "target");
            FragmentActivity requireActivity = RankFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            l.z(requireActivity, url, target, false, false, 12, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    public RankFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new RankFragment$special$$inlined$viewModels$default$2(new RankFragment$special$$inlined$viewModels$default$1(this)));
        this.f52176k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(RankViewModel.class), new RankFragment$special$$inlined$viewModels$default$3(lazy), new RankFragment$special$$inlined$viewModels$default$4(null, lazy), new RankFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void E0() {
        this.f52179n = new com.qennnsad.aknkaksd.presentation.module.rank.b(C0(), 3, new b(), new c());
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar = null;
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new d(null), 3, null);
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar2 = this.f52179n;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
            bVar2 = null;
        }
        bVar2.addLoadStateListener(e.f52194a);
        final r1 r1Var = (r1) m0();
        RecyclerView recyclerView = r1Var.f62988f;
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar3 = this.f52179n;
        if (bVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
            bVar3 = null;
        }
        recyclerView.setAdapter(bVar3);
        r1Var.f62988f.setLayoutManager(new LinearLayoutManager(requireContext()));
        com.qennnsad.aknkaksd.presentation.module.rank.b bVar4 = this.f52179n;
        if (bVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rankDataAdapter");
        } else {
            bVar = bVar4;
        }
        bVar.addOnPagesUpdatedListener(new f(r1Var));
        SwipeRefreshLayout swipeRefreshLayout = r1Var.f62989g;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "swipeRefreshLayout");
        s1.J(swipeRefreshLayout, new g());
        e0().y().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.rank.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RankFragment.F0(r1.this, (Boolean) obj);
            }
        });
        r1Var.f62984b.c(b0().b().getRankings(), C0(), Z(), new h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(r1 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        SwipeRefreshLayout swipeRefreshLayout = this_with.f62989g;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(List<RankItem> list) {
        Object obj;
        Object obj2;
        Object obj3;
        boolean z9;
        boolean z10;
        boolean z11;
        y2 y2Var = ((r1) m0()).f62985c;
        Intrinsics.checkNotNullExpressionValue(y2Var, "requireBinding().containerTop1");
        Iterator<T> it = list.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            Integer rankPosition = ((RankItem) obj2).getRankPosition();
            if (rankPosition != null && rankPosition.intValue() == 1) {
                z11 = true;
                continue;
            } else {
                z11 = false;
                continue;
            }
            if (z11) {
                break;
            }
        }
        s1.f(y2Var, (RankItem) obj2, C0(), B0());
        y2 y2Var2 = ((r1) m0()).f62986d;
        Intrinsics.checkNotNullExpressionValue(y2Var2, "requireBinding().containerTop2");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj3 = null;
                break;
            }
            obj3 = it2.next();
            Integer rankPosition2 = ((RankItem) obj3).getRankPosition();
            if (rankPosition2 != null && rankPosition2.intValue() == 2) {
                z10 = true;
                continue;
            } else {
                z10 = false;
                continue;
            }
            if (z10) {
                break;
            }
        }
        s1.f(y2Var2, (RankItem) obj3, C0(), B0());
        y2 y2Var3 = ((r1) m0()).f62987e;
        Intrinsics.checkNotNullExpressionValue(y2Var3, "requireBinding().containerTop3");
        Iterator<T> it3 = list.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            Integer rankPosition3 = ((RankItem) next).getRankPosition();
            if (rankPosition3 != null && rankPosition3.intValue() == 3) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                obj = next;
                break;
            }
        }
        s1.f(y2Var3, (RankItem) obj, C0(), B0());
    }

    @m8.g
    public final q0 B0() {
        q0 q0Var = this.f52178m;
        if (q0Var != null) {
            return q0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mysteryUtil");
        return null;
    }

    @m8.g
    public final m C0() {
        m mVar = this.f52177l;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: D0 */
    public RankViewModel e0() {
        return (RankViewModel) this.f52176k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: G0 */
    public void onEvent(@m8.g RankViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: H0 */
    public r1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        r1 d4 = r1.d(getLayoutInflater(), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, container, false)");
        return d4;
    }

    public final void I0(@m8.g q0 q0Var) {
        Intrinsics.checkNotNullParameter(q0Var, "<set-?>");
        this.f52178m = q0Var;
    }

    public final void J0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f52177l = mVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        e0().w();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        E0();
    }
}
