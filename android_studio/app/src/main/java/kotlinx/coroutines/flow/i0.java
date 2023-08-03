package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.p0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006B\u000f\u0012\u0006\u00107\u001a\u00020\u0007¢\u0006\u0004\b8\u00101J!\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030!2\u0006\u0010 \u001a\u00020\u001fH\u0014¢\u0006\u0004\b\"\u0010#J-\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000)2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010,R*\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00008V@VX\u0096\u000e¢\u0006\u0012\u0012\u0004\b2\u0010\u0017\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00028\u0000038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00105\u0082\u0002\u0004\n\u0002\b\u0019¨\u00069"}, d2 = {"Lkotlinx/coroutines/flow/i0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/a;", "Lkotlinx/coroutines/flow/k0;", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/c;", "Lkotlinx/coroutines/flow/internal/p;", "", "expectedState", "newState", "", "s", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "expect", "update", "compareAndSet", "value", "c", "(Ljava/lang/Object;)Z", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", "()V", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "p", "()Lkotlinx/coroutines/flow/k0;", "", com.qennnsad.aknkaksd.data.repository.f.f47745b, "", "q", "(I)[Lkotlinx/coroutines/flow/k0;", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/i;", "a", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;", "I", "sequence", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "getValue$annotations", "", "b", "()Ljava/util/List;", "replayCache", "initialState", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i0<T> extends kotlinx.coroutines.flow.internal.a<k0> implements t<T>, c<T>, kotlinx.coroutines.flow.internal.p<T> {
    @m8.g
    private volatile /* synthetic */ Object _state;

    /* renamed from: e  reason: collision with root package name */
    private int f85887e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StateFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {386, 398, TypedValues.Cycle.TYPE_ALPHA}, m = "collect", n = {"this", "collector", "slot", "this", "collector", "slot", "collectorJob", "newState", "this", "collector", "slot", "collectorJob", "oldState"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85888a;

        /* renamed from: b  reason: collision with root package name */
        Object f85889b;

        /* renamed from: c  reason: collision with root package name */
        Object f85890c;

        /* renamed from: d  reason: collision with root package name */
        Object f85891d;

        /* renamed from: e  reason: collision with root package name */
        Object f85892e;

        /* renamed from: f  reason: collision with root package name */
        /* synthetic */ Object f85893f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ i0<T> f85894g;

        /* renamed from: h  reason: collision with root package name */
        int f85895h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(i0<T> i0Var, Continuation<? super a> continuation) {
            super(continuation);
            this.f85894g = i0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85893f = obj;
            this.f85895h |= Integer.MIN_VALUE;
            return this.f85894g.collect(null, this);
        }
    }

    public i0(@m8.g Object obj) {
        this._state = obj;
    }

    public static /* synthetic */ void r() {
    }

    private final boolean s(Object obj, Object obj2) {
        int i4;
        k0[] n9;
        n();
        synchronized (this) {
            Object obj3 = this._state;
            if (obj != null && !Intrinsics.areEqual(obj3, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(obj3, obj2)) {
                return true;
            }
            this._state = obj2;
            int i10 = this.f85887e;
            if ((i10 & 1) == 0) {
                int i11 = i10 + 1;
                this.f85887e = i11;
                k0[] n10 = n();
                Unit unit = Unit.INSTANCE;
                while (true) {
                    k0[] k0VarArr = n10;
                    if (k0VarArr != null) {
                        int length = k0VarArr.length;
                        int i12 = 0;
                        while (i12 < length) {
                            k0 k0Var = k0VarArr[i12];
                            i12++;
                            if (k0Var != null) {
                                k0Var.f();
                            }
                        }
                    }
                    synchronized (this) {
                        i4 = this.f85887e;
                        if (i4 == i11) {
                            this.f85887e = i11 + 1;
                            return true;
                        }
                        n9 = n();
                        Unit unit2 = Unit.INSTANCE;
                    }
                    n10 = n9;
                    i11 = i4;
                }
            } else {
                this.f85887e = i10 + 2;
                return true;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @m8.g
    public i<T> a(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return j0.d(this, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.x
    @m8.g
    public List<T> b() {
        List<T> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getValue());
        return listOf;
    }

    @Override // kotlinx.coroutines.flow.s
    public boolean c(T t9) {
        setValue(t9);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r11, r12) == false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ab A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:39:0x00b0, B:49:0x00d1, B:51:0x00d7, B:41:0x00b6, B:45:0x00bd, B:37:0x00ab, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:58:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:39:0x00b0, B:49:0x00d1, B:51:0x00d7, B:41:0x00b6, B:45:0x00bd, B:37:0x00ab, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:58:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:39:0x00b0, B:49:0x00d1, B:51:0x00d7, B:41:0x00b6, B:45:0x00bd, B:37:0x00ab, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:58:0x0024 }] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00d5 -> B:34:0x00a6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00e7 -> B:34:0x00a6). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.x, kotlinx.coroutines.flow.i
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object collect(@m8.g kotlinx.coroutines.flow.j<? super T> r11, @m8.g kotlin.coroutines.Continuation<?> r12) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.i0.collect(kotlinx.coroutines.flow.j, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.t
    public boolean compareAndSet(T t9, T t10) {
        if (t9 == null) {
            t9 = (T) kotlinx.coroutines.flow.internal.s.f86031a;
        }
        if (t10 == null) {
            t10 = (T) kotlinx.coroutines.flow.internal.s.f86031a;
        }
        return s(t9, t10);
    }

    @Override // kotlinx.coroutines.flow.s
    public void e() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.s, kotlinx.coroutines.flow.j
    @m8.h
    public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
        setValue(t9);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.t, kotlinx.coroutines.flow.h0
    public T getValue() {
        p0 p0Var = kotlinx.coroutines.flow.internal.s.f86031a;
        T t9 = (T) this._state;
        if (t9 == p0Var) {
            return null;
        }
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @m8.g
    /* renamed from: p */
    public k0 i() {
        return new k0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @m8.g
    /* renamed from: q */
    public k0[] j(int i4) {
        return new k0[i4];
    }

    @Override // kotlinx.coroutines.flow.t
    public void setValue(T t9) {
        if (t9 == null) {
            t9 = (T) kotlinx.coroutines.flow.internal.s.f86031a;
        }
        s(null, t9);
    }
}
