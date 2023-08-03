package com.qennnsad.aknkaksd.presentation.module.rank.dialogs;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import androidx.paging.PagingDataTransforms;
import androidx.paging.PagingSource;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.other_user.g;
import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.module.rank.h;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;

/* compiled from: RankTodayViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B1\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R%\u0010\u001f\u001a\u0010\u0012\f\u0012\n \u001a*\u0004\u0018\u00010\u00190\u00190\u00188\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR \u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00020%0 8\u0006¢\u0006\f\n\u0004\b&\u0010#\u001a\u0004\b'\u0010(R)\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0+0*8\u0006¢\u0006\u0012\n\u0004\b-\u0010.\u0012\u0004\b1\u00102\u001a\u0004\b/\u00100¨\u00069"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$Event;", "", "userId", "", "w", "B", "Landroidx/lifecycle/SavedStateHandle;", "e", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "Lcom/qennnsad/aknkaksd/domain/usecase/h;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/h;", "getRanksUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "followUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "unfollowUserUseCase", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "j", "Landroidx/lifecycle/MutableLiveData;", y.b.f83919g, "()Landroidx/lifecycle/MutableLiveData;", "pagingLoading", "Lkotlinx/coroutines/flow/t;", "", "k", "Lkotlinx/coroutines/flow/t;", "follows", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "l", y.b.f83920h, "()Lkotlinx/coroutines/flow/t;", "rankType", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "m", "Lkotlinx/coroutines/flow/i;", "z", "()Lkotlinx/coroutines/flow/i;", "getRanks$annotations", "()V", "ranks", "Lg5/a;", "localDataManager", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class RankTodayViewModel extends l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final SavedStateHandle f52303e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.h f52304f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.g f52305g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final q f52306h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final g5.a f52307i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52308j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final kotlinx.coroutines.flow.t<List<String>> f52309k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final kotlinx.coroutines.flow.t<com.qennnsad.aknkaksd.presentation.module.rank.h> f52310l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<RankItem>> f52311m;

    /* compiled from: RankTodayViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    /* compiled from: RankTodayViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$followUser$1", f = "RankTodayViewModel.kt", i = {}, l = {48}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52317a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f52319c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f52319c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f52319c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            List plus;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52317a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar = RankTodayViewModel.this.f52305g;
                g.a aVar = new g.a(this.f52319c, null, 2, null);
                this.f52317a = 1;
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
            RankTodayViewModel rankTodayViewModel = RankTodayViewModel.this;
            String str = this.f52319c;
            if (Result.m77isSuccessimpl(b10)) {
                String str2 = (String) b10;
                rankTodayViewModel.o(R.string.follow_success);
                kotlinx.coroutines.flow.t tVar = rankTodayViewModel.f52309k;
                plus = CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) rankTodayViewModel.f52309k.getValue()), str);
                tVar.setValue(plus);
            }
            RankTodayViewModel rankTodayViewModel2 = RankTodayViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                rankTodayViewModel2.o(R.string.follow_error);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RankTodayViewModel.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<PagingSource<Integer, RankItem>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.presentation.module.rank.h f52321b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.qennnsad.aknkaksd.presentation.module.rank.h hVar) {
            super(0);
            this.f52321b = hVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, RankItem> invoke() {
            return new com.qennnsad.aknkaksd.presentation.module.rank.g(RankTodayViewModel.this.f52304f, this.f52321b, RankTodayViewModel.this.x());
        }
    }

    /* compiled from: RankTodayViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "pagingData", "", "", "list", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$ranks$2", f = "RankTodayViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function3<PagingData<RankItem>, List<? extends String>, Continuation<? super PagingData<RankItem>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52322a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f52323b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f52324c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RankTodayViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$ranks$2$1", f = "RankTodayViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<RankItem, Continuation<? super RankItem>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f52325a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f52326b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ List<String> f52327c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(List<String> list, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f52327c = list;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f52327c, continuation);
                aVar.f52326b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g RankItem rankItem, @m8.h Continuation<? super RankItem> continuation) {
                return ((a) create(rankItem, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                RankItem copy;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f52325a == 0) {
                    ResultKt.throwOnFailure(obj);
                    RankItem rankItem = (RankItem) this.f52326b;
                    copy = rankItem.copy((r30 & 1) != 0 ? rankItem.rankPosition : null, (r30 & 2) != 0 ? rankItem.userId : null, (r30 & 4) != 0 ? rankItem.nickname : null, (r30 & 8) != 0 ? rankItem.avatar : null, (r30 & 16) != 0 ? rankItem.sex : 0, (r30 & 32) != 0 ? rankItem.levelId : null, (r30 & 64) != 0 ? rankItem.peerageId : null, (r30 & 128) != 0 ? rankItem.isFollowed : Boxing.boxBoolean(this.f52327c.contains(rankItem.getUserId())), (r30 & 256) != 0 ? rankItem.coin : null, (r30 & 512) != 0 ? rankItem.wins : null, (r30 & 1024) != 0 ? rankItem.defeats : null, (r30 & 2048) != 0 ? rankItem.rating : null, (r30 & 4096) != 0 ? rankItem.game : null, (r30 & 8192) != 0 ? rankItem.mystery : 0);
                    return copy;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        c(Continuation<? super c> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g PagingData<RankItem> pagingData, @m8.g List<String> list, @m8.h Continuation<? super PagingData<RankItem>> continuation) {
            c cVar = new c(continuation);
            cVar.f52323b = pagingData;
            cVar.f52324c = list;
            return cVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52322a == 0) {
                ResultKt.throwOnFailure(obj);
                return PagingDataTransforms.map((PagingData) this.f52323b, new a((List) this.f52324c, null));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: RankTodayViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/j;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$ranks$3", f = "RankTodayViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function3<j<? super PagingData<RankItem>>, Throwable, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52328a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f52329b;

        d(Continuation<? super d> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        public final Object invoke(@m8.g j<? super PagingData<RankItem>> jVar, @m8.g Throwable th, @m8.h Continuation<? super Unit> continuation) {
            d dVar = new d(continuation);
            dVar.f52329b = th;
            return dVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52328a == 0) {
                ResultKt.throwOnFailure(obj);
                RankTodayViewModel.this.p(((Throwable) this.f52329b).getMessage());
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: RankTodayViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$unfollowUser$1", f = "RankTodayViewModel.kt", i = {}, l = {59}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52331a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f52333c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f52333c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f52333c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52331a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar = RankTodayViewModel.this.f52306h;
                q.a aVar = new q.a(this.f52333c, null, 2, null);
                this.f52331a = 1;
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
            RankTodayViewModel rankTodayViewModel = RankTodayViewModel.this;
            String str = this.f52333c;
            if (Result.m77isSuccessimpl(b10)) {
                String str2 = (String) b10;
                rankTodayViewModel.o(R.string.unfollow_success);
                kotlinx.coroutines.flow.t tVar = rankTodayViewModel.f52309k;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (Iterable) rankTodayViewModel.f52309k.getValue()) {
                    if (!Intrinsics.areEqual((String) obj2, str)) {
                        arrayList.add(obj2);
                    }
                }
                tVar.setValue(arrayList);
            }
            RankTodayViewModel rankTodayViewModel2 = RankTodayViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                rankTodayViewModel2.o(R.string.unfollow_error);
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public RankTodayViewModel(@m8.g SavedStateHandle state, @m8.g com.qennnsad.aknkaksd.domain.usecase.h getRanksUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.g followUserUseCase, @m8.g q unfollowUserUseCase, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(getRanksUseCase, "getRanksUseCase");
        Intrinsics.checkNotNullParameter(followUserUseCase, "followUserUseCase");
        Intrinsics.checkNotNullParameter(unfollowUserUseCase, "unfollowUserUseCase");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f52303e = state;
        this.f52304f = getRanksUseCase;
        this.f52305g = followUserUseCase;
        this.f52306h = unfollowUserUseCase;
        this.f52307i = localDataManager;
        this.f52308j = new MutableLiveData<>(Boolean.FALSE);
        UserBean C = localDataManager.C();
        Intrinsics.checkNotNull(C);
        kotlinx.coroutines.flow.t<List<String>> a10 = j0.a(C.getFollow_users());
        this.f52309k = a10;
        kotlinx.coroutines.flow.t<com.qennnsad.aknkaksd.presentation.module.rank.h> a11 = j0.a(new h.c((Integer) state.get(RankTodayDialog.f52269m)));
        this.f52310l = a11;
        this.f52311m = k.u(k.J0(CachedPagingDataKt.cachedIn(k.b2(a11, new RankTodayViewModel$special$$inlined$flatMapLatest$1(null, this)), ViewModelKt.getViewModelScope(this)), a10, new c(null)), new d(null));
    }

    public static /* synthetic */ void A() {
    }

    public final void B(@m8.g String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        k(d(), new e(userId, null));
    }

    public final void w(@m8.g String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        k(d(), new a(userId, null));
    }

    @m8.g
    public final MutableLiveData<Boolean> x() {
        return this.f52308j;
    }

    @m8.g
    public final kotlinx.coroutines.flow.t<com.qennnsad.aknkaksd.presentation.module.rank.h> y() {
        return this.f52310l;
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<PagingData<RankItem>> z() {
        return this.f52311m;
    }
}
