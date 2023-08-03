package androidx.paging.multicast;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.b0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.channels.m;
import kotlinx.coroutines.channels.p;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.z;
import m8.g;
import m8.h;

/* compiled from: StoreRealActor.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b \u0018\u0000 \u0019*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0019B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u001b\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\bJ\u0013\u0010\n\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Landroidx/paging/multicast/StoreRealActor;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "doClose", "onClosed", "msg", "handle", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "send", "close", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/m;", "inboundChannel", "Lkotlinx/coroutines/channels/m;", "Lkotlinx/coroutines/z;", "closeCompleted", "Lkotlinx/coroutines/z;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "didClose", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lkotlinx/coroutines/s0;", "scope", "<init>", "(Lkotlinx/coroutines/s0;)V", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class StoreRealActor<T> {
    @g
    private final z<Unit> closeCompleted;
    @g
    private final AtomicBoolean didClose;
    @g
    private final m<Object> inboundChannel;
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final Object CLOSE_TOKEN = new Object();

    /* compiled from: StoreRealActor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "msg", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.multicast.StoreRealActor$1", f = "StoreRealActor.kt", i = {}, l = {45}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.multicast.StoreRealActor$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ StoreRealActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(StoreRealActor<T> storeRealActor, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = storeRealActor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@h Object obj, @h Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.label;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                if (obj2 == StoreRealActor.Companion.getCLOSE_TOKEN()) {
                    this.this$0.doClose();
                } else {
                    this.label = 1;
                    if (this.this$0.handle(obj2, this) == coroutine_suspended) {
                        return coroutine_suspended;
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

    /* compiled from: StoreRealActor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.multicast.StoreRealActor$2", f = "StoreRealActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.multicast.StoreRealActor$2  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass2 extends SuspendLambda implements Function3<j<? super Object>, Throwable, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ StoreRealActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(StoreRealActor<T> storeRealActor, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = storeRealActor;
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(j<? super Object> jVar, Throwable th, Continuation<? super Unit> continuation) {
            return invoke2((j<Object>) jVar, th, continuation);
        }

        @h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@g j<Object> jVar, @h Throwable th, @h Continuation<? super Unit> continuation) {
            return new AnonymousClass2(this.this$0, continuation).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.this$0.doClose();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: StoreRealActor.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/multicast/StoreRealActor$Companion;", "", "()V", "CLOSE_TOKEN", "getCLOSE_TOKEN", "()Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Object getCLOSE_TOKEN() {
            return StoreRealActor.CLOSE_TOKEN;
        }
    }

    public StoreRealActor(@g s0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        m<Object> d4 = p.d(0, null, null, 6, null);
        this.inboundChannel = d4;
        this.closeCompleted = b0.c(null, 1, null);
        this.didClose = new AtomicBoolean(false);
        k.U0(k.d1(k.e1(k.X(d4), new AnonymousClass1(this, null)), new AnonymousClass2(this, null)), scope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doClose() {
        if (this.didClose.compareAndSet(false, true)) {
            try {
                onClosed();
            } finally {
                j0.a.a(this.inboundChannel, null, 1, null);
                this.closeCompleted.L(Unit.INSTANCE);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object close(@m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.paging.multicast.StoreRealActor$close$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.multicast.StoreRealActor$close$1 r0 = (androidx.paging.multicast.StoreRealActor$close$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.multicast.StoreRealActor$close$1 r0 = new androidx.paging.multicast.StoreRealActor$close$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L5d
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.L$0
            androidx.paging.multicast.StoreRealActor r2 = (androidx.paging.multicast.StoreRealActor) r2
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4f
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.channels.m<java.lang.Object> r6 = r5.inboundChannel
            java.lang.Object r2 = androidx.paging.multicast.StoreRealActor.CLOSE_TOKEN
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r6.send(r2, r0)
            if (r6 != r1) goto L4e
            return r1
        L4e:
            r2 = r5
        L4f:
            kotlinx.coroutines.z<kotlin.Unit> r6 = r2.closeCompleted
            r2 = 0
            r0.L$0 = r2
            r0.label = r3
            java.lang.Object r6 = r6.D(r0)
            if (r6 != r1) goto L5d
            return r1
        L5d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.multicast.StoreRealActor.close(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @h
    public abstract Object handle(T t9, @g Continuation<? super Unit> continuation);

    public void onClosed() {
    }

    @h
    public final Object send(T t9, @g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object send = this.inboundChannel.send(t9, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return send == coroutine_suspended ? send : Unit.INSTANCE;
    }
}
