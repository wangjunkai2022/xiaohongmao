package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.s0;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: E
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Channels.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a.\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/j0;", "element", "Lkotlinx/coroutines/channels/q;", "", "b", "(Lkotlinx/coroutines/channels/j0;Ljava/lang/Object;)Ljava/lang/Object;", "a", "(Lkotlinx/coroutines/channels/j0;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/channels/ChannelsKt")
/* loaded from: classes4.dex */
final /* synthetic */ class s {

    /* compiled from: Channels.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$sendBlocking$1", f = "Channels.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f84914a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j0<E> f84915b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ E f84916c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(j0<? super E> j0Var, E e4, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f84915b = j0Var;
            this.f84916c = e4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f84915b, this.f84916c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f84914a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                j0<E> j0Var = this.f84915b;
                E e4 = this.f84916c;
                this.f84914a = 1;
                if (j0Var.send(e4, this) == coroutine_suspended) {
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

    /* compiled from: Channels.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/channels/q;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super q<? extends Unit>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f84917a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f84918b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ j0<E> f84919c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ E f84920d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(j0<? super E> j0Var, E e4, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f84919c = j0Var;
            this.f84920d = e4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f84919c, this.f84920d, continuation);
            bVar.f84918b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super q<? extends Unit>> continuation) {
            return invoke2(s0Var, (Continuation<? super q<Unit>>) continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super q<Unit>> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object m70constructorimpl;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f84917a;
            try {
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    s0 s0Var = (s0) this.f84918b;
                    j0<E> j0Var = this.f84919c;
                    E e4 = this.f84920d;
                    Result.Companion companion = Result.Companion;
                    this.f84917a = 1;
                    if (j0Var.send(e4, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                m70constructorimpl = Result.m70constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
            }
            return q.b(Result.m77isSuccessimpl(m70constructorimpl) ? q.f84909b.c(Unit.INSTANCE) : q.f84909b.a(Result.m73exceptionOrNullimpl(m70constructorimpl)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    public static final <E> void a(@m8.g j0<? super E> j0Var, E e4) {
        if (q.m(j0Var.mo51trySendJP2dKIU(e4))) {
            return;
        }
        kotlinx.coroutines.k.b(null, new a(j0Var, e4, null), 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.g
    public static final <E> Object b(@m8.g j0<? super E> j0Var, E e4) {
        Object b10;
        Object mo51trySendJP2dKIU = j0Var.mo51trySendJP2dKIU(e4);
        if (!(mo51trySendJP2dKIU instanceof q.c)) {
            Unit unit = (Unit) mo51trySendJP2dKIU;
            return q.f84909b.c(Unit.INSTANCE);
        }
        b10 = kotlinx.coroutines.k.b(null, new b(j0Var, e4, null), 1, null);
        return ((q) b10).o();
    }
}
