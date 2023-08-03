package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.DimenRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.paging.ItemSnapshotList;
import androidx.paging.PagingData;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l;
import com.qennnsad.aknkaksd.presentation.module.main.index.IndexViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.util.l0;
import com.qennnsad.aknkaksd.util.s1;
import e5.x0;
import io.sentry.protocol.t;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
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
import kotlinx.coroutines.i1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;

/* compiled from: AbstractAnchorFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002:\u0001?B\u0007¢\u0006\u0004\b=\u0010>J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0004J\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0004J\b\u0010\u001f\u001a\u00020\u0004H\u0016R\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001b\u0010-\u001a\u00020(8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R.\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00028\u0000058&X¦\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u0010<\u001a\u0002098&X¦\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;¨\u0006@"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;", "Event", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/x0;", "", "C0", "E0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "K0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "A0", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "B0", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "item", "I0", "", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "J0", "onDestroyView", "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "Lcom/qennnsad/aknkaksd/data/repository/m;", "y0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "M0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;", "g", "Lkotlin/Lazy;", "x0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;", "indexViewModel", "h", "Landroidx/paging/PagingDataAdapter;", "w0", "()Landroidx/paging/PagingDataAdapter;", "L0", "(Landroidx/paging/PagingDataAdapter;)V", "adapter", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;", "z0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;", "viewModel", "", "H0", "()Z", "isSmallGrid", "<init>", "()V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class AbstractAnchorFragment<Event> extends BaseMvvmFragment<x0, Event> {
    @u7.a

    /* renamed from: f  reason: collision with root package name */
    public com.qennnsad.aknkaksd.data.repository.m f51379f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f51380g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(IndexViewModel.class), new AbstractAnchorFragment$special$$inlined$activityViewModels$default$1(this), new AbstractAnchorFragment$special$$inlined$activityViewModels$default$2(null, this), new AbstractAnchorFragment$special$$inlined$activityViewModels$default$3(this));

    /* renamed from: h  reason: collision with root package name */
    public PagingDataAdapter<l, RecyclerView.ViewHolder> f51381h;

    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0001\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$a;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", t.b.f83859d, "", "getItemOffsets", "", "a", "I", "itemOffsetPx", "Landroid/content/Context;", "context", "itemOffset", "<init>", "(Landroid/content/Context;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ItemDecoration {

        /* renamed from: a  reason: collision with root package name */
        private final int f51386a;

        public a(@m8.g Context context, @DimenRes int i4) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.f51386a = context.getResources().getDimensionPixelSize(i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@m8.g Rect outRect, @m8.g View view, @m8.g RecyclerView parent, @m8.g RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(outRect, "outRect");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(state, "state");
            int i4 = this.f51386a;
            outRect.set(i4, i4, i4, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<l.b, Unit> {
        b(Object obj) {
            super(1, obj, AbstractAnchorFragment.class, "onAnchorClick", "onAnchorClick(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorItem$AnchorContentItem;)V", 0);
        }

        public final void a(@m8.g l.b p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((AbstractAnchorFragment) this.receiver).I0(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(l.b bVar) {
            a(bVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function2<String, UrlTarget, Unit> {
        c(Object obj) {
            super(2, obj, AbstractAnchorFragment.class, "onBannerAdClick", "onBannerAdClick(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V", 0);
        }

        public final void a(@m8.g String p02, @m8.h UrlTarget urlTarget) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((AbstractAnchorFragment) this.receiver).J0(p02, urlTarget);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d", "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;", "", "position", "getSpanSize", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbstractAnchorFragment<Event> f51387a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager f51388b;

        d(AbstractAnchorFragment<Event> abstractAnchorFragment, GridLayoutManager gridLayoutManager) {
            this.f51387a = abstractAnchorFragment;
            this.f51388b = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i4) {
            if (this.f51387a.w0().getItemViewType(i4) != 10) {
                return this.f51388b.getSpanCount();
            }
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"Event", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment$initViewModel$1", f = "AbstractAnchorFragment.kt", i = {}, l = {59}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51389a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AbstractAnchorFragment<Event> f51390b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AbstractAnchorFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"Event", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment$initViewModel$1$1", f = "AbstractAnchorFragment.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51391a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ AbstractAnchorFragment<Event> f51392b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: AbstractAnchorFragment.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"Event", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment$initViewModel$1$1$1", f = "AbstractAnchorFragment.kt", i = {}, l = {61}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0417a extends SuspendLambda implements Function2<PagingData<l>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f51393a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f51394b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ AbstractAnchorFragment<Event> f51395c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0417a(AbstractAnchorFragment<Event> abstractAnchorFragment, Continuation<? super C0417a> continuation) {
                    super(2, continuation);
                    this.f51395c = abstractAnchorFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0417a c0417a = new C0417a(this.f51395c, continuation);
                    c0417a.f51394b = obj;
                    return c0417a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g PagingData<l> pagingData, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0417a) create(pagingData, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f51393a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        PagingDataAdapter<l, RecyclerView.ViewHolder> w02 = this.f51395c.w0();
                        this.f51393a = 1;
                        if (w02.submitData((PagingData) this.f51394b, this) == coroutine_suspended) {
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AbstractAnchorFragment<Event> abstractAnchorFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51392b = abstractAnchorFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f51392b, continuation);
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
                int i4 = this.f51391a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    kotlinx.coroutines.flow.i<PagingData<l>> u9 = this.f51392b.z0().u();
                    C0417a c0417a = new C0417a(this.f51392b, null);
                    this.f51391a = 1;
                    if (kotlinx.coroutines.flow.k.A(u9, c0417a, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(AbstractAnchorFragment<Event> abstractAnchorFragment, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f51390b = abstractAnchorFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f51390b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51389a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                n0 c10 = i1.c();
                a aVar = new a(this.f51390b, null);
                this.f51389a = 1;
                if (kotlinx.coroutines.j.h(c10, aVar, this) == coroutine_suspended) {
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
    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Event", "", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<Unit, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbstractAnchorFragment<Event> f51396a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(AbstractAnchorFragment<Event> abstractAnchorFragment) {
            super(1);
            this.f51396a = abstractAnchorFragment;
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            this.f51396a.w0().refresh();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractAnchorFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class g extends FunctionReferenceImpl implements Function0<Unit> {
        g(Object obj) {
            super(0, obj, PagingDataAdapter.class, "refresh", "refresh()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((PagingDataAdapter) this.receiver).refresh();
        }
    }

    private final void C0() {
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new e(this, null), 3, null);
        x0().w().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AbstractAnchorFragment.D0(AbstractAnchorFragment.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(AbstractAnchorFragment this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.z0().y().setValue(bool);
    }

    private final void E0() {
        L0(A0());
        final x0 m02 = m0();
        RecyclerView recyclerView = m02.f63300f;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        recyclerView.addItemDecoration(new a(requireContext, R.dimen.anchors_grid_items_margin));
        recyclerView.setLayoutManager(B0());
        recyclerView.setAdapter(w0());
        final SwipeRefreshLayout swipeRefreshLayout = m02.f63301g;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "");
        s1.J(swipeRefreshLayout, new f(this));
        l0 l0Var = l0.f54819a;
        RecyclerView recommendAnchorRecycler = m02.f63300f;
        Intrinsics.checkNotNullExpressionValue(recommendAnchorRecycler, "recommendAnchorRecycler");
        final Function2<View, View, Unit> f10 = l0Var.f(swipeRefreshLayout, recommendAnchorRecycler, new g(w0()));
        z0().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AbstractAnchorFragment.F0(SwipeRefreshLayout.this, f10, m02, (Boolean) obj);
            }
        });
        final RecyclerView recyclerView2 = m02.f63300f;
        recyclerView2.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.c
            @Override // java.lang.Runnable
            public final void run() {
                AbstractAnchorFragment.G0(RecyclerView.this, this);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(SwipeRefreshLayout this_run, Function2 ptrDecorsTrigger, x0 this_with, Boolean it) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullParameter(ptrDecorsTrigger, "$ptrDecorsTrigger");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this_run.setRefreshing(it.booleanValue());
        ptrDecorsTrigger.invoke(this_with.f63299e, this_with.f63298d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(RecyclerView this_run, AbstractAnchorFragment this$0) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.LayoutManager layoutManager = this_run.getLayoutManager();
        if (layoutManager != null) {
            layoutManager.scrollToPosition(this$0.z0().z());
        }
    }

    @m8.g
    public PagingDataAdapter<l, RecyclerView.ViewHolder> A0() {
        return new j(b0(), y0(), H0(), Z(), new b(this), new c(this));
    }

    @m8.g
    public RecyclerView.LayoutManager B0() {
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), H0() ? 3 : 2);
        gridLayoutManager.setSpanSizeLookup(new d(this, gridLayoutManager));
        return gridLayoutManager;
    }

    public abstract boolean H0();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void I0(@m8.g l.b item) {
        List<l.b> filterIsInstance;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(item, "item");
        ItemSnapshotList<l> snapshot = w0().snapshot();
        if (!snapshot.isEmpty()) {
            DistrictType b10 = com.qennnsad.aknkaksd.presentation.module.main.index.c.b(z0().t());
            filterIsInstance = CollectionsKt___CollectionsJvmKt.filterIsInstance(snapshot, l.b.class);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(filterIsInstance, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (l.b bVar : filterIsInstance) {
                arrayList.add(bVar.d());
            }
            z4.a.e(b10, arrayList, true);
        }
        PlayerActivity.a aVar = PlayerActivity.f53641e3;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        aVar.b(requireActivity, item.d(), com.qennnsad.aknkaksd.presentation.module.main.index.c.b(z0().t()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void J0(@m8.g String url, @m8.h UrlTarget urlTarget) {
        Intrinsics.checkNotNullParameter(url, "url");
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.qennnsad.aknkaksd.util.l.z(requireActivity, url, urlTarget, false, false, 12, null);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: K0 */
    public x0 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        x0 d4 = x0.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void L0(@m8.g PagingDataAdapter<l, RecyclerView.ViewHolder> pagingDataAdapter) {
        Intrinsics.checkNotNullParameter(pagingDataAdapter, "<set-?>");
        this.f51381h = pagingDataAdapter;
    }

    public final void M0(@m8.g com.qennnsad.aknkaksd.data.repository.m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f51379f = mVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView.LayoutManager layoutManager = m0().f63300f.getLayoutManager();
        Integer num = null;
        if (layoutManager != null) {
            LinearLayoutManager linearLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
            if (linearLayoutManager == null) {
                linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            }
            if (linearLayoutManager != null) {
                num = Integer.valueOf(linearLayoutManager.findLastVisibleItemPosition());
            }
        }
        z0().B(num != null ? num.intValue() : 0);
        super.onDestroyView();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        E0();
        C0();
    }

    @m8.g
    public final PagingDataAdapter<l, RecyclerView.ViewHolder> w0() {
        PagingDataAdapter<l, RecyclerView.ViewHolder> pagingDataAdapter = this.f51381h;
        if (pagingDataAdapter != null) {
            return pagingDataAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @m8.g
    public final IndexViewModel x0() {
        return (IndexViewModel) this.f51380g.getValue();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m y0() {
        com.qennnsad.aknkaksd.data.repository.m mVar = this.f51379f;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @m8.g
    public abstract AbstractAnchorViewModel<Event> z0();
}
