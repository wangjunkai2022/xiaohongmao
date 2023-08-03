package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.o0;
import kotlinx.coroutines.y1;

/* compiled from: Channel.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H¦@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H&ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH¦\u0002J\u001a\u0010\u000f\u001a\u00020\u000e2\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH&J\b\u0010\u0010\u001a\u00020\u000eH\u0017J\u0014\u0010\u0013\u001a\u00020\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0011H'J\u0011\u0010\u0014\u001a\u0004\u0018\u00018\u0000H\u0017¢\u0006\u0004\b\u0014\u0010\bJ\u0015\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0004R\u001a\u0010\u001a\u001a\u00020\u00128&X§\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u00128&X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001b\u0010\u0017R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001d8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR#\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u001d8&X¦\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b!\u0010\u001fR\"\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001d8VX\u0097\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0019\u001a\u0004\b#\u0010\u001f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006&"}, d2 = {"Lkotlinx/coroutines/channels/f0;", ExifInterface.LONGITUDE_EAST, "", "F", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/q;", y.b.f83919g, "v", "()Ljava/lang/Object;", "Lkotlinx/coroutines/channels/o;", "iterator", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "d", "cancel", "", "", "b", "poll", "w", "e", "()Z", "isClosedForReceive$annotations", "()V", "isClosedForReceive", "isEmpty", "isEmpty$annotations", "Lkotlinx/coroutines/selects/d;", "o", "()Lkotlinx/coroutines/selects/d;", "onReceive", "t", "onReceiveCatching", "u", "getOnReceiveOrNull$annotations", "onReceiveOrNull", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface f0<E> {

    /* compiled from: Channel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {

        /* compiled from: Channel.kt */
        @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001JL\u0010\n\u001a\u00020\t\"\u0004\b\u0001\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032$\u0010\b\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0017ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"kotlinx/coroutines/channels/f0$a$a", "Lkotlinx/coroutines/selects/d;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "c", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.channels.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0726a implements kotlinx.coroutines.selects.d<E> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ f0<E> f84850a;

            /* compiled from: Channel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001 \u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"R", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/q;", "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
            @DebugMetadata(c = "kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1", f = "Channel.kt", i = {}, l = {375}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.channels.f0$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            static final class C0727a extends SuspendLambda implements Function2<q<? extends E>, Continuation<? super R>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f84851a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f84852b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Function2<E, Continuation<? super R>, Object> f84853c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C0727a(Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super C0727a> continuation) {
                    super(2, continuation);
                    this.f84853c = function2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0727a c0727a = new C0727a(this.f84853c, continuation);
                    c0727a.f84852b = obj;
                    return c0727a;
                }

                @m8.h
                public final Object h(@m8.g Object obj, @m8.h Continuation<? super R> continuation) {
                    return ((C0727a) create(q.b(obj), continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    return h(((q) obj).o(), (Continuation) obj2);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f84851a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        Object o9 = ((q) this.f84852b).o();
                        Throwable f10 = q.f(o9);
                        if (f10 == null) {
                            Function2<E, Continuation<? super R>, Object> function2 = this.f84853c;
                            Object h4 = q.h(o9);
                            this.f84851a = 1;
                            obj = function2.invoke(h4, this);
                            if (obj == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            throw f10;
                        }
                    } else if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    return obj;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            C0726a(f0<? extends E> f0Var) {
                this.f84850a = f0Var;
            }

            @Override // kotlinx.coroutines.selects.d
            @e2
            public <R> void c(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
                this.f84850a.t().c(fVar, new C0727a(function2, null));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Channel.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.channels.ReceiveChannel$DefaultImpls", f = "Channel.kt", i = {}, l = {354}, m = "receiveOrNull", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class b<E> extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f84854a;

            /* renamed from: b  reason: collision with root package name */
            int f84855b;

            b(Continuation<? super b> continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f84854a = obj;
                this.f84855b |= Integer.MIN_VALUE;
                return a.i(null, this);
            }
        }

        public static /* synthetic */ void b(f0 f0Var, CancellationException cancellationException, int i4, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i4 & 1) != 0) {
                cancellationException = null;
            }
            f0Var.d(cancellationException);
        }

        public static /* synthetic */ boolean c(f0 f0Var, Throwable th, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    th = null;
                }
                return f0Var.b(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        @m8.g
        public static <E> kotlinx.coroutines.selects.d<E> d(@m8.g f0<? extends E> f0Var) {
            return new C0726a(f0Var);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of onReceiveCatching extension", replaceWith = @ReplaceWith(expression = "onReceiveCatching", imports = {}))
        public static /* synthetic */ void e() {
        }

        @y1
        public static /* synthetic */ void f() {
        }

        @y1
        public static /* synthetic */ void g() {
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @m8.h
        public static <E> E h(@m8.g f0<? extends E> f0Var) {
            Object v9 = f0Var.v();
            if (q.m(v9)) {
                return (E) q.i(v9);
            }
            Throwable f10 = q.f(v9);
            if (f10 == null) {
                return null;
            }
            throw o0.p(f10);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
        @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @kotlin.ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @kotlin.internal.LowPriorityInOverloadResolution
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static <E> java.lang.Object i(@m8.g kotlinx.coroutines.channels.f0<? extends E> r4, @m8.g kotlin.coroutines.Continuation<? super E> r5) {
            /*
                boolean r0 = r5 instanceof kotlinx.coroutines.channels.f0.a.b
                if (r0 == 0) goto L13
                r0 = r5
                kotlinx.coroutines.channels.f0$a$b r0 = (kotlinx.coroutines.channels.f0.a.b) r0
                int r1 = r0.f84855b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f84855b = r1
                goto L18
            L13:
                kotlinx.coroutines.channels.f0$a$b r0 = new kotlinx.coroutines.channels.f0$a$b
                r0.<init>(r5)
            L18:
                java.lang.Object r5 = r0.f84854a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f84855b
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                kotlin.ResultKt.throwOnFailure(r5)
                kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
                java.lang.Object r4 = r5.o()
                goto L43
            L2f:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r5)
                throw r4
            L37:
                kotlin.ResultKt.throwOnFailure(r5)
                r0.f84855b = r3
                java.lang.Object r4 = r4.x(r0)
                if (r4 != r1) goto L43
                return r1
            L43:
                java.lang.Object r4 = kotlinx.coroutines.channels.q.h(r4)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.f0.a.i(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @m8.h
    Object F(@m8.g Continuation<? super E> continuation);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ boolean b(Throwable th);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ void cancel();

    void d(@m8.h CancellationException cancellationException);

    boolean e();

    boolean isEmpty();

    @m8.g
    o<E> iterator();

    @m8.g
    kotlinx.coroutines.selects.d<E> o();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @m8.h
    E poll();

    @m8.g
    kotlinx.coroutines.selects.d<q<E>> t();

    @m8.g
    kotlinx.coroutines.selects.d<E> u();

    @m8.g
    Object v();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @m8.h
    Object w(@m8.g Continuation<? super E> continuation);

    @m8.h
    Object x(@m8.g Continuation<? super q<? extends E>> continuation);
}
