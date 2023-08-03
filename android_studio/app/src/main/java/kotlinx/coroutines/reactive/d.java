package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;

/* compiled from: Convert.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/f0;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lorg/reactivestreams/c;", "a", "kotlinx-coroutines-reactive"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Convert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.reactive.ConvertKt$asPublisher$1", f = "Convert.kt", i = {0, 1}, l = {16, 17}, m = "invokeSuspend", n = {"$this$publish", "$this$publish"}, s = {"L$0", "L$0"})
    /* loaded from: classes4.dex */
    public static final class a extends SuspendLambda implements Function2<d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f86422a;

        /* renamed from: b  reason: collision with root package name */
        int f86423b;

        /* renamed from: c  reason: collision with root package name */
        private /* synthetic */ Object f86424c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f0<Object> f86425d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(f0<Object> f0Var, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f86425d = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f86425d, continuation);
            aVar.f86424c = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x004a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0068 -> B:12:0x003e). Please submit an issue!!! */
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
                int r1 = r7.f86423b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L30
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                java.lang.Object r1 = r7.f86422a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r4 = r7.f86424c
                kotlinx.coroutines.channels.d0 r4 = (kotlinx.coroutines.channels.d0) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r4
                goto L3d
            L1b:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L23:
                java.lang.Object r1 = r7.f86422a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r4 = r7.f86424c
                kotlinx.coroutines.channels.d0 r4 = (kotlinx.coroutines.channels.d0) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r5 = r7
                goto L4f
            L30:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f86424c
                kotlinx.coroutines.channels.d0 r8 = (kotlinx.coroutines.channels.d0) r8
                kotlinx.coroutines.channels.f0<java.lang.Object> r1 = r7.f86425d
                kotlinx.coroutines.channels.o r1 = r1.iterator()
            L3d:
                r4 = r7
            L3e:
                r4.f86424c = r8
                r4.f86422a = r1
                r4.f86423b = r3
                java.lang.Object r5 = r1.b(r4)
                if (r5 != r0) goto L4b
                return r0
            L4b:
                r6 = r4
                r4 = r8
                r8 = r5
                r5 = r6
            L4f:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L6b
                java.lang.Object r8 = r1.next()
                r5.f86424c = r4
                r5.f86422a = r1
                r5.f86423b = r2
                java.lang.Object r8 = r4.send(r8, r5)
                if (r8 != r0) goto L68
                return r0
            L68:
                r8 = r4
                r4 = r5
                goto L3e
            L6b:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.d.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of consumeAsFlow()", replaceWith = @ReplaceWith(expression = "this.consumeAsFlow().asPublisher(context)", imports = {"kotlinx.coroutines.flow.consumeAsFlow"}))
    public static final /* synthetic */ org.reactivestreams.c a(f0 f0Var, CoroutineContext coroutineContext) {
        return k.b(coroutineContext, new a(f0Var, null));
    }

    public static /* synthetic */ org.reactivestreams.c b(f0 f0Var, CoroutineContext coroutineContext, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return a(f0Var, coroutineContext);
    }
}
