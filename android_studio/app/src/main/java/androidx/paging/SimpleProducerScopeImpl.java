package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.selects.e;
import kotlinx.coroutines.y1;
import m8.g;
import m8.h;

/* compiled from: SimpleChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u001d\u0012\u0006\u0010*\u001a\u00020\u0003\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b+\u0010,J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\u0010\u001a\u00020\u000e2#\u0010\u000f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\tH\u0097\u0001J\u0015\u0010\u0011\u001a\u00020\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\nH\u0096\u0001J'\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0005\u001a\u00028\u0000H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001a\u001a\u00020\u000e2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0018H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bR \u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010$\u001a\u00020\u00068\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b$\u0010%R&\u0010)\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040&8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b'\u0010(\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006-"}, d2 = {"Landroidx/paging/SimpleProducerScopeImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/SimpleProducerScope;", "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/channels/j0;", "element", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "handler", "invokeOnClose", "close", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function0;", "block", "awaitClose", "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "channel", "Lkotlinx/coroutines/channels/j0;", "getChannel", "()Lkotlinx/coroutines/channels/j0;", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "isClosedForSend", "()Z", "Lkotlinx/coroutines/selects/e;", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "scope", "<init>", "(Lkotlinx/coroutines/s0;Lkotlinx/coroutines/channels/j0;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class SimpleProducerScopeImpl<T> implements SimpleProducerScope<T>, s0, j0<T> {
    private final /* synthetic */ s0 $$delegate_0;
    @g
    private final j0<T> channel;

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleProducerScopeImpl(@g s0 scope, @g j0<? super T> channel) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
        this.$$delegate_0 = scope;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    @Override // androidx.paging.SimpleProducerScope
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object awaitClose(@m8.g kotlin.jvm.functions.Function0<kotlin.Unit> r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.SimpleProducerScopeImpl$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.SimpleProducerScopeImpl$awaitClose$1 r0 = (androidx.paging.SimpleProducerScopeImpl$awaitClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SimpleProducerScopeImpl$awaitClose$1 r0 = new androidx.paging.SimpleProducerScopeImpl$awaitClose$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$1
            kotlinx.coroutines.j2 r6 = (kotlinx.coroutines.j2) r6
            java.lang.Object r6 = r0.L$0
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L86
            goto L74
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.coroutines.CoroutineContext r7 = r5.getCoroutineContext()     // Catch: java.lang.Throwable -> L86
            kotlinx.coroutines.j2$b r2 = kotlinx.coroutines.j2.f86331k2     // Catch: java.lang.Throwable -> L86
            kotlin.coroutines.CoroutineContext$Element r7 = r7.get(r2)     // Catch: java.lang.Throwable -> L86
            if (r7 == 0) goto L7a
            kotlinx.coroutines.j2 r7 = (kotlinx.coroutines.j2) r7     // Catch: java.lang.Throwable -> L86
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L86
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L86
            r0.label = r3     // Catch: java.lang.Throwable -> L86
            kotlinx.coroutines.r r2 = new kotlinx.coroutines.r     // Catch: java.lang.Throwable -> L86
            kotlin.coroutines.Continuation r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L86
            r2.<init>(r4, r3)     // Catch: java.lang.Throwable -> L86
            r2.C()     // Catch: java.lang.Throwable -> L86
            androidx.paging.SimpleProducerScopeImpl$awaitClose$2$1 r3 = new androidx.paging.SimpleProducerScopeImpl$awaitClose$2$1     // Catch: java.lang.Throwable -> L86
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L86
            r7.H(r3)     // Catch: java.lang.Throwable -> L86
            java.lang.Object r7 = r2.A()     // Catch: java.lang.Throwable -> L86
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L86
            if (r7 != r2) goto L71
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.lang.Throwable -> L86
        L71:
            if (r7 != r1) goto L74
            return r1
        L74:
            r6.invoke()
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L7a:
            java.lang.String r7 = "Internal error, context should have a job."
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L86
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L86
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L86
            throw r0     // Catch: java.lang.Throwable -> L86
        L86:
            r7 = move-exception
            r6.invoke()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SimpleProducerScopeImpl.awaitClose(kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean close(@h Throwable th) {
        return this.channel.close(th);
    }

    @Override // androidx.paging.SimpleProducerScope
    @g
    public j0<T> getChannel() {
        return this.channel;
    }

    @Override // kotlinx.coroutines.s0
    @g
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    @Override // kotlinx.coroutines.channels.j0
    @g
    public e<T, j0<T>> getOnSend() {
        return this.channel.getOnSend();
    }

    @Override // kotlinx.coroutines.channels.j0
    @y1
    public void invokeOnClose(@g Function1<? super Throwable, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.channel.invokeOnClose(handler);
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean isClosedForSend() {
        return this.channel.isClosedForSend();
    }

    @Override // kotlinx.coroutines.channels.j0
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(T t9) {
        return this.channel.offer(t9);
    }

    @Override // kotlinx.coroutines.channels.j0
    @h
    public Object send(T t9, @g Continuation<? super Unit> continuation) {
        return this.channel.send(t9, continuation);
    }

    @Override // kotlinx.coroutines.channels.j0
    @g
    /* renamed from: trySend-JP2dKIU  reason: not valid java name */
    public Object mo51trySendJP2dKIU(T t9) {
        return this.channel.mo51trySendJP2dKIU(t9);
    }
}
