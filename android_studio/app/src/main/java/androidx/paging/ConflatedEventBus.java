package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.extractor.ts.h0;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.j0;
import m8.g;
import m8.h;

/* compiled from: ConflatedEventBus.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0006J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0006R(\u0010\n\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00018\u00000\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Landroidx/paging/ConflatedEventBus;", "", ExifInterface.GPS_DIRECTION_TRUE, "data", "", "send", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/flow/t;", "Lkotlin/Pair;", "", t.b.f83859d, "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/i;", "flow", "Lkotlinx/coroutines/flow/i;", "getFlow", "()Lkotlinx/coroutines/flow/i;", "initialValue", "<init>", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ConflatedEventBus<T> {
    @g
    private final i<T> flow;
    @g
    private final kotlinx.coroutines.flow.t<Pair<Integer, T>> state;

    public ConflatedEventBus() {
        this(null, 1, null);
    }

    public ConflatedEventBus(@h T t9) {
        final kotlinx.coroutines.flow.t<Pair<Integer, T>> a10 = j0.a(new Pair(Integer.MIN_VALUE, t9));
        this.state = a10;
        this.flow = new i<T>() { // from class: androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 5, 1})
            /* renamed from: androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1$2  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2 implements j<Pair<? extends Integer, ? extends T>> {
                final /* synthetic */ j $this_unsafeFlow$inlined;

                @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
                @DebugMetadata(c = "androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1$2", f = "ConflatedEventBus.kt", i = {}, l = {h0.H}, m = "emit", n = {}, s = {})
                /* renamed from: androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1$2$1  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @h
                    public final Object invokeSuspend(@g Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(j jVar) {
                    this.$this_unsafeFlow$inlined = jVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.lang.Object r5, @m8.g kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1$2$1 r0 = (androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1$2$1 r0 = new androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L48
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.$this_unsafeFlow$inlined
                        kotlin.Pair r5 = (kotlin.Pair) r5
                        java.lang.Object r5 = r5.getSecond()
                        if (r5 != 0) goto L3f
                        goto L48
                    L3f:
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L48
                        return r1
                    L48:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @h
            public Object collect(@g j jVar, @g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = i.this.collect(new AnonymousClass2(jVar), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @g
    public final i<T> getFlow() {
        return this.flow;
    }

    public final void send(@g T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        kotlinx.coroutines.flow.t<Pair<Integer, T>> tVar = this.state;
        tVar.setValue(new Pair<>(Integer.valueOf(tVar.getValue().getFirst().intValue() + 1), data));
    }

    public /* synthetic */ ConflatedEventBus(Object obj, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : obj);
    }
}
