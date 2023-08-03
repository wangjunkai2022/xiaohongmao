package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.e3;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.channels.r;

/* compiled from: Channel.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a7\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a(\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0001\u001a(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/reactivestreams/c;", "Lkotlin/Function1;", "", com.alipay.sdk.packet.d.f6907q, "a", "(Lorg/reactivestreams/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", e3.b.f83149d, "Lkotlinx/coroutines/channels/f0;", "e", "c", "kotlinx-coroutines-reactive"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.ChannelKt", f = "Channel.kt", i = {0, 0}, l = {120}, m = "collect", n = {com.alipay.sdk.packet.d.f6907q, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86417a;

        /* renamed from: b  reason: collision with root package name */
        Object f86418b;

        /* renamed from: c  reason: collision with root package name */
        Object f86419c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f86420d;

        /* renamed from: e  reason: collision with root package name */
        int f86421e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86420d = obj;
            this.f86421e |= Integer.MIN_VALUE;
            return b.a(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006f A[Catch: all -> 0x0086, TRY_LEAVE, TryCatch #1 {all -> 0x0086, blocks: (B:26:0x0067, B:28:0x006f), top: B:44:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0063 -> B:14:0x0038). Please submit an issue!!! */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object a(@m8.g org.reactivestreams.c<T> r6, @m8.g kotlin.jvm.functions.Function1<? super T, kotlin.Unit> r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.reactive.b.a
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.reactive.b$a r0 = (kotlinx.coroutines.reactive.b.a) r0
            int r1 = r0.f86421e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86421e = r1
            goto L18
        L13:
            kotlinx.coroutines.reactive.b$a r0 = new kotlinx.coroutines.reactive.b$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f86420d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86421e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 != r4) goto L3d
            java.lang.Object r6 = r0.f86419c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f86418b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f86417a
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L3b
            r5 = r0
            r0 = r7
            r7 = r2
        L38:
            r2 = r1
            r1 = r5
            goto L67
        L3b:
            r6 = move-exception
            goto L90
        L3d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L45:
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = 0
            kotlinx.coroutines.channels.f0 r6 = f(r6, r8, r4, r3)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
            r8 = r6
            r6 = r5
        L54:
            r0.f86417a = r7     // Catch: java.lang.Throwable -> L89
            r0.f86418b = r8     // Catch: java.lang.Throwable -> L89
            r0.f86419c = r6     // Catch: java.lang.Throwable -> L89
            r0.f86421e = r4     // Catch: java.lang.Throwable -> L89
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L89
            if (r2 != r1) goto L63
            return r1
        L63:
            r5 = r0
            r0 = r8
            r8 = r2
            goto L38
        L67:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L86
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L86
            if (r8 == 0) goto L7a
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L86
            r7.invoke(r8)     // Catch: java.lang.Throwable -> L86
            r8 = r0
            r0 = r1
            r1 = r2
            goto L54
        L7a:
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
            kotlinx.coroutines.channels.r.b(r0, r3)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L86:
            r6 = move-exception
            r7 = r0
            goto L90
        L89:
            r6 = move-exception
            r7 = r8
            goto L90
        L8c:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L90:
            throw r6     // Catch: java.lang.Throwable -> L91
        L91:
            r8 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
            kotlinx.coroutines.channels.r.b(r7, r6)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.b.a(org.reactivestreams.c, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object b(org.reactivestreams.c<T> cVar, Function1<? super T, Unit> function1, Continuation<? super Unit> continuation) {
        f0 f10 = f(cVar, 0, 1, null);
        try {
            kotlinx.coroutines.channels.o it = f10.iterator();
            while (true) {
                InlineMarker.mark(3);
                InlineMarker.mark(0);
                Object b10 = it.b(null);
                InlineMarker.mark(1);
                if (!((Boolean) b10).booleanValue()) {
                    InlineMarker.finallyStart(1);
                    r.b(f10, null);
                    InlineMarker.finallyEnd(1);
                    return Unit.INSTANCE;
                }
                function1.invoke((Object) it.next());
            }
        } finally {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Transforming publisher to channel is deprecated, use asFlow() instead")
    public static final /* synthetic */ f0 c(org.reactivestreams.c cVar, int i4) {
        p pVar = new p(i4);
        cVar.i(pVar);
        return pVar;
    }

    public static /* synthetic */ f0 d(org.reactivestreams.c cVar, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 1;
        }
        return c(cVar, i4);
    }

    @PublishedApi
    @m8.g
    public static final <T> f0<T> e(@m8.g org.reactivestreams.c<T> cVar, int i4) {
        p pVar = new p(i4);
        cVar.i(pVar);
        return pVar;
    }

    public static /* synthetic */ f0 f(org.reactivestreams.c cVar, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 1;
        }
        return e(cVar, i4);
    }
}
