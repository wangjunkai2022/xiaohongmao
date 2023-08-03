package com.qennnsad.aknkaksd.presentation.module.main.search;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.FlowLiveDataConversions;
import androidx.lifecycle.MutableLiveData;
import androidx.paging.PagingData;
import androidx.paging.PagingDataTransforms;
import androidx.paging.PagingSource;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.AnchorSummary;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.anchor.p;
import com.qennnsad.aknkaksd.domain.usecase.other_user.g;
import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.s0;

/* compiled from: SearchUserViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B9\b\u0007\u0012\u0006\u00107\u001a\u000206\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b:\u0010;J\u001c\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u001c\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001f\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R%\u0010)\u001a\u0010\u0012\f\u0012\n $*\u0004\u0018\u00010\u00030\u00030#8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R#\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0+0*8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R%\u00105\u001a\u0010\u0012\f\u0012\n $*\u0004\u0018\u000102020#8\u0006¢\u0006\f\n\u0004\b3\u0010&\u001a\u0004\b4\u0010(¨\u0006<"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;", "", "userId", "Lkotlin/Function0;", "", "onSuccess", "w", "C", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "B", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;", "getPageListForSearchUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "followUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "unfollowUserUseCase", "Lkotlinx/coroutines/flow/t;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "j", "Lkotlinx/coroutines/flow/t;", y.b.f83919g, "()Lkotlinx/coroutines/flow/t;", "currentUser", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "k", "Landroidx/lifecycle/MutableLiveData;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Landroidx/lifecycle/MutableLiveData;", "searchQuery", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "l", "Lkotlinx/coroutines/flow/i;", y.b.f83920h, "()Lkotlinx/coroutines/flow/i;", "displayList", "", "m", "z", "loadingPaging", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SearchUserViewModel extends com.qennnsad.aknkaksd.presentation.common.l<e> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51975e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final x4.a f51976f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final p f51977g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.g f51978h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final q f51979i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final t<UserBean> f51980j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final MutableLiveData<String> f51981k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b>> f51982l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51983m;

    /* compiled from: SearchUserViewModel.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<PagingSource<Integer, AnchorSummary>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51989b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(0);
            this.f51989b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, AnchorSummary> invoke() {
            p pVar = SearchUserViewModel.this.f51977g;
            String it = this.f51989b;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            return new j(pVar, it, SearchUserViewModel.this.z());
        }
    }

    /* compiled from: SearchUserViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "pagingData", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$displayList$1$2", f = "SearchUserViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function3<PagingData<AnchorSummary>, UserBean, Continuation<? super PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51990a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f51991b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f51992c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SearchUserViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "it", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$displayList$1$2$1", f = "SearchUserViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<AnchorSummary, Continuation<? super com.qennnsad.aknkaksd.presentation.module.main.search.b>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51993a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f51994b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ UserBean f51995c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserBean userBean, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51995c = userBean;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f51995c, continuation);
                aVar.f51994b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g AnchorSummary anchorSummary, @m8.h Continuation<? super com.qennnsad.aknkaksd.presentation.module.main.search.b> continuation) {
                return ((a) create(anchorSummary, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                List<String> follow_users;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f51993a == 0) {
                    ResultKt.throwOnFailure(obj);
                    AnchorSummary anchorSummary = (AnchorSummary) this.f51994b;
                    UserBean userBean = this.f51995c;
                    boolean z9 = true;
                    return new com.qennnsad.aknkaksd.presentation.module.main.search.b(anchorSummary, (userBean == null || (follow_users = userBean.getFollow_users()) == null || !follow_users.contains(anchorSummary.getId())) ? false : false);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Continuation<? super b> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g PagingData<AnchorSummary> pagingData, @m8.h UserBean userBean, @m8.h Continuation<? super PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b>> continuation) {
            b bVar = new b(continuation);
            bVar.f51991b = pagingData;
            bVar.f51992c = userBean;
            return bVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f51990a == 0) {
                ResultKt.throwOnFailure(obj);
                return PagingDataTransforms.map((PagingData) this.f51991b, new a((UserBean) this.f51992c, null));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: SearchUserViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$followUser$1", f = "SearchUserViewModel.kt", i = {}, l = {52}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51996a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51998c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f51999d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, Function0<Unit> function0, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f51998c = str;
            this.f51999d = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f51998c, this.f51999d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51996a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar = SearchUserViewModel.this.f51978h;
                g.a aVar = new g.a(this.f51998c, null, 2, null);
                this.f51996a = 1;
                b10 = gVar.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SearchUserViewModel searchUserViewModel = SearchUserViewModel.this;
            Function0<Unit> function0 = this.f51999d;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                searchUserViewModel.o(R.string.follow_success);
                function0.invoke();
            }
            SearchUserViewModel searchUserViewModel2 = SearchUserViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                searchUserViewModel2.o(R.string.follow_error);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SearchUserViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$unfollowUser$1", f = "SearchUserViewModel.kt", i = {}, l = {61}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52000a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f52002c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f52003d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Function0<Unit> function0, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f52002c = str;
            this.f52003d = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f52002c, this.f52003d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52000a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar = SearchUserViewModel.this.f51979i;
                q.a aVar = new q.a(this.f52002c, null, 2, null);
                this.f52000a = 1;
                b10 = qVar.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            SearchUserViewModel searchUserViewModel = SearchUserViewModel.this;
            Function0<Unit> function0 = this.f52003d;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                searchUserViewModel.o(R.string.unfollow_success);
                function0.invoke();
            }
            SearchUserViewModel searchUserViewModel2 = SearchUserViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                searchUserViewModel2.o(R.string.unfollow_error);
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public SearchUserViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g x4.a analytics, @m8.g p getPageListForSearchUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.g followUserUseCase, @m8.g q unfollowUserUseCase) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(getPageListForSearchUseCase, "getPageListForSearchUseCase");
        Intrinsics.checkNotNullParameter(followUserUseCase, "followUserUseCase");
        Intrinsics.checkNotNullParameter(unfollowUserUseCase, "unfollowUserUseCase");
        this.f51975e = sourceFactory;
        this.f51976f = analytics;
        this.f51977g = getPageListForSearchUseCase;
        this.f51978h = followUserUseCase;
        this.f51979i = unfollowUserUseCase;
        this.f51980j = localDataManager.f67821g;
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>("");
        this.f51981k = mutableLiveData;
        this.f51982l = kotlinx.coroutines.flow.k.b2(FlowLiveDataConversions.asFlow(mutableLiveData), new SearchUserViewModel$special$$inlined$flatMapLatest$1(null, this));
        this.f51983m = new MutableLiveData<>(Boolean.FALSE);
    }

    @m8.g
    public final MutableLiveData<String> A() {
        return this.f51981k;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m B() {
        return this.f51975e;
    }

    public final void C(@m8.g String userId, @m8.g Function0<Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        k(d(), new d(userId, onSuccess, null));
    }

    public final void w(@m8.g String userId, @m8.g Function0<Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        k(d(), new c(userId, onSuccess, null));
    }

    @m8.g
    public final t<UserBean> x() {
        return this.f51980j;
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<PagingData<com.qennnsad.aknkaksd.presentation.module.main.search.b>> y() {
        return this.f51982l;
    }

    @m8.g
    public final MutableLiveData<Boolean> z() {
        return this.f51983m;
    }
}
