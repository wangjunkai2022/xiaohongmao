package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.ksyun.media.streamer.logstats.StatsConstant;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q;
import kotlinx.coroutines.r;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Await.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a#\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a+\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a%\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\u0003\u001a1\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\u0003\u001a#\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u0003\u001a+\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u0006\u001a%\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0003\u001a1\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000b\u001a7\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u001a\u0018\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/reactivestreams/c;", "d", "(Lorg/reactivestreams/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", StatsConstant.BW_EST_STRATEGY_NORMAL, "e", "(Lorg/reactivestreams/c;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "g", "Lkotlin/Function0;", "defaultValue", "f", "(Lorg/reactivestreams/c;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "k", "l", "n", "m", "Lkotlinx/coroutines/reactive/i;", "mode", ContextChain.TAG_INFRA, "(Lorg/reactivestreams/c;Lkotlinx/coroutines/reactive/i;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "signalName", "", "o", "p", "kotlinx-coroutines-reactive"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Await.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.AwaitKt", f = "Await.kt", i = {0}, l = {56}, m = "awaitFirstOrElse", n = {"defaultValue"}, s = {"L$0"})
    /* renamed from: kotlinx.coroutines.reactive.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0754a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86403a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86404b;

        /* renamed from: c  reason: collision with root package name */
        int f86405c;

        C0754a(Continuation<? super C0754a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86404b = obj;
            this.f86405c |= Integer.MIN_VALUE;
            return a.f(null, null, this);
        }
    }

    /* compiled from: Await.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\r*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u00020\bH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\u001b"}, d2 = {"kotlinx/coroutines/reactive/a$b", "Lorg/reactivestreams/d;", "", "signalName", "", "a", "Lorg/reactivestreams/e;", com.auth0.jwt.impl.i.f7106f, "", "onSubscribe", "t", "onNext", "(Ljava/lang/Object;)V", "onComplete", "", "e", "onError", "Lorg/reactivestreams/e;", "subscription", "b", "Ljava/lang/Object;", "value", "c", "Z", "seenValue", "d", "inTerminalState", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements org.reactivestreams.d<T> {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private org.reactivestreams.e f86406a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private T f86407b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f86408c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f86409d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ q<T> f86410e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ i f86411f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ T f86412g;

        /* compiled from: Await.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.reactive.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public /* synthetic */ class C0755a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[i.values().length];
                iArr[i.FIRST.ordinal()] = 1;
                iArr[i.FIRST_OR_DEFAULT.ordinal()] = 2;
                iArr[i.LAST.ordinal()] = 3;
                iArr[i.SINGLE.ordinal()] = 4;
                iArr[i.SINGLE_OR_DEFAULT.ordinal()] = 5;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: Await.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.reactive.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0756b extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ org.reactivestreams.e f86413a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0756b(org.reactivestreams.e eVar) {
                super(1);
                this.f86413a = eVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.h Throwable th) {
                this.f86413a.cancel();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        b(q<? super T> qVar, i iVar, T t9) {
            this.f86410e = qVar;
            this.f86411f = iVar;
            this.f86412g = t9;
        }

        private final boolean a(String str) {
            if (this.f86409d) {
                a.o(this.f86410e.getContext(), str);
                return false;
            }
            this.f86409d = true;
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (a("onComplete")) {
                if (this.f86408c) {
                    i iVar = this.f86411f;
                    if (iVar == i.FIRST_OR_DEFAULT || iVar == i.FIRST || !this.f86410e.a()) {
                        return;
                    }
                    Continuation continuation = this.f86410e;
                    Result.Companion companion = Result.Companion;
                    continuation.resumeWith(Result.m70constructorimpl(this.f86407b));
                    return;
                }
                i iVar2 = this.f86411f;
                if (iVar2 != i.FIRST_OR_DEFAULT && iVar2 != i.SINGLE_OR_DEFAULT) {
                    if (this.f86410e.a()) {
                        Continuation continuation2 = this.f86410e;
                        Result.Companion companion2 = Result.Companion;
                        continuation2.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(new NoSuchElementException(Intrinsics.stringPlus("No value received via onNext for ", this.f86411f)))));
                        return;
                    }
                    return;
                }
                Continuation continuation3 = this.f86410e;
                Result.Companion companion3 = Result.Companion;
                continuation3.resumeWith(Result.m70constructorimpl(this.f86412g));
            }
        }

        @Override // org.reactivestreams.d
        public void onError(@m8.g Throwable th) {
            if (a("onError")) {
                Continuation continuation = this.f86410e;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            org.reactivestreams.e eVar = this.f86406a;
            Continuation continuation = this.f86410e;
            if (eVar == null) {
                p0.b(continuation.getContext(), new IllegalStateException("'onNext' was called before 'onSubscribe'"));
            } else if (this.f86409d) {
                a.o(continuation.getContext(), "onNext");
            } else {
                int i4 = C0755a.$EnumSwitchMapping$0[this.f86411f.ordinal()];
                if (i4 == 1 || i4 == 2) {
                    if (this.f86408c) {
                        a.p(this.f86410e.getContext(), this.f86411f);
                        return;
                    }
                    this.f86408c = true;
                    eVar.cancel();
                    Continuation continuation2 = this.f86410e;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m70constructorimpl(t9));
                } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                    i iVar = this.f86411f;
                    if ((iVar == i.SINGLE || iVar == i.SINGLE_OR_DEFAULT) && this.f86408c) {
                        eVar.cancel();
                        if (this.f86410e.a()) {
                            Continuation continuation3 = this.f86410e;
                            IllegalArgumentException illegalArgumentException = new IllegalArgumentException(Intrinsics.stringPlus("More than one onNext value for ", this.f86411f));
                            Result.Companion companion2 = Result.Companion;
                            continuation3.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(illegalArgumentException)));
                            return;
                        }
                        return;
                    }
                    this.f86407b = t9;
                    this.f86408c = true;
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onSubscribe(@m8.g org.reactivestreams.e eVar) {
            if (this.f86406a != null) {
                eVar.cancel();
                return;
            }
            this.f86406a = eVar;
            this.f86410e.k(new C0756b(eVar));
            i iVar = this.f86411f;
            eVar.request((iVar == i.FIRST || iVar == i.FIRST_OR_DEFAULT) ? 1L : Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Await.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.AwaitKt", f = "Await.kt", i = {0}, l = {170}, m = "awaitSingleOrElse", n = {"defaultValue"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class c<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86414a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86415b;

        /* renamed from: c  reason: collision with root package name */
        int f86416c;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86415b = obj;
            this.f86416c |= Integer.MIN_VALUE;
            return a.m(null, null, this);
        }
    }

    @m8.h
    public static final <T> Object d(@m8.g org.reactivestreams.c<T> cVar, @m8.g Continuation<? super T> continuation) {
        return j(cVar, i.FIRST, null, continuation, 2, null);
    }

    @m8.h
    public static final <T> Object e(@m8.g org.reactivestreams.c<T> cVar, T t9, @m8.g Continuation<? super T> continuation) {
        return i(cVar, i.FIRST_OR_DEFAULT, t9, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object f(@m8.g org.reactivestreams.c<T> r7, @m8.g kotlin.jvm.functions.Function0<? extends T> r8, @m8.g kotlin.coroutines.Continuation<? super T> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.reactive.a.C0754a
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.reactive.a$a r0 = (kotlinx.coroutines.reactive.a.C0754a) r0
            int r1 = r0.f86405c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86405c = r1
            goto L18
        L13:
            kotlinx.coroutines.reactive.a$a r0 = new kotlinx.coroutines.reactive.a$a
            r0.<init>(r9)
        L18:
            r4 = r0
            java.lang.Object r9 = r4.f86404b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f86405c
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r7 = r4.f86403a
            r8 = r7
            kotlin.jvm.functions.Function0 r8 = (kotlin.jvm.functions.Function0) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4c
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.reactive.i r9 = kotlinx.coroutines.reactive.i.FIRST_OR_DEFAULT
            r3 = 0
            r5 = 2
            r6 = 0
            r4.f86403a = r8
            r4.f86405c = r2
            r1 = r7
            r2 = r9
            java.lang.Object r9 = j(r1, r2, r3, r4, r5, r6)
            if (r9 != r0) goto L4c
            return r0
        L4c:
            if (r9 != 0) goto L52
            java.lang.Object r9 = r8.invoke()
        L52:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.a.f(org.reactivestreams.c, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public static final <T> Object g(@m8.g org.reactivestreams.c<T> cVar, @m8.g Continuation<? super T> continuation) {
        return j(cVar, i.FIRST_OR_DEFAULT, null, continuation, 2, null);
    }

    @m8.h
    public static final <T> Object h(@m8.g org.reactivestreams.c<T> cVar, @m8.g Continuation<? super T> continuation) {
        return j(cVar, i.LAST, null, continuation, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Object i(org.reactivestreams.c<T> cVar, i iVar, T t9, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r rVar = new r(intercepted, 1);
        rVar.C();
        n.e(cVar, rVar.getContext()).i(new b(rVar, iVar, t9));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    static /* synthetic */ Object j(org.reactivestreams.c cVar, i iVar, Object obj, Continuation continuation, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        return i(cVar, iVar, obj, continuation);
    }

    @m8.h
    public static final <T> Object k(@m8.g org.reactivestreams.c<T> cVar, @m8.g Continuation<? super T> continuation) {
        return j(cVar, i.SINGLE, null, continuation, 2, null);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without a replacement due to its name incorrectly conveying the behavior. Please consider using awaitFirstOrDefault().")
    @m8.h
    public static final <T> Object l(@m8.g org.reactivestreams.c<T> cVar, T t9, @m8.g Continuation<? super T> continuation) {
        return i(cVar, i.SINGLE_OR_DEFAULT, t9, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = "Deprecated without a replacement due to its name incorrectly conveying the behavior. Please consider using awaitFirstOrElse().")
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object m(@m8.g org.reactivestreams.c<T> r7, @m8.g kotlin.jvm.functions.Function0<? extends T> r8, @m8.g kotlin.coroutines.Continuation<? super T> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.reactive.a.c
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.reactive.a$c r0 = (kotlinx.coroutines.reactive.a.c) r0
            int r1 = r0.f86416c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86416c = r1
            goto L18
        L13:
            kotlinx.coroutines.reactive.a$c r0 = new kotlinx.coroutines.reactive.a$c
            r0.<init>(r9)
        L18:
            r4 = r0
            java.lang.Object r9 = r4.f86415b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f86416c
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r7 = r4.f86414a
            r8 = r7
            kotlin.jvm.functions.Function0 r8 = (kotlin.jvm.functions.Function0) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4c
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.reactive.i r9 = kotlinx.coroutines.reactive.i.SINGLE_OR_DEFAULT
            r3 = 0
            r5 = 2
            r6 = 0
            r4.f86414a = r8
            r4.f86416c = r2
            r1 = r7
            r2 = r9
            java.lang.Object r9 = j(r1, r2, r3, r4, r5, r6)
            if (r9 != r0) goto L4c
            return r0
        L4c:
            if (r9 != 0) goto L52
            java.lang.Object r9 = r8.invoke()
        L52:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.a.m(org.reactivestreams.c, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without a replacement due to its name incorrectly conveying the behavior. There is a specialized version for Reactor's Mono, please use that where applicable. Alternatively, please consider using awaitFirstOrNull().", replaceWith = @ReplaceWith(expression = "this.awaitSingleOrNull()", imports = {"kotlinx.coroutines.reactor"}))
    @m8.h
    public static final <T> Object n(@m8.g org.reactivestreams.c<T> cVar, @m8.g Continuation<? super T> continuation) {
        return j(cVar, i.SINGLE_OR_DEFAULT, null, continuation, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CoroutineContext coroutineContext, String str) {
        p0.b(coroutineContext, new IllegalStateException('\'' + str + "' was called after the publisher already signalled being in a terminal state"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(CoroutineContext coroutineContext, i iVar) {
        p0.b(coroutineContext, new IllegalStateException("Only a single value was requested in '" + iVar + "', but the publisher provided more"));
    }
}
