package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Transform.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u001aO\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012$\b\u0004\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aO\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012$\b\u0004\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\b\u001a\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0006\b\u0000\u0010\n\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001a\"\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\u0000*\u00020\u0005*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001\u001ad\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u00028\u00000\u000123\b\u0004\u0010\u0010\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\b\u001aj\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\n*\u00020\u0005*\b\u0012\u0004\u0012\u00028\u00000\u000125\b\u0004\u0010\u0010\u001a/\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\b\u001a\"\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00130\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001aJ\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\b\u001a~\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0018\u001a\u00028\u00012H\b\u0001\u0010\u001b\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0019ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a~\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0018\u001a\u00028\u00012H\b\u0001\u0010\u001b\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0019ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001d\u001an\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012F\u0010\u001b\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0019ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "predicate", "a", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "c", "R", "b", "d", "Lkotlin/ParameterName;", "name", "value", "transform", "e", "f", "Lkotlin/collections/IndexedValue;", "k", "", com.alipay.sdk.packet.d.f6907q, "g", "initial", "Lkotlin/Function3;", "accumulator", "operation", "j", "(Lkotlinx/coroutines/flow/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "h", ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__TransformKt {

    /* compiled from: Transform.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a<T> implements j, SuspendFunction {

        /* renamed from: a */
        final /* synthetic */ Ref.ObjectRef<R> f85686a;

        /* renamed from: b */
        final /* synthetic */ Function3<R, T, Continuation<? super R>, Object> f85687b;

        /* renamed from: c */
        final /* synthetic */ j<R> f85688c;

        /* compiled from: Transform.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$1$1", f = "Transform.kt", i = {0}, l = {103, 104}, m = "emit", n = {"this"}, s = {"L$0"})
        /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$a$a */
        /* loaded from: classes4.dex */
        public static final class C0732a extends ContinuationImpl {

            /* renamed from: a */
            Object f85689a;

            /* renamed from: b */
            Object f85690b;

            /* renamed from: c */
            /* synthetic */ Object f85691c;

            /* renamed from: d */
            final /* synthetic */ a<T> f85692d;

            /* renamed from: e */
            int f85693e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0732a(a<? super T> aVar, Continuation<? super C0732a> continuation) {
                super(continuation);
                this.f85692d = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85691c = obj;
                this.f85693e |= Integer.MIN_VALUE;
                return this.f85692d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(Ref.ObjectRef<R> objectRef, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, j<? super R> jVar) {
            this.f85686a = objectRef;
            this.f85687b = function3;
            this.f85688c = jVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x006f A[RETURN] */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt.a.C0732a
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.FlowKt__TransformKt$a$a r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt.a.C0732a) r0
                int r1 = r0.f85693e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85693e = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__TransformKt$a$a r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$a$a
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.f85691c
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85693e
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L40
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.ResultKt.throwOnFailure(r9)
                goto L70
            L2c:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L34:
                java.lang.Object r8 = r0.f85690b
                kotlin.jvm.internal.Ref$ObjectRef r8 = (kotlin.jvm.internal.Ref.ObjectRef) r8
                java.lang.Object r2 = r0.f85689a
                kotlinx.coroutines.flow.FlowKt__TransformKt$a r2 = (kotlinx.coroutines.flow.FlowKt__TransformKt.a) r2
                kotlin.ResultKt.throwOnFailure(r9)
                goto L5a
            L40:
                kotlin.ResultKt.throwOnFailure(r9)
                kotlin.jvm.internal.Ref$ObjectRef<R> r9 = r7.f85686a
                kotlin.jvm.functions.Function3<R, T, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r2 = r7.f85687b
                T r5 = r9.element
                r0.f85689a = r7
                r0.f85690b = r9
                r0.f85693e = r4
                java.lang.Object r8 = r2.invoke(r5, r8, r0)
                if (r8 != r1) goto L56
                return r1
            L56:
                r2 = r7
                r6 = r9
                r9 = r8
                r8 = r6
            L5a:
                r8.element = r9
                kotlinx.coroutines.flow.j<R> r8 = r2.f85688c
                kotlin.jvm.internal.Ref$ObjectRef<R> r9 = r2.f85686a
                T r9 = r9.element
                r2 = 0
                r0.f85689a = r2
                r0.f85690b = r2
                r0.f85693e = r3
                java.lang.Object r8 = r8.emit(r9, r0)
                if (r8 != r1) goto L70
                return r1
            L70:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements i<T> {

        /* renamed from: a */
        final /* synthetic */ i f85694a;

        /* renamed from: b */
        final /* synthetic */ Function3 f85695b;

        public b(i iVar, Function3 function3) {
            this.f85694a = iVar;
            this.f85695b = function3;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, kotlinx.coroutines.internal.p0] */
        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = kotlinx.coroutines.flow.internal.s.f86031a;
            Object collect = this.f85694a.collect(new c(objectRef, this.f85695b, jVar), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return collect == coroutine_suspended ? collect : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transform.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class c<T> implements j, SuspendFunction {

        /* renamed from: a */
        final /* synthetic */ Ref.ObjectRef<Object> f85696a;

        /* renamed from: b */
        final /* synthetic */ Function3<T, T, Continuation<? super T>, Object> f85697b;

        /* renamed from: c */
        final /* synthetic */ j<T> f85698c;

        /* compiled from: Transform.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningReduce$1$1", f = "Transform.kt", i = {0}, l = {125, 127}, m = "emit", n = {"this"}, s = {"L$0"})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a */
            Object f85699a;

            /* renamed from: b */
            Object f85700b;

            /* renamed from: c */
            /* synthetic */ Object f85701c;

            /* renamed from: d */
            final /* synthetic */ c<T> f85702d;

            /* renamed from: e */
            int f85703e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(c<? super T> cVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85702d = cVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85701c = obj;
                this.f85703e |= Integer.MIN_VALUE;
                return this.f85702d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        c(Ref.ObjectRef<Object> objectRef, Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3, j<? super T> jVar) {
            this.f85696a = objectRef;
            this.f85697b = function3;
            this.f85698c = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0078 A[RETURN] */
        /* JADX WARN: Type inference failed for: r9v7 */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt.c.a
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.FlowKt__TransformKt$c$a r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt.c.a) r0
                int r1 = r0.f85703e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85703e = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__TransformKt$c$a r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$c$a
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.f85701c
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85703e
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L40
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.ResultKt.throwOnFailure(r9)
                goto L79
            L2c:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L34:
                java.lang.Object r8 = r0.f85700b
                kotlin.jvm.internal.Ref$ObjectRef r8 = (kotlin.jvm.internal.Ref.ObjectRef) r8
                java.lang.Object r2 = r0.f85699a
                kotlinx.coroutines.flow.FlowKt__TransformKt$c r2 = (kotlinx.coroutines.flow.FlowKt__TransformKt.c) r2
                kotlin.ResultKt.throwOnFailure(r9)
                goto L60
            L40:
                kotlin.ResultKt.throwOnFailure(r9)
                kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r9 = r7.f85696a
                T r2 = r9.element
                kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
                if (r2 != r5) goto L4d
                r2 = r7
                goto L63
            L4d:
                kotlin.jvm.functions.Function3<T, T, kotlin.coroutines.Continuation<? super T>, java.lang.Object> r5 = r7.f85697b
                r0.f85699a = r7
                r0.f85700b = r9
                r0.f85703e = r4
                java.lang.Object r8 = r5.invoke(r2, r8, r0)
                if (r8 != r1) goto L5c
                return r1
            L5c:
                r2 = r7
                r6 = r9
                r9 = r8
                r8 = r6
            L60:
                r6 = r9
                r9 = r8
                r8 = r6
            L63:
                r9.element = r8
                kotlinx.coroutines.flow.j<T> r8 = r2.f85698c
                kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r9 = r2.f85696a
                T r9 = r9.element
                r2 = 0
                r0.f85699a = r2
                r0.f85700b = r2
                r0.f85703e = r3
                java.lang.Object r8 = r8.emit(r9, r0)
                if (r8 != r1) goto L79
                return r1
            L79:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt.c.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d implements i<IndexedValue<? extends T>> {

        /* renamed from: a */
        final /* synthetic */ i f85704a;

        public d(i iVar) {
            this.f85704a = iVar;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g j<? super IndexedValue<? extends T>> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object collect = this.f85704a.collect(new e(jVar, new Ref.IntRef()), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return collect == coroutine_suspended ? collect : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transform.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class e<T> implements j, SuspendFunction {

        /* renamed from: a */
        final /* synthetic */ j<IndexedValue<? extends T>> f85705a;

        /* renamed from: b */
        final /* synthetic */ Ref.IntRef f85706b;

        /* compiled from: Transform.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1", f = "Transform.kt", i = {}, l = {65}, m = "emit", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a */
            /* synthetic */ Object f85707a;

            /* renamed from: b */
            final /* synthetic */ e<T> f85708b;

            /* renamed from: c */
            int f85709c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(e<? super T> eVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85708b = eVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85707a = obj;
                this.f85709c |= Integer.MIN_VALUE;
                return this.f85708b.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        e(j<? super IndexedValue<? extends T>> jVar, Ref.IntRef intRef) {
            this.f85705a = jVar;
            this.f85706b = intRef;
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0031  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt.e.a
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.FlowKt__TransformKt$e$a r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt.e.a) r0
                int r1 = r0.f85709c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85709c = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__TransformKt$e$a r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$e$a
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.f85707a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85709c
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.ResultKt.throwOnFailure(r9)
                goto L4e
            L29:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L31:
                kotlin.ResultKt.throwOnFailure(r9)
                kotlinx.coroutines.flow.j<kotlin.collections.IndexedValue<? extends T>> r9 = r7.f85705a
                kotlin.collections.IndexedValue r2 = new kotlin.collections.IndexedValue
                kotlin.jvm.internal.Ref$IntRef r4 = r7.f85706b
                int r5 = r4.element
                int r6 = r5 + 1
                r4.element = r6
                if (r5 < 0) goto L51
                r2.<init>(r5, r8)
                r0.f85709c = r3
                java.lang.Object r8 = r9.emit(r2, r0)
                if (r8 != r1) goto L4e
                return r1
            L4e:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L51:
                java.lang.ArithmeticException r8 = new java.lang.ArithmeticException
                java.lang.String r9 = "Index overflow has happened"
                r8.<init>(r9)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt.e.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @m8.g
    public static final <T> i<T> a(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filter$$inlined$unsafeTransform$1(iVar, function2);
    }

    public static final /* synthetic */ <R> i<R> b(i<?> iVar) {
        Intrinsics.needClassReification();
        return new FlowKt__TransformKt$filterIsInstance$$inlined$filter$1(iVar);
    }

    @m8.g
    public static final <T> i<T> c(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1(iVar, function2);
    }

    @m8.g
    public static final <T> i<T> d(@m8.g final i<? extends T> iVar) {
        return new i<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2  reason: invalid class name */
            /* loaded from: classes4.dex */
            public static final class AnonymousClass2<T> implements j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ j f85642a;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1  reason: invalid class name */
                /* loaded from: classes4.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f85643a;

                    /* renamed from: b  reason: collision with root package name */
                    int f85644b;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f85643a = obj;
                        this.f85644b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(j jVar) {
                    this.f85642a = jVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f85644b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f85644b = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f85643a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f85644b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L41
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.f85642a
                        if (r5 == 0) goto L41
                        r0.f85644b = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L41
                        return r1
                    L41:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g j jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = i.this.collect(new AnonymousClass2(jVar), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @m8.g
    public static final <T, R> i<R> e(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$map$$inlined$unsafeTransform$1(iVar, function2);
    }

    @m8.g
    public static final <T, R> i<R> f(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1(iVar, function2);
    }

    @m8.g
    public static final <T> i<T> g(@m8.g final i<? extends T> iVar, @m8.g final Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new i<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2  reason: invalid class name */
            /* loaded from: classes4.dex */
            public static final class AnonymousClass2<T> implements j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ j f85670a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Function2 f85671b;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {223, 224}, m = "emit", n = {"value", "$this$onEach_u24lambda_u2d7"}, s = {"L$0", "L$1"})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1  reason: invalid class name */
                /* loaded from: classes4.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f85672a;

                    /* renamed from: b  reason: collision with root package name */
                    int f85673b;

                    /* renamed from: d  reason: collision with root package name */
                    Object f85675d;

                    /* renamed from: e  reason: collision with root package name */
                    Object f85676e;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f85672a = obj;
                        this.f85673b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(j jVar, Function2 function2) {
                    this.f85670a = jVar;
                    this.f85671b = function2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0069 A[RETURN] */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f85673b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f85673b = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.f85672a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f85673b
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L3e
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L6a
                    L2c:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L34:
                        java.lang.Object r6 = r0.f85676e
                        kotlinx.coroutines.flow.j r6 = (kotlinx.coroutines.flow.j) r6
                        java.lang.Object r2 = r0.f85675d
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L5c
                    L3e:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.j r7 = r5.f85670a
                        kotlin.jvm.functions.Function2 r2 = r5.f85671b
                        r0.f85675d = r6
                        r0.f85676e = r7
                        r0.f85673b = r4
                        r4 = 6
                        kotlin.jvm.internal.InlineMarker.mark(r4)
                        java.lang.Object r2 = r2.invoke(r6, r0)
                        r4 = 7
                        kotlin.jvm.internal.InlineMarker.mark(r4)
                        if (r2 != r1) goto L5a
                        return r1
                    L5a:
                        r2 = r6
                        r6 = r7
                    L5c:
                        r7 = 0
                        r0.f85675d = r7
                        r0.f85676e = r7
                        r0.f85673b = r3
                        java.lang.Object r6 = r6.emit(r2, r0)
                        if (r6 != r1) goto L6a
                        return r1
                    L6a:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g j jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = i.this.collect(new AnonymousClass2(jVar, function2), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @m8.g
    public static final <T, R> i<R> h(@m8.g i<? extends T> iVar, R r9, @BuilderInference @m8.g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return new FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1(r9, iVar, function3);
    }

    @m8.g
    public static final <T> i<T> i(@m8.g i<? extends T> iVar, @m8.g Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return new b(iVar, function3);
    }

    @m8.g
    public static final <T, R> i<R> j(@m8.g i<? extends T> iVar, R r9, @BuilderInference @m8.g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return k.y1(iVar, r9, function3);
    }

    @m8.g
    public static final <T> i<IndexedValue<T>> k(@m8.g i<? extends T> iVar) {
        return new d(iVar);
    }
}
