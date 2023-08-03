package com.qennnsad.aknkaksd.presentation.module.main.followers;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.navigation.ViewKt;
import androidx.navigation.fragment.FragmentKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.util.s1;
import e5.h1;
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
import kotlinx.coroutines.s0;

/* compiled from: FollowersFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b+\u0010,J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014R\u001b\u0010\u0018\u001a\u00020\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0015\u001a\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0015\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/h1;", "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/c;", "", "D0", "B0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "G0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "F0", "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;", "k", "Lkotlin/Lazy;", "A0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;", "y0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;", "H0", "(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;)V", "followersAdapter", "", "m", "z0", "()Ljava/lang/String;", "userId", "", "n", "E0", "()Z", "isFollowees", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class FollowersFragment extends m<h1, com.qennnsad.aknkaksd.presentation.module.main.followers.c> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f51591k;

    /* renamed from: l  reason: collision with root package name */
    public com.qennnsad.aknkaksd.presentation.module.main.followers.a f51592l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final Lazy f51593m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final Lazy f51594n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowersFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersFragment$initViewModel$1", f = "FollowersFragment.kt", i = {}, l = {99}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51602a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FollowersFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersFragment$initViewModel$1$1", f = "FollowersFragment.kt", i = {}, l = {100}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0419a extends SuspendLambda implements Function2<PagingData<UserInfo>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51604a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51605b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ FollowersFragment f51606c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0419a(FollowersFragment followersFragment, Continuation<? super C0419a> continuation) {
                super(2, continuation);
                this.f51606c = followersFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0419a c0419a = new C0419a(this.f51606c, continuation);
                c0419a.f51605b = obj;
                return c0419a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g PagingData<UserInfo> pagingData, @m8.h Continuation<? super Unit> continuation) {
                return ((C0419a) create(pagingData, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f51604a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.qennnsad.aknkaksd.presentation.module.main.followers.a y02 = this.f51606c.y0();
                    this.f51604a = 1;
                    if (y02.submitData((PagingData) this.f51605b, this) == coroutine_suspended) {
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
            int i4 = this.f51602a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<PagingData<UserInfo>> w9 = FollowersFragment.this.e0().w();
                C0419a c0419a = new C0419a(FollowersFragment.this, null);
                this.f51602a = 1;
                if (kotlinx.coroutines.flow.k.A(w9, c0419a, this) == coroutine_suspended) {
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
    /* compiled from: FollowersFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersFragment$initViewModel$2", f = "FollowersFragment.kt", i = {}, l = {104}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51607a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FollowersFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Landroidx/paging/CombinedLoadStates;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersFragment$initViewModel$2$1", f = "FollowersFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<CombinedLoadStates, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51609a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51610b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ FollowersFragment f51611c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(FollowersFragment followersFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51611c = followersFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f51611c, continuation);
                aVar.f51610b = obj;
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
                if (this.f51609a == 0) {
                    ResultKt.throwOnFailure(obj);
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) this.f51610b;
                    if (this.f51611c.isAdded() && this.f51611c.isVisible()) {
                        TextView textView = ((h1) this.f51611c.m0()).f62499g;
                        Intrinsics.checkNotNullExpressionValue(textView, "requireBinding().tvEmpty");
                        boolean z9 = true;
                        textView.setVisibility(((combinedLoadStates.getSource().getRefresh() instanceof LoadState.NotLoading) && combinedLoadStates.getAppend().getEndOfPaginationReached() && this.f51611c.y0().getItemCount() < 1) ? false : false ? 0 : 8);
                        return Unit.INSTANCE;
                    }
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
            int i4 = this.f51607a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<CombinedLoadStates> loadStateFlow = FollowersFragment.this.y0().getLoadStateFlow();
                a aVar = new a(FollowersFragment.this, null);
                this.f51607a = 1;
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
    /* compiled from: FollowersFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<UserInfo, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView f51612a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(RecyclerView recyclerView) {
            super(1);
            this.f51612a = recyclerView;
        }

        public final void a(@m8.g UserInfo it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.isMystery()) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.msg_mystery_profile_hidden, false, 2, null);
                return;
            }
            RecyclerView recyclerView = this.f51612a;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "");
            ViewKt.findNavController(recyclerView).navigate(R.id.toUserProfile, BundleKt.bundleOf(TuplesKt.to("user_id", it.getId())));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserInfo userInfo) {
            a(userInfo);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowersFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<Unit, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h1 f51614b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(h1 h1Var) {
            super(1);
            this.f51614b = h1Var;
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FollowersFragment.this.y0().refresh();
            this.f51614b.f62497e.setRefreshing(false);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowersFragment.kt */
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
            FragmentKt.findNavController(FollowersFragment.this).navigateUp();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowersFragment.kt */
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
            FragmentKt.findNavController(FollowersFragment.this).navigate(R.id.toSearchUser);
        }
    }

    /* compiled from: FollowersFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class g extends Lambda implements Function0<Boolean> {
        g() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(FollowersFragment.this.requireArguments().getBoolean(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a));
        }
    }

    /* compiled from: FollowersFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class h extends Lambda implements Function0<String> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            String string = FollowersFragment.this.requireArguments().getString("user_id");
            if (string != null) {
                return string;
            }
            throw new IllegalStateException("User ID can't be null".toString());
        }
    }

    public FollowersFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new FollowersFragment$special$$inlined$viewModels$default$2(new FollowersFragment$special$$inlined$viewModels$default$1(this)));
        this.f51591k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(FollowersViewModel.class), new FollowersFragment$special$$inlined$viewModels$default$3(lazy), new FollowersFragment$special$$inlined$viewModels$default$4(null, lazy), new FollowersFragment$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new h());
        this.f51593m = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new g());
        this.f51594n = lazy3;
    }

    private final void B0() {
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new a(null), 3, null);
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new b(null), 3, null);
        e0().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.module.main.followers.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FollowersFragment.C0(FollowersFragment.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(FollowersFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SwipeRefreshLayout swipeRefreshLayout = ((h1) this$0.m0()).f62497e;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        swipeRefreshLayout.setRefreshing(it.booleanValue());
    }

    private final void D0() {
        String id;
        q5.b.i(false, requireActivity());
        h1 h1Var = (h1) m0();
        RecyclerView recyclerView = h1Var.f62496d;
        recyclerView.addItemDecoration(com.github.magiepooh.recycleritemdecoration.c.b(requireContext()).g(0, R.drawable.divider_decoration_transparent_h1).a());
        com.qennnsad.aknkaksd.presentation.module.main.followers.a aVar = new com.qennnsad.aknkaksd.presentation.module.main.followers.a(e0().y(), new c(recyclerView));
        H0(aVar);
        recyclerView.setAdapter(aVar);
        SwipeRefreshLayout swipeRefreshLayout = h1Var.f62497e;
        Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "swipeRefreshLayout");
        s1.J(swipeRefreshLayout, new d(h1Var));
        ImageButton imgbtnToolbarBack = h1Var.f62494b;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new e(), 1, null);
        if (E0()) {
            h1Var.f62500h.setText(R.string.me_fans);
        }
        ImageView ivSearch = h1Var.f62495c;
        Intrinsics.checkNotNullExpressionValue(ivSearch, "ivSearch");
        s1.U(ivSearch, 0L, new f(), 1, null);
        ImageView ivSearch2 = h1Var.f62495c;
        Intrinsics.checkNotNullExpressionValue(ivSearch2, "ivSearch");
        ivSearch2.setVisibility(E0() ^ true ? 0 : 8);
        UserBean value = b0().f67821g.getValue();
        if (value == null || (id = value.getId()) == null) {
            return;
        }
        String string = getString(Intrinsics.areEqual(id, z0()) ? R.string.user_list_subject_me : R.string.user_list_subject_other);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\n             …bject_other\n            )");
        h1Var.f62499g.setText(getString(E0() ? R.string.user_list_no_followee : R.string.user_list_no_following, string));
    }

    private final boolean E0() {
        return ((Boolean) this.f51594n.getValue()).booleanValue();
    }

    private final String z0() {
        return (String) this.f51593m.getValue();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: A0 */
    public FollowersViewModel e0() {
        return (FollowersViewModel) this.f51591k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: F0 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.module.main.followers.c e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: G0 */
    public h1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        h1 d4 = h1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void H0(@m8.g com.qennnsad.aknkaksd.presentation.module.main.followers.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f51592l = aVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        D0();
        B0();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.presentation.module.main.followers.a y0() {
        com.qennnsad.aknkaksd.presentation.module.main.followers.a aVar = this.f51592l;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("followersAdapter");
        return null;
    }
}
