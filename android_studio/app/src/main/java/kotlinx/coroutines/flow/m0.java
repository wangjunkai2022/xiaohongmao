package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BG\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\u0012\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000b¢\u0006\u0002\b\u000fø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR>\u0010\u0012\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000b¢\u0006\u0002\b\u000f8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00138\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/flow/m0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/x;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Lkotlinx/coroutines/flow/x;", "sharedFlow", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "b", "Lkotlin/jvm/functions/Function2;", com.alipay.sdk.packet.d.f6907q, "", "()Ljava/util/List;", "replayCache", "<init>", "(Lkotlinx/coroutines/flow/x;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m0<T> implements x<T> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final x<T> f86066a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function2<j<? super T>, Continuation<? super Unit>, Object> f86067b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Share.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.SubscribedSharedFlow", f = "Share.kt", i = {}, l = {409}, m = "collect", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f86068a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ m0<T> f86069b;

        /* renamed from: c  reason: collision with root package name */
        int f86070c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m0<T> m0Var, Continuation<? super a> continuation) {
            super(continuation);
            this.f86069b = m0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86068a = obj;
            this.f86070c |= Integer.MIN_VALUE;
            return this.f86069b.collect(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m0(@m8.g x<? extends T> xVar, @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f86066a = xVar;
        this.f86067b = function2;
    }

    @Override // kotlinx.coroutines.flow.x
    @m8.g
    public List<T> b() {
        return this.f86066a.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kotlinx.coroutines.flow.x, kotlinx.coroutines.flow.i
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object collect(@m8.g kotlinx.coroutines.flow.j<? super T> r6, @m8.g kotlin.coroutines.Continuation<?> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.m0.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.m0$a r0 = (kotlinx.coroutines.flow.m0.a) r0
            int r1 = r0.f86070c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86070c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.m0$a r0 = new kotlinx.coroutines.flow.m0$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f86068a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86070c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L2d:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.x<T> r7 = r5.f86066a
            kotlinx.coroutines.flow.l0 r2 = new kotlinx.coroutines.flow.l0
            kotlin.jvm.functions.Function2<kotlinx.coroutines.flow.j<? super T>, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r4 = r5.f86067b
            r2.<init>(r6, r4)
            r0.f86070c = r3
            java.lang.Object r6 = r7.collect(r2, r0)
            if (r6 != r1) goto L46
            return r1
        L46:
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m0.collect(kotlinx.coroutines.flow.j, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
