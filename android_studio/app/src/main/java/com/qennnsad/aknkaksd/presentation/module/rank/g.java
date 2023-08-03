package com.qennnsad.aknkaksd.presentation.module.rank;

import androidx.lifecycle.MutableLiveData;
import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import com.googlecode.mp4parser.boxes.apple.x0;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;

/* compiled from: RankPagingSource.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0012R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/g;", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "Landroidx/paging/PagingState;", t.b.f83859d, "b", "(Landroidx/paging/PagingState;)Ljava/lang/Integer;", "Landroidx/paging/PagingSource$LoadParams;", "params", "Landroidx/paging/PagingSource$LoadResult;", x0.f36550r, "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/qennnsad/aknkaksd/domain/usecase/h;", "a", "Lcom/qennnsad/aknkaksd/domain/usecase/h;", "getRanksUseCase", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "rankType", "Landroidx/lifecycle/MutableLiveData;", "", "c", "Landroidx/lifecycle/MutableLiveData;", "loading", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/presentation/module/rank/h;Landroidx/lifecycle/MutableLiveData;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends PagingSource<Integer, RankItem> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.h f52355a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final h f52356b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52357c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankPagingSource.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankPagingSource", f = "RankPagingSource.kt", i = {0, 0, 1, 1, 1, 2, 2, 2, 3}, l = {25, 27, 28, 42, 45}, m = x0.f36550r, n = {"this", "params", "this", "params", "pageNumber", "params", "result", "pageNumber", "it"}, s = {"L$0", "L$1", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f52358a;

        /* renamed from: b  reason: collision with root package name */
        Object f52359b;

        /* renamed from: c  reason: collision with root package name */
        int f52360c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f52361d;

        /* renamed from: f  reason: collision with root package name */
        int f52363f;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f52361d = obj;
            this.f52363f |= Integer.MIN_VALUE;
            return g.this.load(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankPagingSource.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankPagingSource$load$2", f = "RankPagingSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52364a;

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
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52364a == 0) {
                ResultKt.throwOnFailure(obj);
                g.this.f52357c.setValue(Boxing.boxBoolean(true));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankPagingSource.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankPagingSource$load$3$1", f = "RankPagingSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52366a;

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
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52366a == 0) {
                ResultKt.throwOnFailure(obj);
                g.this.f52357c.setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankPagingSource.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankPagingSource$load$4$1", f = "RankPagingSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52368a;

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
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52368a == 0) {
                ResultKt.throwOnFailure(obj);
                g.this.f52357c.setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankPagingSource.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.RankPagingSource$load$5", f = "RankPagingSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52370a;

        e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52370a == 0) {
                ResultKt.throwOnFailure(obj);
                g.this.f52357c.setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public g(@m8.g com.qennnsad.aknkaksd.domain.usecase.h getRanksUseCase, @m8.g h rankType, @m8.g MutableLiveData<Boolean> loading) {
        Intrinsics.checkNotNullParameter(getRanksUseCase, "getRanksUseCase");
        Intrinsics.checkNotNullParameter(rankType, "rankType");
        Intrinsics.checkNotNullParameter(loading, "loading");
        this.f52355a = getRanksUseCase;
        this.f52356b = rankType;
        this.f52357c = loading;
    }

    @Override // androidx.paging.PagingSource
    @m8.h
    /* renamed from: b */
    public Integer getRefreshKey(@m8.g PagingState<Integer, RankItem> state) {
        Integer nextKey;
        int intValue;
        Integer prevKey;
        Intrinsics.checkNotNullParameter(state, "state");
        Integer anchorPosition = state.getAnchorPosition();
        if (anchorPosition != null) {
            PagingSource.LoadResult.Page<Integer, RankItem> closestPageToPosition = state.closestPageToPosition(anchorPosition.intValue());
            if (closestPageToPosition != null && (prevKey = closestPageToPosition.getPrevKey()) != null) {
                intValue = prevKey.intValue() + 1;
            } else if (closestPageToPosition == null || (nextKey = closestPageToPosition.getNextKey()) == null) {
                return null;
            } else {
                intValue = nextKey.intValue() - 1;
            }
            return Integer.valueOf(intValue);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x019c  */
    @Override // androidx.paging.PagingSource
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object load(@m8.g androidx.paging.PagingSource.LoadParams<java.lang.Integer> r30, @m8.g kotlin.coroutines.Continuation<? super androidx.paging.PagingSource.LoadResult<java.lang.Integer, com.qennnsad.aknkaksd.data.bean.RankItem>> r31) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.rank.g.load(androidx.paging.PagingSource$LoadParams, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
