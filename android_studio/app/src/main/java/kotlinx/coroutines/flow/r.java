package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m2;
import kotlinx.coroutines.s0;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Share.kt */
@Metadata(bv = {}, d1 = {"\u0000r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a6\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\f\u001aM\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a;\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a1\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001aC\u0010\u001e\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00160\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0010\u001a\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000!\u001aU\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\b2-\u0010(\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000$\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0%\u0012\u0006\u0012\u0004\u0018\u00010&0#¢\u0006\u0002\b'ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/s0;", "scope", "Lkotlinx/coroutines/flow/c0;", Session.b.f81843d, "", "replay", "Lkotlinx/coroutines/flow/x;", "g", "Lkotlinx/coroutines/flow/b0;", "c", "(Lkotlinx/coroutines/flow/i;I)Lkotlinx/coroutines/flow/b0;", "Lkotlin/coroutines/CoroutineContext;", "context", "upstream", "Lkotlinx/coroutines/flow/s;", "shared", "initialValue", "Lkotlinx/coroutines/j2;", "d", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/s;Lkotlinx/coroutines/flow/c0;Ljava/lang/Object;)Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/flow/h0;", "j", "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/flow/c0;Ljava/lang/Object;)Lkotlinx/coroutines/flow/h0;", ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/z;", "result", "", "e", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/z;)V", "a", "Lkotlinx/coroutines/flow/t;", "b", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/j;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", com.alipay.sdk.packet.d.f6907q, "f", "(Lkotlinx/coroutines/flow/x;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/x;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class r {

    /* compiled from: Share.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {}, l = {214, com.facebook.imageutils.c.f13391f, 219, com.facebook.imageutils.c.f13392g}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f86138a;

        /* renamed from: b */
        final /* synthetic */ c0 f86139b;

        /* renamed from: c */
        final /* synthetic */ i<T> f86140c;

        /* renamed from: d */
        final /* synthetic */ s<T> f86141d;

        /* renamed from: e */
        final /* synthetic */ T f86142e;

        /* compiled from: Share.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.r$a$a */
        /* loaded from: classes4.dex */
        public static final class C0751a extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {

            /* renamed from: a */
            int f86143a;

            /* renamed from: b */
            /* synthetic */ int f86144b;

            C0751a(Continuation<? super C0751a> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0751a c0751a = new C0751a(continuation);
                c0751a.f86144b = ((Number) obj).intValue();
                return c0751a;
            }

            @m8.h
            public final Object h(int i4, @m8.h Continuation<? super Boolean> continuation) {
                return ((C0751a) create(Integer.valueOf(i4), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Boolean> continuation) {
                return h(num.intValue(), continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f86143a == 0) {
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(this.f86144b > 0);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* compiled from: Share.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/SharingCommand;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", i = {}, l = {227}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class b extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f86145a;

            /* renamed from: b */
            /* synthetic */ Object f86146b;

            /* renamed from: c */
            final /* synthetic */ i<T> f86147c;

            /* renamed from: d */
            final /* synthetic */ s<T> f86148d;

            /* renamed from: e */
            final /* synthetic */ T f86149e;

            /* compiled from: Share.kt */
            @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.r$a$b$a */
            /* loaded from: classes4.dex */
            public /* synthetic */ class C0752a {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[SharingCommand.values().length];
                    iArr[SharingCommand.START.ordinal()] = 1;
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(i<? extends T> iVar, s<T> sVar, T t9, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f86147c = iVar;
                this.f86148d = sVar;
                this.f86149e = t9;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f86147c, this.f86148d, this.f86149e, continuation);
                bVar.f86146b = obj;
                return bVar;
            }

            @m8.h
            public final Object h(@m8.g SharingCommand sharingCommand, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(SharingCommand sharingCommand, Continuation<? super Unit> continuation) {
                return h(sharingCommand, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86145a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    int i10 = C0752a.$EnumSwitchMapping$0[((SharingCommand) this.f86146b).ordinal()];
                    if (i10 == 1) {
                        i<T> iVar = this.f86147c;
                        j jVar = this.f86148d;
                        this.f86145a = 1;
                        if (iVar.collect(jVar, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i10 == 3) {
                        T t9 = this.f86149e;
                        if (t9 == z.f86181a) {
                            this.f86148d.e();
                        } else {
                            this.f86148d.c(t9);
                        }
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(c0 c0Var, i<? extends T> iVar, s<T> sVar, T t9, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f86139b = c0Var;
            this.f86140c = iVar;
            this.f86141d = sVar;
            this.f86142e = t9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f86139b, this.f86140c, this.f86141d, this.f86142e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x0068 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f86138a
                r2 = 4
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L25
                if (r1 == r5) goto L21
                if (r1 == r4) goto L1d
                if (r1 == r3) goto L21
                if (r1 != r2) goto L15
                goto L21
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1d:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L5c
            L21:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L8d
            L25:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlinx.coroutines.flow.c0 r8 = r7.f86139b
                kotlinx.coroutines.flow.c0$a r1 = kotlinx.coroutines.flow.c0.f85848a
                kotlinx.coroutines.flow.c0 r6 = r1.c()
                if (r8 != r6) goto L3f
                kotlinx.coroutines.flow.i<T> r8 = r7.f86140c
                kotlinx.coroutines.flow.s<T> r1 = r7.f86141d
                r7.f86138a = r5
                java.lang.Object r8 = r8.collect(r1, r7)
                if (r8 != r0) goto L8d
                return r0
            L3f:
                kotlinx.coroutines.flow.c0 r8 = r7.f86139b
                kotlinx.coroutines.flow.c0 r1 = r1.d()
                r5 = 0
                if (r8 != r1) goto L69
                kotlinx.coroutines.flow.s<T> r8 = r7.f86141d
                kotlinx.coroutines.flow.h0 r8 = r8.d()
                kotlinx.coroutines.flow.r$a$a r1 = new kotlinx.coroutines.flow.r$a$a
                r1.<init>(r5)
                r7.f86138a = r4
                java.lang.Object r8 = kotlinx.coroutines.flow.k.u0(r8, r1, r7)
                if (r8 != r0) goto L5c
                return r0
            L5c:
                kotlinx.coroutines.flow.i<T> r8 = r7.f86140c
                kotlinx.coroutines.flow.s<T> r1 = r7.f86141d
                r7.f86138a = r3
                java.lang.Object r8 = r8.collect(r1, r7)
                if (r8 != r0) goto L8d
                return r0
            L69:
                kotlinx.coroutines.flow.c0 r8 = r7.f86139b
                kotlinx.coroutines.flow.s<T> r1 = r7.f86141d
                kotlinx.coroutines.flow.h0 r1 = r1.d()
                kotlinx.coroutines.flow.i r8 = r8.a(r1)
                kotlinx.coroutines.flow.i r8 = kotlinx.coroutines.flow.k.g0(r8)
                kotlinx.coroutines.flow.r$a$b r1 = new kotlinx.coroutines.flow.r$a$b
                kotlinx.coroutines.flow.i<T> r3 = r7.f86140c
                kotlinx.coroutines.flow.s<T> r4 = r7.f86141d
                T r6 = r7.f86142e
                r1.<init>(r3, r4, r6, r5)
                r7.f86138a = r2
                java.lang.Object r8 = kotlinx.coroutines.flow.k.A(r8, r1, r7)
                if (r8 != r0) goto L8d
                return r0
            L8d:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.r.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Share.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {}, l = {340}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f86150a;

        /* renamed from: b */
        private /* synthetic */ Object f86151b;

        /* renamed from: c */
        final /* synthetic */ i<T> f86152c;

        /* renamed from: d */
        final /* synthetic */ kotlinx.coroutines.z<h0<T>> f86153d;

        /* compiled from: Share.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class a<T> implements j, SuspendFunction {

            /* renamed from: a */
            final /* synthetic */ Ref.ObjectRef<t<T>> f86154a;

            /* renamed from: b */
            final /* synthetic */ s0 f86155b;

            /* renamed from: c */
            final /* synthetic */ kotlinx.coroutines.z<h0<T>> f86156c;

            a(Ref.ObjectRef<t<T>> objectRef, s0 s0Var, kotlinx.coroutines.z<h0<T>> zVar) {
                this.f86154a = objectRef;
                this.f86155b = s0Var;
                this.f86156c = zVar;
            }

            /* JADX WARN: Type inference failed for: r4v2, types: [kotlinx.coroutines.flow.t, T, kotlinx.coroutines.flow.h0] */
            @Override // kotlinx.coroutines.flow.j
            @m8.h
            public final Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
                Unit unit;
                t<T> tVar = this.f86154a.element;
                if (tVar == null) {
                    unit = null;
                } else {
                    tVar.setValue(t9);
                    unit = Unit.INSTANCE;
                }
                if (unit == null) {
                    s0 s0Var = this.f86155b;
                    Ref.ObjectRef<t<T>> objectRef = this.f86154a;
                    kotlinx.coroutines.z<h0<T>> zVar = this.f86156c;
                    ?? r42 = (T) j0.a(t9);
                    zVar.L(new v(r42, m2.B(s0Var.getCoroutineContext())));
                    objectRef.element = r42;
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(i<? extends T> iVar, kotlinx.coroutines.z<h0<T>> zVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f86152c = iVar;
            this.f86153d = zVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f86152c, this.f86153d, continuation);
            bVar.f86151b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86150a;
            try {
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    s0 s0Var = (s0) this.f86151b;
                    Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    i<T> iVar = this.f86152c;
                    a aVar = new a(objectRef, s0Var, this.f86153d);
                    this.f86150a = 1;
                    if (iVar.collect(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                this.f86153d.h(th);
                throw th;
            }
        }
    }

    @m8.g
    public static final <T> x<T> a(@m8.g s<T> sVar) {
        return new u(sVar, null);
    }

    @m8.g
    public static final <T> h0<T> b(@m8.g t<T> tVar) {
        return new v(tVar, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x002d, code lost:
        if (r3 == 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final <T> kotlinx.coroutines.flow.b0<T> c(kotlinx.coroutines.flow.i<? extends T> r7, int r8) {
        /*
            kotlinx.coroutines.channels.m$b r0 = kotlinx.coroutines.channels.m.f84876l2
            int r0 = r0.a()
            int r0 = kotlin.ranges.RangesKt.coerceAtLeast(r8, r0)
            int r0 = r0 - r8
            boolean r1 = r7 instanceof kotlinx.coroutines.flow.internal.d
            if (r1 == 0) goto L3d
            r1 = r7
            kotlinx.coroutines.flow.internal.d r1 = (kotlinx.coroutines.flow.internal.d) r1
            kotlinx.coroutines.flow.i r2 = r1.j()
            if (r2 == 0) goto L3d
            kotlinx.coroutines.flow.b0 r7 = new kotlinx.coroutines.flow.b0
            int r3 = r1.f85911b
            r4 = -3
            r5 = 0
            if (r3 == r4) goto L27
            r4 = -2
            if (r3 == r4) goto L27
            if (r3 == 0) goto L27
            r0 = r3
            goto L35
        L27:
            kotlinx.coroutines.channels.BufferOverflow r4 = r1.f85912c
            kotlinx.coroutines.channels.BufferOverflow r6 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            if (r4 != r6) goto L30
            if (r3 != 0) goto L35
            goto L34
        L30:
            if (r8 != 0) goto L34
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            kotlinx.coroutines.channels.BufferOverflow r8 = r1.f85912c
            kotlin.coroutines.CoroutineContext r1 = r1.f85910a
            r7.<init>(r2, r0, r8, r1)
            return r7
        L3d:
            kotlinx.coroutines.flow.b0 r8 = new kotlinx.coroutines.flow.b0
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            r8.<init>(r7, r0, r1, r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.r.c(kotlinx.coroutines.flow.i, int):kotlinx.coroutines.flow.b0");
    }

    private static final <T> j2 d(s0 s0Var, CoroutineContext coroutineContext, i<? extends T> iVar, s<T> sVar, c0 c0Var, T t9) {
        return kotlinx.coroutines.j.d(s0Var, coroutineContext, Intrinsics.areEqual(c0Var, c0.f85848a.c()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new a(c0Var, iVar, sVar, t9, null));
    }

    private static final <T> void e(s0 s0Var, CoroutineContext coroutineContext, i<? extends T> iVar, kotlinx.coroutines.z<h0<T>> zVar) {
        kotlinx.coroutines.l.f(s0Var, coroutineContext, null, new b(iVar, zVar, null), 2, null);
    }

    @m8.g
    public static final <T> x<T> f(@m8.g x<? extends T> xVar, @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new m0(xVar, function2);
    }

    @m8.g
    public static final <T> x<T> g(@m8.g i<? extends T> iVar, @m8.g s0 s0Var, @m8.g c0 c0Var, int i4) {
        b0 c10 = c(iVar, i4);
        s a10 = z.a(i4, c10.f85845b, c10.f85846c);
        return new u(a10, d(s0Var, c10.f85847d, c10.f85844a, a10, c0Var, z.f86181a));
    }

    public static /* synthetic */ x h(i iVar, s0 s0Var, c0 c0Var, int i4, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            i4 = 0;
        }
        return k.F1(iVar, s0Var, c0Var, i4);
    }

    @m8.h
    public static final <T> Object i(@m8.g i<? extends T> iVar, @m8.g s0 s0Var, @m8.g Continuation<? super h0<? extends T>> continuation) {
        b0 c10 = c(iVar, 1);
        kotlinx.coroutines.z c11 = kotlinx.coroutines.b0.c(null, 1, null);
        e(s0Var, c10.f85847d, c10.f85844a, c11);
        return c11.D(continuation);
    }

    @m8.g
    public static final <T> h0<T> j(@m8.g i<? extends T> iVar, @m8.g s0 s0Var, @m8.g c0 c0Var, T t9) {
        b0 c10 = c(iVar, 1);
        t a10 = j0.a(t9);
        return new v(a10, d(s0Var, c10.f85847d, c10.f85844a, a10, c0Var, t9));
    }
}
