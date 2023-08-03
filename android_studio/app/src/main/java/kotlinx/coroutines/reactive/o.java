package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.extractor.ts.h0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.channels.q;

/* compiled from: ReactiveFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001f\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u0007H\u0016J\u0012\u0010\r\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lkotlinx/coroutines/reactive/o;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/reactivestreams/d;", "c", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "value", "", "onNext", "(Ljava/lang/Object;)V", "onComplete", "", "t", "onError", "Lorg/reactivestreams/e;", "s", "onSubscribe", "b", "a", "", "J", "requestSize", "Lorg/reactivestreams/e;", "subscription", "Lkotlinx/coroutines/channels/m;", "Lkotlinx/coroutines/channels/m;", "channel", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(ILkotlinx/coroutines/channels/BufferOverflow;J)V", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class o<T> implements org.reactivestreams.d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final long f86484a;

    /* renamed from: b  reason: collision with root package name */
    private org.reactivestreams.e f86485b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final kotlinx.coroutines.channels.m<T> f86486c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReactiveFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.ReactiveSubscriber", f = "ReactiveFlow.kt", i = {}, l = {h0.G}, m = "takeNextOrNull", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f86487a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o<T> f86488b;

        /* renamed from: c  reason: collision with root package name */
        int f86489c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(o<T> oVar, Continuation<? super a> continuation) {
            super(continuation);
            this.f86488b = oVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86487a = obj;
            this.f86489c |= Integer.MIN_VALUE;
            return this.f86488b.c(this);
        }
    }

    public o(int i4, @m8.g BufferOverflow bufferOverflow, long j4) {
        this.f86484a = j4;
        this.f86486c = kotlinx.coroutines.channels.p.d(i4 == 0 ? 1 : i4, bufferOverflow, null, 4, null);
    }

    public final void a() {
        org.reactivestreams.e eVar = this.f86485b;
        if (eVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscription");
            eVar = null;
        }
        eVar.cancel();
    }

    public final void b() {
        org.reactivestreams.e eVar = this.f86485b;
        if (eVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscription");
            eVar = null;
        }
        eVar.request(this.f86484a);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(@m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlinx.coroutines.reactive.o.a
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.reactive.o$a r0 = (kotlinx.coroutines.reactive.o.a) r0
            int r1 = r0.f86489c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86489c = r1
            goto L18
        L13:
            kotlinx.coroutines.reactive.o$a r0 = new kotlinx.coroutines.reactive.o$a
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f86487a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86489c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            java.lang.Object r5 = r5.o()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.m<T> r5 = r4.f86486c
            r0.f86489c = r3
            java.lang.Object r5 = r5.x(r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            java.lang.Throwable r0 = kotlinx.coroutines.channels.q.f(r5)
            if (r0 != 0) goto L54
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.q.c
            if (r0 == 0) goto L53
            kotlinx.coroutines.channels.q.f(r5)
            r5 = 0
        L53:
            return r5
        L54:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.o.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        j0.a.a(this.f86486c, null, 1, null);
    }

    @Override // org.reactivestreams.d
    public void onError(@m8.h Throwable th) {
        this.f86486c.close(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(@m8.g T t9) {
        if (q.m(this.f86486c.mo51trySendJP2dKIU(t9))) {
            return;
        }
        throw new IllegalArgumentException(("Element " + t9 + " was not added to channel because it was full, " + this.f86486c).toString());
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(@m8.g org.reactivestreams.e eVar) {
        this.f86485b = eVar;
        b();
    }
}
