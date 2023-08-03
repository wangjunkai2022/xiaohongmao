package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.ksyun.media.streamer.logstats.StatsConstant;
import io.reactivex.e0;
import io.reactivex.g0;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: RxAwait.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a%\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a#\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0007\u001a%\u0010\t\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0087@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0007\u001a+\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\n\u001a\u00028\u0000H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a#\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\rH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a#\u0010\u0011\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a+\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\n\u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a%\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0012\u001a1\u0010\u0018\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00102\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a#\u0010\u001a\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0012\u001a#\u0010\u001b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0012\u001a\u0018\u0010\u001e\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u001c2\u0006\u0010\u000e\u001a\u00020\u001dH\u0000\u001a7\u0010!\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010 \u001a\u00020\u001f2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00018\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"Lio/reactivex/g;", "", "b", "(Lio/reactivex/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/w;", "o", "(Lio/reactivex/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "m", "c", StatsConstant.BW_EST_STRATEGY_NORMAL, "l", "(Lio/reactivex/w;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lio/reactivex/o0;", "d", "(Lio/reactivex/o0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lio/reactivex/e0;", "e", "(Lio/reactivex/e0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "(Lio/reactivex/e0;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "Lkotlin/Function0;", "defaultValue", "g", "(Lio/reactivex/e0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ContextChain.TAG_INFRA, "n", "Lkotlinx/coroutines/q;", "Lio/reactivex/disposables/c;", "p", "Lkotlinx/coroutines/rx2/b;", "mode", "j", "(Lio/reactivex/e0;Lkotlinx/coroutines/rx2/b;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c {

    /* compiled from: RxAwait.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"kotlinx/coroutines/rx2/c$a", "Lio/reactivex/d;", "Lio/reactivex/disposables/c;", "d", "", "onSubscribe", "onComplete", "", "e", "onError", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.q<Unit> f86521a;

        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.q<? super Unit> qVar) {
            this.f86521a = qVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            kotlinx.coroutines.q<Unit> qVar = this.f86521a;
            Result.Companion companion = Result.Companion;
            qVar.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
        }

        @Override // io.reactivex.d
        public void onError(@m8.g Throwable th) {
            kotlinx.coroutines.q<Unit> qVar = this.f86521a;
            Result.Companion companion = Result.Companion;
            qVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
        }

        @Override // io.reactivex.d
        public void onSubscribe(@m8.g io.reactivex.disposables.c cVar) {
            c.p(this.f86521a, cVar);
        }
    }

    /* compiled from: RxAwait.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\f"}, d2 = {"kotlinx/coroutines/rx2/c$b", "Lio/reactivex/l0;", "Lio/reactivex/disposables/c;", "d", "", "onSubscribe", "t", "onSuccess", "(Ljava/lang/Object;)V", "", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "onError", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.q<T> f86522a;

        /* JADX WARN: Multi-variable type inference failed */
        b(kotlinx.coroutines.q<? super T> qVar) {
            this.f86522a = qVar;
        }

        @Override // io.reactivex.l0
        public void onError(@m8.g Throwable th) {
            Continuation continuation = this.f86522a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
        }

        @Override // io.reactivex.l0
        public void onSubscribe(@m8.g io.reactivex.disposables.c cVar) {
            c.p(this.f86522a, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            Continuation continuation = this.f86522a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxAwait.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxAwaitKt", f = "RxAwait.kt", i = {0}, l = {174}, m = "awaitFirstOrElse", n = {"defaultValue"}, s = {"L$0"})
    /* renamed from: kotlinx.coroutines.rx2.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0762c<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86523a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86524b;

        /* renamed from: c  reason: collision with root package name */
        int f86525c;

        C0762c(Continuation<? super C0762c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86524b = obj;
            this.f86525c |= Integer.MIN_VALUE;
            return c.g(null, null, this);
        }
    }

    /* compiled from: RxAwait.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"kotlinx/coroutines/rx2/c$d", "Lio/reactivex/g0;", "Lio/reactivex/disposables/c;", com.auth0.jwt.impl.i.f7106f, "", "onSubscribe", "t", "onNext", "(Ljava/lang/Object;)V", "onComplete", "", "e", "onError", "a", "Lio/reactivex/disposables/c;", "subscription", "b", "Ljava/lang/Object;", "value", "", "c", "Z", "seenValue", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d implements g0<T> {

        /* renamed from: a  reason: collision with root package name */
        private io.reactivex.disposables.c f86526a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private T f86527b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f86528c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.q<T> f86529d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.rx2.b f86530e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ T f86531f;

        /* compiled from: RxAwait.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[kotlinx.coroutines.rx2.b.values().length];
                iArr[kotlinx.coroutines.rx2.b.FIRST.ordinal()] = 1;
                iArr[kotlinx.coroutines.rx2.b.FIRST_OR_DEFAULT.ordinal()] = 2;
                iArr[kotlinx.coroutines.rx2.b.LAST.ordinal()] = 3;
                iArr[kotlinx.coroutines.rx2.b.SINGLE.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: RxAwait.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        static final class b extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.reactivex.disposables.c f86532a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(io.reactivex.disposables.c cVar) {
                super(1);
                this.f86532a = cVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.h Throwable th) {
                this.f86532a.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        d(kotlinx.coroutines.q<? super T> qVar, kotlinx.coroutines.rx2.b bVar, T t9) {
            this.f86529d = qVar;
            this.f86530e = bVar;
            this.f86531f = t9;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f86528c) {
                if (this.f86529d.a()) {
                    Continuation continuation = this.f86529d;
                    Result.Companion companion = Result.Companion;
                    continuation.resumeWith(Result.m70constructorimpl(this.f86527b));
                }
            } else if (this.f86530e == kotlinx.coroutines.rx2.b.FIRST_OR_DEFAULT) {
                Continuation continuation2 = this.f86529d;
                Result.Companion companion2 = Result.Companion;
                continuation2.resumeWith(Result.m70constructorimpl(this.f86531f));
            } else if (this.f86529d.a()) {
                Continuation continuation3 = this.f86529d;
                Result.Companion companion3 = Result.Companion;
                continuation3.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(new NoSuchElementException(Intrinsics.stringPlus("No value received via onNext for ", this.f86530e)))));
            }
        }

        @Override // io.reactivex.g0
        public void onError(@m8.g Throwable th) {
            Continuation continuation = this.f86529d;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            int i4 = a.$EnumSwitchMapping$0[this.f86530e.ordinal()];
            io.reactivex.disposables.c cVar = null;
            if (i4 == 1 || i4 == 2) {
                if (this.f86528c) {
                    return;
                }
                this.f86528c = true;
                Continuation continuation = this.f86529d;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(t9));
                io.reactivex.disposables.c cVar2 = this.f86526a;
                if (cVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("subscription");
                } else {
                    cVar = cVar2;
                }
                cVar.dispose();
            } else if (i4 == 3 || i4 == 4) {
                if (this.f86530e == kotlinx.coroutines.rx2.b.SINGLE && this.f86528c) {
                    if (this.f86529d.a()) {
                        Continuation continuation2 = this.f86529d;
                        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(Intrinsics.stringPlus("More than one onNext value for ", this.f86530e));
                        Result.Companion companion2 = Result.Companion;
                        continuation2.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(illegalArgumentException)));
                    }
                    io.reactivex.disposables.c cVar3 = this.f86526a;
                    if (cVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("subscription");
                    } else {
                        cVar = cVar3;
                    }
                    cVar.dispose();
                    return;
                }
                this.f86527b = t9;
                this.f86528c = true;
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(@m8.g io.reactivex.disposables.c cVar) {
            this.f86526a = cVar;
            this.f86529d.k(new b(cVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxAwait.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxAwaitKt", f = "RxAwait.kt", i = {0}, l = {108}, m = "awaitOrDefault", n = {StatsConstant.BW_EST_STRATEGY_NORMAL}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class e<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86533a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86534b;

        /* renamed from: c  reason: collision with root package name */
        int f86535c;

        e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86534b = obj;
            this.f86535c |= Integer.MIN_VALUE;
            return c.l(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxAwait.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxAwaitKt", f = "RxAwait.kt", i = {}, l = {64}, m = "awaitSingle", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class f<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f86536a;

        /* renamed from: b  reason: collision with root package name */
        int f86537b;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86536a = obj;
            this.f86537b |= Integer.MIN_VALUE;
            return c.m(null, this);
        }
    }

    /* compiled from: RxAwait.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\r"}, d2 = {"kotlinx/coroutines/rx2/c$g", "Lio/reactivex/t;", "Lio/reactivex/disposables/c;", "d", "", "onSubscribe", "onComplete", "t", "onSuccess", "(Ljava/lang/Object;)V", "", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "onError", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class g implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.q<T> f86538a;

        /* JADX WARN: Multi-variable type inference failed */
        g(kotlinx.coroutines.q<? super T> qVar) {
            this.f86538a = qVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            Continuation continuation = this.f86538a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(null));
        }

        @Override // io.reactivex.t
        public void onError(@m8.g Throwable th) {
            Continuation continuation = this.f86538a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
        }

        @Override // io.reactivex.t
        public void onSubscribe(@m8.g io.reactivex.disposables.c cVar) {
            c.p(this.f86538a, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            Continuation continuation = this.f86538a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxAwait.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class h extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.reactivex.disposables.c f86539a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(io.reactivex.disposables.c cVar) {
            super(1);
            this.f86539a = cVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h Throwable th) {
            this.f86539a.dispose();
        }
    }

    @m8.h
    public static final Object b(@m8.g io.reactivex.g gVar, @m8.g Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        gVar.d(new a(rVar));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return A == coroutine_suspended2 ? A : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of awaitSingleOrNull()", replaceWith = @ReplaceWith(expression = "this.awaitSingleOrNull()", imports = {}))
    @m8.h
    public static final <T> Object c(@m8.g io.reactivex.w<T> wVar, @m8.g Continuation<? super T> continuation) {
        return o(wVar, continuation);
    }

    @m8.h
    public static final <T> Object d(@m8.g o0<T> o0Var, @m8.g Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        o0Var.d(new b(rVar));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    @m8.h
    public static final <T> Object e(@m8.g e0<T> e0Var, @m8.g Continuation<? super T> continuation) {
        return k(e0Var, kotlinx.coroutines.rx2.b.FIRST, null, continuation, 2, null);
    }

    @m8.h
    public static final <T> Object f(@m8.g e0<T> e0Var, T t9, @m8.g Continuation<? super T> continuation) {
        return j(e0Var, kotlinx.coroutines.rx2.b.FIRST_OR_DEFAULT, t9, continuation);
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
    public static final <T> java.lang.Object g(@m8.g io.reactivex.e0<T> r7, @m8.g kotlin.jvm.functions.Function0<? extends T> r8, @m8.g kotlin.coroutines.Continuation<? super T> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.rx2.c.C0762c
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.rx2.c$c r0 = (kotlinx.coroutines.rx2.c.C0762c) r0
            int r1 = r0.f86525c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86525c = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.c$c r0 = new kotlinx.coroutines.rx2.c$c
            r0.<init>(r9)
        L18:
            r4 = r0
            java.lang.Object r9 = r4.f86524b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f86525c
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r7 = r4.f86523a
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
            kotlinx.coroutines.rx2.b r9 = kotlinx.coroutines.rx2.b.FIRST_OR_DEFAULT
            r3 = 0
            r5 = 2
            r6 = 0
            r4.f86523a = r8
            r4.f86525c = r2
            r1 = r7
            r2 = r9
            java.lang.Object r9 = k(r1, r2, r3, r4, r5, r6)
            if (r9 != r0) goto L4c
            return r0
        L4c:
            if (r9 != 0) goto L52
            java.lang.Object r9 = r8.invoke()
        L52:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.c.g(io.reactivex.e0, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public static final <T> Object h(@m8.g e0<T> e0Var, @m8.g Continuation<? super T> continuation) {
        return k(e0Var, kotlinx.coroutines.rx2.b.FIRST_OR_DEFAULT, null, continuation, 2, null);
    }

    @m8.h
    public static final <T> Object i(@m8.g e0<T> e0Var, @m8.g Continuation<? super T> continuation) {
        return k(e0Var, kotlinx.coroutines.rx2.b.LAST, null, continuation, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Object j(e0<T> e0Var, kotlinx.coroutines.rx2.b bVar, T t9, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        e0Var.subscribe(new d(rVar, bVar, t9));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    static /* synthetic */ Object k(e0 e0Var, kotlinx.coroutines.rx2.b bVar, Object obj, Continuation continuation, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        return j(e0Var, bVar, obj, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = "Deprecated in favor of awaitSingleOrNull()", replaceWith = @kotlin.ReplaceWith(expression = "this.awaitSingleOrNull() ?: default", imports = {}))
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object l(@m8.g io.reactivex.w<T> r4, T r5, @m8.g kotlin.coroutines.Continuation<? super T> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.rx2.c.e
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.rx2.c$e r0 = (kotlinx.coroutines.rx2.c.e) r0
            int r1 = r0.f86535c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86535c = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.c$e r0 = new kotlinx.coroutines.rx2.c$e
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f86534b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86535c
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.lang.Object r5 = r0.f86533a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L41
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f86533a = r5
            r0.f86535c = r3
            java.lang.Object r6 = o(r4, r0)
            if (r6 != r1) goto L41
            return r1
        L41:
            if (r6 != 0) goto L44
            goto L45
        L44:
            r5 = r6
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.c.l(io.reactivex.w, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object m(@m8.g io.reactivex.w<T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.rx2.c.f
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.rx2.c$f r0 = (kotlinx.coroutines.rx2.c.f) r0
            int r1 = r0.f86537b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86537b = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.c$f r0 = new kotlinx.coroutines.rx2.c$f
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f86536a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86537b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.f86537b = r3
            java.lang.Object r5 = o(r4, r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            if (r5 == 0) goto L40
            return r5
        L40:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.c.m(io.reactivex.w, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public static final <T> Object n(@m8.g e0<T> e0Var, @m8.g Continuation<? super T> continuation) {
        return k(e0Var, kotlinx.coroutines.rx2.b.SINGLE, null, continuation, 2, null);
    }

    @m8.h
    public static final <T> Object o(@m8.g io.reactivex.w<T> wVar, @m8.g Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        wVar.b(new g(rVar));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    public static final void p(@m8.g kotlinx.coroutines.q<?> qVar, @m8.g io.reactivex.disposables.c cVar) {
        qVar.k(new h(cVar));
    }
}
