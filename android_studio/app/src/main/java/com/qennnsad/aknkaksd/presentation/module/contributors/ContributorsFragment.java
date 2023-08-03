package com.qennnsad.aknkaksd.presentation.module.contributors;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
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
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsViewModel;
import com.qennnsad.aknkaksd.util.q0;
import com.qennnsad.aknkaksd.util.s1;
import e5.e1;
import e5.y2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.s0;

/* compiled from: ContributorsFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b0\u00101J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001a\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0003H\u0014R\u001b\u0010\u001b\u001a\u00020\u00168VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/e1;", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$Event;", "", "E0", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "items", "L0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "I0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "H0", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;", "k", "Lkotlin/Lazy;", "D0", "()Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/data/repository/m;", "l", "Lcom/qennnsad/aknkaksd/data/repository/m;", "C0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "K0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/util/q0;", "m", "Lcom/qennnsad/aknkaksd/util/q0;", "B0", "()Lcom/qennnsad/aknkaksd/util/q0;", "J0", "(Lcom/qennnsad/aknkaksd/util/q0;)V", "mysteryUtil", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;", "n", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;", "contributorsAdapter", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ContributorsFragment extends m<e1, ContributorsViewModel.Event> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51293k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public com.qennnsad.aknkaksd.data.repository.m f51294l;
    @u7.a

    /* renamed from: m  reason: collision with root package name */
    public q0 f51295m;

    /* renamed from: n  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.module.contributors.c f51296n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<RankItem, Unit> {
        a() {
            super(1);
        }

        public final void a(@m8.g RankItem it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Context requireContext = ContributorsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            com.qennnsad.aknkaksd.util.l.e0(requireContext, it, ContributorsFragment.this.B0());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RankItem rankItem) {
            a(rankItem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsFragment$initViews$2$1", f = "ContributorsFragment.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51305a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContributorsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsFragment$initViews$2$1$1", f = "ContributorsFragment.kt", i = {}, l = {55}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<PagingData<RankItem>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51307a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51308b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ContributorsFragment f51309c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ContributorsFragment contributorsFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51309c = contributorsFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f51309c, continuation);
                aVar.f51308b = obj;
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
                int i4 = this.f51307a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    PagingData pagingData = (PagingData) this.f51308b;
                    com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = this.f51309c.f51296n;
                    if (cVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
                        cVar = null;
                    }
                    this.f51307a = 1;
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

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51305a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<PagingData<RankItem>> z9 = ContributorsFragment.this.e0().z();
                a aVar = new a(ContributorsFragment.this, null);
                this.f51305a = 1;
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
    /* compiled from: ContributorsFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/paging/CombinedLoadStates;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<CombinedLoadStates, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f51310a = new c();

        c() {
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
    /* compiled from: ContributorsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e1 f51311a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContributorsFragment f51312b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(e1 e1Var, ContributorsFragment contributorsFragment) {
            super(0);
            this.f51311a = e1Var;
            this.f51312b = contributorsFragment;
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
            TextView textView = this.f51311a.f62349d.f62990h;
            Intrinsics.checkNotNullExpressionValue(textView, "ranking.tvEmptyList");
            com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = this.f51312b.f51296n;
            com.qennnsad.aknkaksd.presentation.module.contributors.c cVar2 = null;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
                cVar = null;
            }
            textView.setVisibility(cVar.snapshot().isEmpty() ? 0 : 8);
            ContributorsFragment contributorsFragment = this.f51312b;
            com.qennnsad.aknkaksd.presentation.module.contributors.c cVar3 = contributorsFragment.f51296n;
            if (cVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
            } else {
                cVar2 = cVar3;
            }
            filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(cVar2.snapshot());
            ArrayList arrayList = new ArrayList();
            for (Object obj : filterNotNull) {
                Integer rankPosition = ((RankItem) obj).getRankPosition();
                if ((rankPosition != null ? rankPosition.intValue() : 0) <= 3) {
                    arrayList.add(obj);
                }
            }
            contributorsFragment.L0(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<Unit, Unit> {
        e() {
            super(1);
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = ContributorsFragment.this.f51296n;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
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
    /* compiled from: ContributorsFragment.kt */
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
            ContributorsFragment.this.requireActivity().onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "", "a", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function2<String, UrlTarget, Unit> {
        g() {
            super(2);
        }

        public final void a(@m8.g String url, @m8.g UrlTarget target) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(target, "target");
            FragmentActivity requireActivity = ContributorsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.z(requireActivity, url, target, false, false, 12, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    public ContributorsFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ContributorsFragment$special$$inlined$viewModels$default$2(new ContributorsFragment$special$$inlined$viewModels$default$1(this)));
        this.f51293k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ContributorsViewModel.class), new ContributorsFragment$special$$inlined$viewModels$default$3(lazy), new ContributorsFragment$special$$inlined$viewModels$default$4(null, lazy), new ContributorsFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void E0() {
        this.f51296n = new com.qennnsad.aknkaksd.presentation.module.contributors.c(C0(), 3, new a());
        e0().A();
        final e1 e1Var = (e1) m0();
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar = null;
        kotlinx.coroutines.j.e(LifecycleOwnerKt.getLifecycleScope(this), null, null, new b(null), 3, null);
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar2 = this.f51296n;
        if (cVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
            cVar2 = null;
        }
        cVar2.addLoadStateListener(c.f51310a);
        RecyclerView recyclerView = e1Var.f62349d.f62988f;
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar3 = this.f51296n;
        if (cVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
            cVar3 = null;
        }
        recyclerView.setAdapter(cVar3);
        e1Var.f62349d.f62988f.setLayoutManager(new LinearLayoutManager(requireContext()));
        com.qennnsad.aknkaksd.presentation.module.contributors.c cVar4 = this.f51296n;
        if (cVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contributorsAdapter");
        } else {
            cVar = cVar4;
        }
        cVar.addOnPagesUpdatedListener(new d(e1Var, this));
        SwipeRefreshLayout swipeRefreshLayout = e1Var.f62349d.f62989g;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "ranking.swipeRefreshLayout");
        s1.J(swipeRefreshLayout, new e());
        e0().y().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.contributors.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContributorsFragment.F0(e1.this, (Boolean) obj);
            }
        });
        ImageButton imgbtnToolbarBack = e1Var.f62347b;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new f(), 1, null);
        e1Var.f62349d.f62984b.c(b0().b().getRankings(), C0(), Z(), new g());
        e0().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.contributors.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContributorsFragment.G0(e1.this, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(e1 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        SwipeRefreshLayout swipeRefreshLayout = this_with.f62349d.f62989g;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(e1 this_with, String str) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.f62351f.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L0(List<RankItem> list) {
        Object obj;
        Object obj2;
        Object obj3;
        boolean z9;
        boolean z10;
        boolean z11;
        y2 y2Var = ((e1) m0()).f62349d.f62985c;
        Intrinsics.checkNotNullExpressionValue(y2Var, "requireBinding().ranking.containerTop1");
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
        y2 y2Var2 = ((e1) m0()).f62349d.f62986d;
        Intrinsics.checkNotNullExpressionValue(y2Var2, "requireBinding().ranking.containerTop2");
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
        y2 y2Var3 = ((e1) m0()).f62349d.f62987e;
        Intrinsics.checkNotNullExpressionValue(y2Var3, "requireBinding().ranking.containerTop3");
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
        q0 q0Var = this.f51295m;
        if (q0Var != null) {
            return q0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mysteryUtil");
        return null;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m C0() {
        com.qennnsad.aknkaksd.data.repository.m mVar = this.f51294l;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: D0 */
    public ContributorsViewModel e0() {
        return (ContributorsViewModel) this.f51293k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: H0 */
    public void onEvent(@m8.g ContributorsViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: I0 */
    public e1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        e1 d4 = e1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void J0(@m8.g q0 q0Var) {
        Intrinsics.checkNotNullParameter(q0Var, "<set-?>");
        this.f51295m = q0Var;
    }

    public final void K0(@m8.g com.qennnsad.aknkaksd.data.repository.m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f51294l = mVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        E0();
    }
}
