package com.qennnsad.aknkaksd.presentation.module.main.search;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.navigation.ViewKt;
import androidx.navigation.fragment.FragmentKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.AnchorSummary;
import com.qennnsad.aknkaksd.util.s1;
import e5.t1;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.s0;

/* compiled from: SearchUserFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014R\u001b\u0010\u0018\u001a\u00020\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/t1;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;", "", "D0", "B0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "G0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "F0", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;", "k", "Lkotlin/Lazy;", "A0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;", "z0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;", "H0", "(Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;)V", "searchAdapter", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class SearchUserFragment extends com.qennnsad.aknkaksd.presentation.module.main.search.a<t1, com.qennnsad.aknkaksd.presentation.module.main.search.e> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51947k;

    /* renamed from: l  reason: collision with root package name */
    public com.qennnsad.aknkaksd.presentation.module.main.search.c f51948l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserFragment$initViewModel$1", f = "SearchUserFragment.kt", i = {}, l = {103}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51956a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SearchUserFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserFragment$initViewModel$1$1", f = "SearchUserFragment.kt", i = {}, l = {104}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0424a extends SuspendLambda implements Function2<PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51958a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51959b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ SearchUserFragment f51960c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0424a(SearchUserFragment searchUserFragment, Continuation<? super C0424a> continuation) {
                super(2, continuation);
                this.f51960c = searchUserFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0424a c0424a = new C0424a(this.f51960c, continuation);
                c0424a.f51959b = obj;
                return c0424a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b> pagingData, @m8.h Continuation<? super Unit> continuation) {
                return ((C0424a) create(pagingData, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f51958a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.qennnsad.aknkaksd.presentation.module.main.search.c z02 = this.f51960c.z0();
                    this.f51958a = 1;
                    if (z02.submitData((PagingData) this.f51959b, this) == coroutine_suspended) {
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

        a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(continuation);
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
            int i4 = this.f51956a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b>> y9 = SearchUserFragment.this.e0().y();
                C0424a c0424a = new C0424a(SearchUserFragment.this, null);
                this.f51956a = 1;
                if (kotlinx.coroutines.flow.k.A(y9, c0424a, this) == coroutine_suspended) {
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
    /* compiled from: SearchUserFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserFragment$initViewModel$2", f = "SearchUserFragment.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51961a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SearchUserFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Landroidx/paging/CombinedLoadStates;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserFragment$initViewModel$2$1", f = "SearchUserFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<CombinedLoadStates, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51963a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51964b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ SearchUserFragment f51965c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(SearchUserFragment searchUserFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51965c = searchUserFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f51965c, continuation);
                aVar.f51964b = obj;
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
                if (this.f51963a == 0) {
                    ResultKt.throwOnFailure(obj);
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) this.f51964b;
                    TextView textView = ((t1) this.f51965c.m0()).f63150g;
                    Intrinsics.checkNotNullExpressionValue(textView, "requireBinding().tvEmpty");
                    boolean z9 = true;
                    textView.setVisibility(((combinedLoadStates.getSource().getRefresh() instanceof LoadState.NotLoading) && combinedLoadStates.getAppend().getEndOfPaginationReached() && this.f51965c.z0().getItemCount() < 1) ? false : false ? 0 : 8);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
            int i4 = this.f51961a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<CombinedLoadStates> loadStateFlow = SearchUserFragment.this.z0().getLoadStateFlow();
                a aVar = new a(SearchUserFragment.this, null);
                this.f51961a = 1;
                if (kotlinx.coroutines.flow.k.A(loadStateFlow, aVar, this) == coroutine_suspended) {
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
    /* compiled from: SearchUserFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<AnchorSummary, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView f51966a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(RecyclerView recyclerView) {
            super(1);
            this.f51966a = recyclerView;
        }

        public final void a(@m8.g AnchorSummary it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.isMystery()) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.msg_mystery_profile_hidden, false, 2, null);
                return;
            }
            RecyclerView recyclerView = this.f51966a;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "");
            ViewKt.findNavController(recyclerView).navigate(R.id.toUserProfile, BundleKt.bundleOf(TuplesKt.to("user_id", it.getId())));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(AnchorSummary anchorSummary) {
            a(anchorSummary);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "it", "Lkotlin/Function0;", "", "onSuccess", "a", "(Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;Lkotlin/jvm/functions/Function0;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<com.qennnsad.aknkaksd.presentation.module.main.search.b, Function0<? extends Unit>, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SearchUserFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0<Unit> f51968a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Function0<Unit> function0) {
                super(0);
                this.f51968a = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f51968a.invoke();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SearchUserFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0<Unit> f51969a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Function0<Unit> function0) {
                super(0);
                this.f51969a = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f51969a.invoke();
            }
        }

        d() {
            super(2);
        }

        public final void a(@m8.g com.qennnsad.aknkaksd.presentation.module.main.search.b it, @m8.g Function0<Unit> onSuccess) {
            Intrinsics.checkNotNullParameter(it, "it");
            Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
            if (it.f()) {
                SearchUserViewModel e02 = SearchUserFragment.this.e0();
                String id = it.e().getId();
                Intrinsics.checkNotNullExpressionValue(id, "it.anchorSummary.id");
                e02.C(id, new a(onSuccess));
                return;
            }
            SearchUserViewModel e03 = SearchUserFragment.this.e0();
            String id2 = it.e().getId();
            Intrinsics.checkNotNullExpressionValue(id2, "it.anchorSummary.id");
            e03.w(id2, new b(onSuccess));
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.qennnsad.aknkaksd.presentation.module.main.search.b bVar, Function0<? extends Unit> function0) {
            a(bVar, function0);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<Unit, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ t1 f51971b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(t1 t1Var) {
            super(1);
            this.f51971b = t1Var;
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SearchUserFragment.this.z0().refresh();
            this.f51971b.f63148e.setRefreshing(false);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SearchUserFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$f", "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;", "", s2.d.f93273b, "", "onQueryTextSubmit", "newText", "onQueryTextChange", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f implements SearchView.OnQueryTextListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SearchView f51973b;

        f(SearchView searchView) {
            this.f51973b = searchView;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(@m8.g String newText) {
            Intrinsics.checkNotNullParameter(newText, "newText");
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(@m8.g String query) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(query, "query");
            MutableLiveData<String> A = SearchUserFragment.this.e0().A();
            trim = StringsKt__StringsKt.trim((CharSequence) this.f51973b.getQuery().toString());
            A.postValue(trim.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserFragment.kt */
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
            FragmentKt.findNavController(SearchUserFragment.this).navigateUp();
        }
    }

    public SearchUserFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new SearchUserFragment$special$$inlined$viewModels$default$2(new SearchUserFragment$special$$inlined$viewModels$default$1(this)));
        this.f51947k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SearchUserViewModel.class), new SearchUserFragment$special$$inlined$viewModels$default$3(lazy), new SearchUserFragment$special$$inlined$viewModels$default$4(null, lazy), new SearchUserFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void B0() {
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new a(null), 3, null);
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new b(null), 3, null);
        e0().z().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.search.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SearchUserFragment.C0(SearchUserFragment.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(SearchUserFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SwipeRefreshLayout swipeRefreshLayout = ((t1) this$0.m0()).f63148e;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    private final void D0() {
        q5.b.i(true, requireActivity());
        t1 t1Var = (t1) m0();
        RecyclerView recyclerView = t1Var.f63146c;
        recyclerView.addItemDecoration(com.github.magiepooh.recycleritemdecoration.c.b(requireContext()).g(0, R.drawable.divider_decoration_transparent_h1).a());
        com.qennnsad.aknkaksd.presentation.module.main.search.c cVar = new com.qennnsad.aknkaksd.presentation.module.main.search.c(e0().B(), new c(recyclerView), new d());
        H0(cVar);
        recyclerView.setAdapter(cVar);
        SwipeRefreshLayout swipeRefreshLayout = t1Var.f63148e;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "swipeRefreshLayout");
        s1.J(swipeRefreshLayout, new e(t1Var));
        final SearchView searchView = t1Var.f63147d;
        searchView.setOnQueryTextListener(new f(searchView));
        searchView.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.search.g
            @Override // java.lang.Runnable
            public final void run() {
                SearchUserFragment.E0(SearchUserFragment.this, searchView);
            }
        }, 200L);
        TextView tvTitle = t1Var.f63151h;
        Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
        s1.U(tvTitle, 0L, new g(), 1, null);
        ImageView ivAd = t1Var.f63145b;
        Intrinsics.checkNotNullExpressionValue(ivAd, "ivAd");
        s1.m(ivAd, b0().b().getSearchUser(), e0().B(), Z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(SearchUserFragment this$0, SearchView this_apply) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            Window window = activity.getWindow();
            Intrinsics.checkNotNullExpressionValue(window, "it.window");
            com.im.freechat.extend.f.y(this_apply, window);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: A0 */
    public SearchUserViewModel e0() {
        return (SearchUserViewModel) this.f51947k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: F0 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.main.search.e e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: G0 */
    public t1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        t1 d4 = t1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void H0(@m8.g com.qennnsad.aknkaksd.presentation.module.main.search.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.f51948l = cVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        D0();
        B0();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.presentation.module.main.search.c z0() {
        com.qennnsad.aknkaksd.presentation.module.main.search.c cVar = this.f51948l;
        if (cVar != null) {
            return cVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("searchAdapter");
        return null;
    }
}
