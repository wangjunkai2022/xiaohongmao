package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagingSource;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyPageFetcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.LegacyPageFetcher$scheduleLoad$1", f = "LegacyPageFetcher.kt", i = {0}, l = {53}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class LegacyPageFetcher$scheduleLoad$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ PagingSource.LoadParams<K> $params;
    final /* synthetic */ LoadType $type;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ LegacyPageFetcher<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LegacyPageFetcher.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.LegacyPageFetcher$scheduleLoad$1$1", f = "LegacyPageFetcher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.LegacyPageFetcher$scheduleLoad$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
        final /* synthetic */ LoadType $type;
        final /* synthetic */ PagingSource.LoadResult<K, V> $value;
        int label;
        final /* synthetic */ LegacyPageFetcher<K, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PagingSource.LoadResult<K, V> loadResult, LegacyPageFetcher<K, V> legacyPageFetcher, LoadType loadType, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$value = loadResult;
            this.this$0 = legacyPageFetcher;
            this.$type = loadType;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new AnonymousClass1(this.$value, this.this$0, this.$type, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.$value;
                if (obj2 instanceof PagingSource.LoadResult.Page) {
                    this.this$0.onLoadSuccess(this.$type, (PagingSource.LoadResult.Page) obj2);
                } else if (obj2 instanceof PagingSource.LoadResult.Error) {
                    this.this$0.onLoadError(this.$type, ((PagingSource.LoadResult.Error) obj2).getThrowable());
                } else if (obj2 instanceof PagingSource.LoadResult.Invalid) {
                    this.this$0.onLoadInvalid();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyPageFetcher$scheduleLoad$1(LegacyPageFetcher<K, V> legacyPageFetcher, PagingSource.LoadParams<K> loadParams, LoadType loadType, Continuation<? super LegacyPageFetcher$scheduleLoad$1> continuation) {
        super(2, continuation);
        this.this$0 = legacyPageFetcher;
        this.$params = loadParams;
        this.$type = loadType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        LegacyPageFetcher$scheduleLoad$1 legacyPageFetcher$scheduleLoad$1 = new LegacyPageFetcher$scheduleLoad$1(this.this$0, this.$params, this.$type, continuation);
        legacyPageFetcher$scheduleLoad$1.L$0 = obj;
        return legacyPageFetcher$scheduleLoad$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((LegacyPageFetcher$scheduleLoad$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        s0 s0Var;
        n0 n0Var;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            s0 s0Var2 = (s0) this.L$0;
            PagingSource source = this.this$0.getSource();
            Object obj2 = this.$params;
            this.L$0 = s0Var2;
            this.label = 1;
            Object load = source.load(obj2, this);
            if (load == coroutine_suspended) {
                return coroutine_suspended;
            }
            s0Var = s0Var2;
            obj = load;
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            s0Var = (s0) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        PagingSource.LoadResult loadResult = (PagingSource.LoadResult) obj;
        if (this.this$0.getSource().getInvalid()) {
            this.this$0.detach();
            return Unit.INSTANCE;
        }
        n0Var = ((LegacyPageFetcher) this.this$0).notifyDispatcher;
        l.f(s0Var, n0Var, null, new AnonymousClass1(loadResult, this.this$0, this.$type, null), 2, null);
        return Unit.INSTANCE;
    }
}
