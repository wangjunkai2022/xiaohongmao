package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.index.IndexViewModel;
import com.qennnsad.aknkaksd.util.s1;
import e5.x0;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.ResultKt;
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
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;

/* compiled from: FollowedAnchorFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u001a\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0002H\u0014R\u001b\u0010\u0016\u001a\u00020\u00118VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00178\u0016X\u0096D¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$Event;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "A0", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "B0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "e", "V0", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;", "n", "Lkotlin/Lazy;", "U0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;", "viewModel", "", "o", "Z", "H0", "()Z", "isSmallGrid", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class FollowedAnchorFragment extends j<FollowedAnchorViewModel.Event> {
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final Lazy f51464n = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(FollowedAnchorViewModel.class), new FollowedAnchorFragment$special$$inlined$activityViewModels$default$1(this), new FollowedAnchorFragment$special$$inlined$activityViewModels$default$2(null, this), new FollowedAnchorFragment$special$$inlined$activityViewModels$default$3(this));

    /* renamed from: o  reason: collision with root package name */
    private final boolean f51465o;

    /* compiled from: FollowedAnchorFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    /* synthetic */ class a extends FunctionReferenceImpl implements Function1<l.b, Unit> {
        a(Object obj) {
            super(1, obj, FollowedAnchorFragment.class, "onAnchorClick", "onAnchorClick(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorItem$AnchorContentItem;)V", 0);
        }

        public final void a(@m8.g l.b p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((FollowedAnchorFragment) this.receiver).I0(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(l.b bVar) {
            a(bVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: FollowedAnchorFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    /* synthetic */ class b extends FunctionReferenceImpl implements Function2<String, UrlTarget, Unit> {
        b(Object obj) {
            super(2, obj, FollowedAnchorFragment.class, "onBannerAdClick", "onBannerAdClick(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V", 0);
        }

        public final void a(@m8.g String p02, @m8.h UrlTarget urlTarget) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((FollowedAnchorFragment) this.receiver).J0(p02, urlTarget);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: FollowedAnchorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorFragment$onViewCreated$1", f = "FollowedAnchorFragment.kt", i = {}, l = {36}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51470a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FollowedAnchorFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Landroidx/paging/CombinedLoadStates;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorFragment$onViewCreated$1$1", f = "FollowedAnchorFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<CombinedLoadStates, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51472a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51473b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ FollowedAnchorFragment f51474c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(FollowedAnchorFragment followedAnchorFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51474c = followedAnchorFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f51474c, continuation);
                aVar.f51473b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g CombinedLoadStates combinedLoadStates, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(combinedLoadStates, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f51472a == 0) {
                    ResultKt.throwOnFailure(obj);
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) this.f51473b;
                    x0 R0 = FollowedAnchorFragment.R0(this.f51474c);
                    RelativeLayout relativeLayout = R0 != null ? R0.f63296b : null;
                    if (relativeLayout != null) {
                        boolean z9 = true;
                        relativeLayout.setVisibility(((combinedLoadStates.getSource().getRefresh() instanceof LoadState.NotLoading) && combinedLoadStates.getAppend().getEndOfPaginationReached() && this.f51474c.w0().getItemCount() < 1) ? false : false ? 0 : 8);
                    }
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51470a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<CombinedLoadStates> loadStateFlow = FollowedAnchorFragment.this.w0().getLoadStateFlow();
                a aVar = new a(FollowedAnchorFragment.this, null);
                this.f51470a = 1;
                if (k.A(loadStateFlow, aVar, this) == coroutine_suspended) {
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

    /* compiled from: FollowedAnchorFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function0<Unit> {
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
            FollowedAnchorFragment.this.x0().l(IndexViewModel.Event.NAVIGATE_HOT);
        }
    }

    public static final /* synthetic */ x0 R0(FollowedAnchorFragment followedAnchorFragment) {
        return followedAnchorFragment.a0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment
    @m8.g
    public PagingDataAdapter<l, RecyclerView.ViewHolder> A0() {
        return new com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.b(b0(), y0(), Z(), new a(this), new b(this));
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment
    @m8.g
    public RecyclerView.LayoutManager B0() {
        return new LinearLayoutManager(requireContext());
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment
    public boolean H0() {
        return this.f51465o;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment
    @m8.g
    /* renamed from: U0 */
    public FollowedAnchorViewModel z0() {
        return (FollowedAnchorViewModel) this.f51464n.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: V0 */
    public void onEvent(@m8.g FollowedAnchorViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment, com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new c(null), 3, null);
        TextView textView = m0().f63297c;
        Intrinsics.checkNotNullExpressionValue(textView, "requireBinding().followedAnchorTvViewHot");
        s1.U(textView, 0L, new d(), 1, null);
    }
}
