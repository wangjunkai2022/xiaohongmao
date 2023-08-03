package com.qennnsad.aknkaksd.presentation.module.rank;

import androidx.exifinterface.media.ExifInterface;
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
import com.qennnsad.aknkaksd.util.u;
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
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.s0;

/* compiled from: RankViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001<B9\b\u0007\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b:\u0010;J\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001e0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R%\u0010/\u001a\u0010\u0012\f\u0012\n **\u0004\u0018\u00010)0)0(8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R#\u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020201008\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106¨\u0006="}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$Event;", "", "w", "", "userId", y.b.f83919g, "B", "Landroidx/lifecycle/SavedStateHandle;", "e", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "Lcom/qennnsad/aknkaksd/domain/usecase/h;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/h;", "getRanksUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "followUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "unfollowUserUseCase", "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "j", "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "rankFlavorController", "Lkotlinx/coroutines/flow/t;", "", "k", "Lkotlinx/coroutines/flow/t;", "follows", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "z", "()Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "rankType", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "m", "Landroidx/lifecycle/MutableLiveData;", y.b.f83920h, "()Landroidx/lifecycle/MutableLiveData;", "pagingLoading", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "n", "Lkotlinx/coroutines/flow/i;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Lkotlinx/coroutines/flow/i;", "ranks", "Lg5/a;", "localDataManager", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class RankViewModel extends l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final SavedStateHandle f52199e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.h f52200f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.g f52201g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final q f52202h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final g5.a f52203i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.presentation.ui.main.y f52204j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final kotlinx.coroutines.flow.t<List<String>> f52205k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final h f52206l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52207m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<RankItem>> f52208n;

    /* compiled from: RankViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    /* compiled from: RankViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel$followUser$1", f = "RankViewModel.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52210a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f52212c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f52212c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f52212c, continuation);
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
            int i4 = this.f52210a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar = RankViewModel.this.f52201g;
                g.a aVar = new g.a(this.f52212c, null, 2, null);
                this.f52210a = 1;
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
            RankViewModel rankViewModel = RankViewModel.this;
            String str = this.f52212c;
            if (Result.m77isSuccessimpl(b10)) {
                String str2 = (String) b10;
                rankViewModel.o(R.string.follow_success);
                kotlinx.coroutines.flow.t tVar = rankViewModel.f52205k;
                plus = CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) rankViewModel.f52205k.getValue()), str);
                tVar.setValue(plus);
            }
            RankViewModel rankViewModel2 = RankViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                rankViewModel2.o(R.string.follow_error);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RankViewModel.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<PagingSource<Integer, RankItem>> {
        b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, RankItem> invoke() {
            return new g(RankViewModel.this.f52200f, RankViewModel.this.z(), RankViewModel.this.y());
        }
    }

    /* compiled from: RankViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "pagingData", "", "", "list", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel$ranks$2", f = "RankViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function3<PagingData<RankItem>, List<? extends String>, Continuation<? super PagingData<RankItem>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52214a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f52215b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f52216c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RankViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "it", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel$ranks$2$1", f = "RankViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<RankItem, Continuation<? super RankItem>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f52217a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f52218b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ List<String> f52219c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(List<String> list, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f52219c = list;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f52219c, continuation);
                aVar.f52218b = obj;
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
                if (this.f52217a == 0) {
                    ResultKt.throwOnFailure(obj);
                    RankItem rankItem = (RankItem) this.f52218b;
                    copy = rankItem.copy((r30 & 1) != 0 ? rankItem.rankPosition : null, (r30 & 2) != 0 ? rankItem.userId : null, (r30 & 4) != 0 ? rankItem.nickname : null, (r30 & 8) != 0 ? rankItem.avatar : null, (r30 & 16) != 0 ? rankItem.sex : 0, (r30 & 32) != 0 ? rankItem.levelId : null, (r30 & 64) != 0 ? rankItem.peerageId : null, (r30 & 128) != 0 ? rankItem.isFollowed : Boxing.boxBoolean(this.f52219c.contains(rankItem.getUserId())), (r30 & 256) != 0 ? rankItem.coin : null, (r30 & 512) != 0 ? rankItem.wins : null, (r30 & 1024) != 0 ? rankItem.defeats : null, (r30 & 2048) != 0 ? rankItem.rating : null, (r30 & 4096) != 0 ? rankItem.game : null, (r30 & 8192) != 0 ? rankItem.mystery : 0);
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
            cVar.f52215b = pagingData;
            cVar.f52216c = list;
            return cVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52214a == 0) {
                ResultKt.throwOnFailure(obj);
                return PagingDataTransforms.map((PagingData) this.f52215b, new a((List) this.f52216c, null));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: RankViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel$unfollowUser$1", f = "RankViewModel.kt", i = {}, l = {61}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52220a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f52222c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f52222c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f52222c, continuation);
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
            int i4 = this.f52220a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar = RankViewModel.this.f52202h;
                q.a aVar = new q.a(this.f52222c, null, 2, null);
                this.f52220a = 1;
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
            RankViewModel rankViewModel = RankViewModel.this;
            String str = this.f52222c;
            if (Result.m77isSuccessimpl(b10)) {
                String str2 = (String) b10;
                rankViewModel.o(R.string.unfollow_success);
                kotlinx.coroutines.flow.t tVar = rankViewModel.f52205k;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (Iterable) rankViewModel.f52205k.getValue()) {
                    if (!Intrinsics.areEqual((String) obj2, str)) {
                        arrayList.add(obj2);
                    }
                }
                tVar.setValue(arrayList);
            }
            RankViewModel rankViewModel2 = RankViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                rankViewModel2.o(R.string.unfollow_error);
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public RankViewModel(@m8.g SavedStateHandle state, @m8.g com.qennnsad.aknkaksd.domain.usecase.h getRanksUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.g followUserUseCase, @m8.g q unfollowUserUseCase, @m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.presentation.ui.main.y rankFlavorController) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(getRanksUseCase, "getRanksUseCase");
        Intrinsics.checkNotNullParameter(followUserUseCase, "followUserUseCase");
        Intrinsics.checkNotNullParameter(unfollowUserUseCase, "unfollowUserUseCase");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(rankFlavorController, "rankFlavorController");
        this.f52199e = state;
        this.f52200f = getRanksUseCase;
        this.f52201g = followUserUseCase;
        this.f52202h = unfollowUserUseCase;
        this.f52203i = localDataManager;
        this.f52204j = rankFlavorController;
        UserBean C = localDataManager.C();
        Intrinsics.checkNotNull(C);
        kotlinx.coroutines.flow.t<List<String>> a10 = j0.a(C.getFollow_users());
        this.f52205k = a10;
        Object obj = state.get(com.qennnsad.aknkaksd.presentation.module.rank.container.d.f52262a);
        Intrinsics.checkNotNull(obj);
        int intValue = ((Number) obj).intValue();
        Object obj2 = state.get(com.qennnsad.aknkaksd.presentation.module.rank.container.d.f52263b);
        Intrinsics.checkNotNull(obj2);
        this.f52206l = rankFlavorController.d(intValue, ((Number) obj2).intValue());
        this.f52207m = new MutableLiveData<>(Boolean.FALSE);
        this.f52208n = kotlinx.coroutines.flow.k.J0(CachedPagingDataKt.cachedIn(u.b(new b()).getFlow(), ViewModelKt.getViewModelScope(this)), a10, new c(null));
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<PagingData<RankItem>> A() {
        return this.f52208n;
    }

    public final void B(@m8.g String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        k(d(), new d(userId, null));
    }

    public final void w() {
        kotlinx.coroutines.flow.t<List<String>> tVar = this.f52205k;
        UserBean C = this.f52203i.C();
        Intrinsics.checkNotNull(C);
        tVar.setValue(C.getFollow_users());
    }

    public final void x(@m8.g String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        k(d(), new a(userId, null));
    }

    @m8.g
    public final MutableLiveData<Boolean> y() {
        return this.f52207m;
    }

    @m8.g
    public final h z() {
        return this.f52206l;
    }
}
