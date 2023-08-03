package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.r0;
import kotlinx.coroutines.y1;
import kotlinx.coroutines.z1;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\u001ag\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u000227\u0010\t\u001a3\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001aq\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\b\b\u0002\u0010\r\u001a\u00020\f27\u0010\t\u001a3\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0002H\u0007\u001a\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0011\u001a9\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u001e\u0010\u0014\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0013\"\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a.\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\fH\u0007\u001at\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022D\b\u0001\u0010\t\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0019\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0018¢\u0006\u0002\b\u001bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001aj\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u000229\b\u0005\u0010\t\u001a3\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u000b\u001ac\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u000223\b\u0001\u0010\t\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u000b\" \u0010%\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\n\u0010 \u0012\u0004\b#\u0010$\u001a\u0004\b!\u0010\"\"\u001a\u0010'\u001a\u00020&8\u0006X\u0087T¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/i;", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/Continuation;", "", "transform", "a", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "", "concurrency", "c", "(Lkotlinx/coroutines/flow/i;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "e", "", "l", "", "flows", "m", "([Lkotlinx/coroutines/flow/i;)Lkotlinx/coroutines/flow/i;", "f", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/j;", "", "Lkotlin/ExtensionFunctionType;", "n", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "b", "k", "I", "h", "()I", "getDEFAULT_CONCURRENCY$annotations", "()V", "DEFAULT_CONCURRENCY", "", "DEFAULT_CONCURRENCY_PROPERTY_NAME", "Ljava/lang/String;", "getDEFAULT_CONCURRENCY_PROPERTY_NAME$annotations", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__MergeKt {

    /* renamed from: a */
    private static final int f85495a = r0.b(k.f86047a, 16, 1, Integer.MAX_VALUE);

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements i<T> {

        /* renamed from: a */
        final /* synthetic */ i f85512a;

        public a(i iVar) {
            this.f85512a = iVar;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object collect = this.f85512a.collect(new b(jVar), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return collect == coroutine_suspended ? collect : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Merge.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "value", "", "a", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b<T> implements j, SuspendFunction {

        /* renamed from: a */
        final /* synthetic */ j<T> f85513a;

        /* compiled from: Merge.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1", f = "Merge.kt", i = {}, l = {80}, m = "emit", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a */
            /* synthetic */ Object f85514a;

            /* renamed from: b */
            final /* synthetic */ b<T> f85515b;

            /* renamed from: c */
            int f85516c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(b<? super T> bVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85515b = bVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85514a = obj;
                this.f85516c |= Integer.MIN_VALUE;
                return this.f85515b.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        b(j<? super T> jVar) {
            this.f85513a = jVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0031  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(@m8.g kotlinx.coroutines.flow.i<? extends T> r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
            /*
                r4 = this;
                boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt.b.a
                if (r0 == 0) goto L13
                r0 = r6
                kotlinx.coroutines.flow.FlowKt__MergeKt$b$a r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt.b.a) r0
                int r1 = r0.f85516c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85516c = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__MergeKt$b$a r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$b$a
                r0.<init>(r4, r6)
            L18:
                java.lang.Object r6 = r0.f85514a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85516c
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.ResultKt.throwOnFailure(r6)
                goto L3f
            L29:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L31:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlinx.coroutines.flow.j<T> r6 = r4.f85513a
                r0.f85516c = r3
                java.lang.Object r5 = kotlinx.coroutines.flow.k.m0(r6, r5, r0)
                if (r5 != r1) goto L3f
                return r1
            L3f:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt.b.emit(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: Merge.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", i = {}, l = {214, 214}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class c extends SuspendLambda implements Function3<j<? super R>, T, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f85517a;

        /* renamed from: b */
        private /* synthetic */ Object f85518b;

        /* renamed from: c */
        /* synthetic */ Object f85519c;

        /* renamed from: d */
        final /* synthetic */ Function2<T, Continuation<? super R>, Object> f85520d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super c> continuation) {
            super(3, continuation);
            this.f85520d = function2;
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Continuation<? super Unit> continuation) {
            return invoke((j) obj, (j) obj2, continuation);
        }

        @m8.h
        public final Object invoke(@m8.g j<? super R> jVar, T t9, @m8.h Continuation<? super Unit> continuation) {
            c cVar = new c(this.f85520d, continuation);
            cVar.f85518b = jVar;
            cVar.f85519c = t9;
            return cVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            j jVar;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85517a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                jVar = (j) this.f85518b;
                Object obj2 = this.f85519c;
                Function2<T, Continuation<? super R>, Object> function2 = this.f85520d;
                this.f85518b = jVar;
                this.f85517a = 1;
                obj = function2.invoke(obj2, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                if (i4 == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                jVar = (j) this.f85518b;
                ResultKt.throwOnFailure(obj);
            }
            this.f85518b = null;
            this.f85517a = 2;
            if (jVar.emit(obj, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    @z1
    @m8.g
    public static final <T, R> i<R> a(@m8.g final i<? extends T> iVar, @m8.g final Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return k.F0(new i<i<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes4.dex */
            public static final class AnonymousClass2<T> implements j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ j f85498a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Function2 f85499b;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes4.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f85500a;

                    /* renamed from: b  reason: collision with root package name */
                    int f85501b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f85502c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f85500a = obj;
                        this.f85501b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(j jVar, Function2 function2) {
                    this.f85498a = jVar;
                    this.f85499b = function2;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x005c A[RETURN] */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f85501b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f85501b = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f85500a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f85501b
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L3c
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L5d
                    L2c:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L34:
                        java.lang.Object r7 = r0.f85502c
                        kotlinx.coroutines.flow.j r7 = (kotlinx.coroutines.flow.j) r7
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L51
                    L3c:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f85498a
                        kotlin.jvm.functions.Function2 r2 = r6.f85499b
                        r0.f85502c = r8
                        r0.f85501b = r4
                        java.lang.Object r7 = r2.invoke(r7, r0)
                        if (r7 != r1) goto L4e
                        return r1
                    L4e:
                        r5 = r8
                        r8 = r7
                        r7 = r5
                    L51:
                        r2 = 0
                        r0.f85502c = r2
                        r0.f85501b = r3
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto L5d
                        return r1
                    L5d:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        });
    }

    @y1
    @m8.g
    public static final <T, R> i<R> b(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return k.b2(iVar, new FlowKt__MergeKt$flatMapLatest$1(function2, null));
    }

    @z1
    @m8.g
    public static final <T, R> i<R> c(@m8.g final i<? extends T> iVar, int i4, @m8.g final Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return k.G0(new i<i<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes4.dex */
            public static final class AnonymousClass2<T> implements j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ j f85506a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Function2 f85507b;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes4.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f85508a;

                    /* renamed from: b  reason: collision with root package name */
                    int f85509b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f85510c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f85508a = obj;
                        this.f85509b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(j jVar, Function2 function2) {
                    this.f85506a = jVar;
                    this.f85507b = function2;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x005c A[RETURN] */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f85509b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f85509b = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f85508a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f85509b
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L3c
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L5d
                    L2c:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L34:
                        java.lang.Object r7 = r0.f85510c
                        kotlinx.coroutines.flow.j r7 = (kotlinx.coroutines.flow.j) r7
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L51
                    L3c:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f85506a
                        kotlin.jvm.functions.Function2 r2 = r6.f85507b
                        r0.f85510c = r8
                        r0.f85509b = r4
                        java.lang.Object r7 = r2.invoke(r7, r0)
                        if (r7 != r1) goto L4e
                        return r1
                    L4e:
                        r5 = r8
                        r8 = r7
                        r7 = r5
                    L51:
                        r2 = 0
                        r0.f85510c = r2
                        r0.f85509b = r3
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto L5d
                        return r1
                    L5d:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }, i4);
    }

    public static /* synthetic */ i d(i iVar, int i4, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = f85495a;
        }
        return k.C0(iVar, i4, function2);
    }

    @z1
    @m8.g
    public static final <T> i<T> e(@m8.g i<? extends i<? extends T>> iVar) {
        return new a(iVar);
    }

    @z1
    @m8.g
    public static final <T> i<T> f(@m8.g i<? extends i<? extends T>> iVar, int i4) {
        if (i4 > 0) {
            return i4 == 1 ? k.F0(iVar) : new kotlinx.coroutines.flow.internal.f(iVar, i4, null, 0, null, 28, null);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive concurrency level, but had ", Integer.valueOf(i4)).toString());
    }

    public static /* synthetic */ i g(i iVar, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = f85495a;
        }
        return k.G0(iVar, i4);
    }

    public static final int h() {
        return f85495a;
    }

    @z1
    public static /* synthetic */ void i() {
    }

    @z1
    public static /* synthetic */ void j() {
    }

    @y1
    @m8.g
    public static final <T, R> i<R> k(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return k.b2(iVar, new c(function2, null));
    }

    @m8.g
    public static final <T> i<T> l(@m8.g Iterable<? extends i<? extends T>> iterable) {
        return new kotlinx.coroutines.flow.internal.j(iterable, null, 0, null, 14, null);
    }

    @m8.g
    public static final <T> i<T> m(@m8.g i<? extends T>... iVarArr) {
        Iterable asIterable;
        asIterable = ArraysKt___ArraysKt.asIterable(iVarArr);
        return k.Y0(asIterable);
    }

    @y1
    @m8.g
    public static final <T, R> i<R> n(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new kotlinx.coroutines.flow.internal.i(function3, iVar, null, 0, null, 28, null);
    }
}
