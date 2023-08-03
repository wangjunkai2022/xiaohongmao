package com.qennnsad.aknkaksd.presentation.module.contributors;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import androidx.paging.PagingSource;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.user.w;
import com.qennnsad.aknkaksd.util.u;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;

/* compiled from: ContributorsViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B1\b\u0007\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0006\u0010\t\u001a\u00020\u0005R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R%\u0010!\u001a\u0010\u0012\f\u0012\n \u001c*\u0004\u0018\u00010\u001b0\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R%\u0010$\u001a\u0010\u0012\f\u0012\n \u001c*\u0004\u0018\u00010\u00160\u00160\u001a8\u0006¢\u0006\f\n\u0004\b\"\u0010\u001e\u001a\u0004\b#\u0010 R#\u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0&0%8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u00064"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$Event;", "", "coins", "", "D", "C", "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/qennnsad/aknkaksd/domain/usecase/b;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/b;", "getContributorsUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;", "getUserInfoUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;", "syncMeUserUseCase", "", ContextChain.TAG_INFRA, "Ljava/lang/String;", "userId", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "j", "Landroidx/lifecycle/MutableLiveData;", y.b.f83920h, "()Landroidx/lifecycle/MutableLiveData;", "loadingPaging", "k", y.b.f83919g, "coinBalance", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "l", "Lkotlinx/coroutines/flow/i;", "z", "()Lkotlinx/coroutines/flow/i;", "ranks", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "Lg5/a;", "localDataManager", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/b;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lg5/a;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ContributorsViewModel extends com.qennnsad.aknkaksd.presentation.common.l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.b f51316e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.j f51317f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final w f51318g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final g5.a f51319h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final String f51320i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51321j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final MutableLiveData<String> f51322k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<RankItem>> f51323l;

    /* compiled from: ContributorsViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsViewModel$loadMyInfo$1", f = "ContributorsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51325a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContributorsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0416a extends Lambda implements Function1<UserBean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ContributorsViewModel f51327a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0416a(ContributorsViewModel contributorsViewModel) {
                super(1);
                this.f51327a = contributorsViewModel;
            }

            public final void a(@m8.g UserBean it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f51327a.D(it.getBeanorignal());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(UserBean userBean) {
                a(userBean);
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
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f51325a == 0) {
                ResultKt.throwOnFailure(obj);
                ContributorsViewModel contributorsViewModel = ContributorsViewModel.this;
                w wVar = contributorsViewModel.f51318g;
                Unit unit = Unit.INSTANCE;
                com.qennnsad.aknkaksd.presentation.common.l.i(contributorsViewModel, wVar, null, unit, new C0416a(ContributorsViewModel.this), 1, null);
                return unit;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsViewModel$loadUserInfo$1", f = "ContributorsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51328a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContributorsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<UserInfo, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ContributorsViewModel f51330a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ContributorsViewModel contributorsViewModel) {
                super(1);
                this.f51330a = contributorsViewModel;
            }

            public final void a(@m8.g UserInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f51330a.D(it.getBeanorignal());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(UserInfo userInfo) {
                a(userInfo);
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
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f51328a == 0) {
                ResultKt.throwOnFailure(obj);
                ContributorsViewModel contributorsViewModel = ContributorsViewModel.this;
                com.qennnsad.aknkaksd.presentation.common.l.i(contributorsViewModel, contributorsViewModel.f51317f, null, ContributorsViewModel.this.f51320i.toString(), new a(ContributorsViewModel.this), 1, null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: ContributorsViewModel.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<PagingSource<Integer, RankItem>> {
        c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, RankItem> invoke() {
            return new i(ContributorsViewModel.this.f51316e, ContributorsViewModel.this.f51320i, ContributorsViewModel.this.y());
        }
    }

    @u7.a
    public ContributorsViewModel(@m8.g SavedStateHandle state, @m8.g com.qennnsad.aknkaksd.domain.usecase.b getContributorsUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.j getUserInfoUseCase, @m8.g w syncMeUserUseCase, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(getContributorsUseCase, "getContributorsUseCase");
        Intrinsics.checkNotNullParameter(getUserInfoUseCase, "getUserInfoUseCase");
        Intrinsics.checkNotNullParameter(syncMeUserUseCase, "syncMeUserUseCase");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f51316e = getContributorsUseCase;
        this.f51317f = getUserInfoUseCase;
        this.f51318g = syncMeUserUseCase;
        this.f51319h = localDataManager;
        String str = (String) state.get(com.qennnsad.aknkaksd.presentation.module.contributors.a.f51336a);
        if (str != null) {
            this.f51320i = str;
            this.f51321j = new MutableLiveData<>(Boolean.FALSE);
            this.f51322k = new MutableLiveData<>("...");
            this.f51323l = CachedPagingDataKt.cachedIn(u.b(new c()).getFlow(), ViewModelKt.getViewModelScope(this));
            return;
        }
        throw new IllegalStateException("User ID cant be null".toString());
    }

    private final void B() {
        k(d(), new a(null));
    }

    private final void C() {
        k(d(), new b(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(double d4) {
        this.f51322k.postValue(new DecimalFormat("#").format(d4));
    }

    public final void A() {
        String str = this.f51320i;
        UserBean C = this.f51319h.C();
        Intrinsics.checkNotNull(C);
        if (Intrinsics.areEqual(str, C.getId())) {
            B();
        } else {
            C();
        }
    }

    @m8.g
    public final MutableLiveData<String> x() {
        return this.f51322k;
    }

    @m8.g
    public final MutableLiveData<Boolean> y() {
        return this.f51321j;
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<PagingData<RankItem>> z() {
        return this.f51323l;
    }
}
