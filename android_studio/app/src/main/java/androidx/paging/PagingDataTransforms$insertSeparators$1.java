package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.j;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.x1;
import m8.g;
import m8.h;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: PagingDataTransforms.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0005\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00028\u00002\b\u0010\u0003\u001a\u0004\u0018\u00018\u00012\b\u0010\u0004\u001a\u0004\u0018\u00018\u0001H\u008a@"}, d2 = {"", "R", ExifInterface.GPS_DIRECTION_TRUE, d.f25711c0, d.f25712d0, "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PagingDataTransforms$insertSeparators$1", f = "PagingDataTransforms.kt", i = {}, l = {261}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class PagingDataTransforms$insertSeparators$1 extends SuspendLambda implements Function3<T, T, Continuation<? super R>, Object> {
    final /* synthetic */ Executor $executor;
    final /* synthetic */ Function2<T, T, R> $generator;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PagingDataTransforms.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00028\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.PagingDataTransforms$insertSeparators$1$1", f = "PagingDataTransforms.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.PagingDataTransforms$insertSeparators$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<s0, Continuation<? super R>, Object> {
        final /* synthetic */ T $after;
        final /* synthetic */ T $before;
        final /* synthetic */ Function2<T, T, R> $generator;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function2<? super T, ? super T, ? extends R> function2, T t9, T t10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$generator = function2;
            this.$before = t9;
            this.$after = t10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new AnonymousClass1(this.$generator, this.$before, this.$after, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Object obj) {
            return invoke(s0Var, (Continuation) obj);
        }

        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super R> continuation) {
            return ((AnonymousClass1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return this.$generator.invoke(this.$before, this.$after);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PagingDataTransforms$insertSeparators$1(Executor executor, Function2<? super T, ? super T, ? extends R> function2, Continuation<? super PagingDataTransforms$insertSeparators$1> continuation) {
        super(3, continuation);
        this.$executor = executor;
        this.$generator = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke(obj, obj2, (Continuation) obj3);
    }

    @h
    public final Object invoke(@h T t9, @h T t10, @h Continuation<? super R> continuation) {
        PagingDataTransforms$insertSeparators$1 pagingDataTransforms$insertSeparators$1 = new PagingDataTransforms$insertSeparators$1(this.$executor, this.$generator, continuation);
        pagingDataTransforms$insertSeparators$1.L$0 = t9;
        pagingDataTransforms$insertSeparators$1.L$1 = t10;
        return pagingDataTransforms$insertSeparators$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.L$0;
            Object obj3 = this.L$1;
            n0 c10 = x1.c(this.$executor);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$generator, obj2, obj3, null);
            this.L$0 = null;
            this.label = 1;
            obj = j.h(c10, anonymousClass1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
