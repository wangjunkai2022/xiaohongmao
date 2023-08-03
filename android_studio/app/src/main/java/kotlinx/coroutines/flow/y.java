package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.l1;

/* compiled from: SharedFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010 \n\u0002\b\u000b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u0001HB\u001f\u0012\u0006\u0010I\u001a\u00020\u0016\u0012\u0006\u0010K\u001a\u00020\u0016\u0012\u0006\u0010F\u001a\u00020E¢\u0006\u0004\bm\u0010nJ\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\b\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0013\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J9\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00142\u0010\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J(\u0010$\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000eH\u0002J\b\u0010%\u001a\u00020\fH\u0002J\u0012\u0010'\u001a\u0004\u0018\u00010\u00112\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00112\u0006\u0010)\u001a\u00020\u000eH\u0002J\u001b\u0010+\u001a\u00020\f2\u0006\u0010&\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0004\b+\u0010,J3\u0010/\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010-0\u00142\u0014\u0010.\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010-0\u0014H\u0002¢\u0006\u0004\b/\u00100J!\u00104\u001a\u0002032\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u000001H\u0096@ø\u0001\u0000¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u0010\nJ\u001b\u00107\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b7\u0010\u001cJ\u000f\u00108\u001a\u00020\u000eH\u0000¢\u0006\u0004\b8\u00109J%\u0010;\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010-0\u00142\u0006\u0010:\u001a\u00020\u000eH\u0000¢\u0006\u0004\b;\u0010<J\b\u0010=\u001a\u00020\u0003H\u0014J\u001f\u0010?\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00142\u0006\u0010>\u001a\u00020\u0016H\u0014¢\u0006\u0004\b?\u0010@J\b\u0010A\u001a\u00020\fH\u0016J&\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000G2\u0006\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020\u00162\u0006\u0010F\u001a\u00020EH\u0016R\u0014\u0010I\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010\rR\u0014\u0010K\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010\rR\u0014\u0010F\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR \u0010P\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010S\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010RR\u0016\u0010W\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010\rR\u0016\u0010Y\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010\rR\u0014\u0010[\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bZ\u00109R\u0014\u0010]\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010\\R\u0014\u0010_\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b^\u0010\\R\u0014\u0010a\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b`\u00109R\u0014\u0010c\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bb\u00109R\u001a\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\be\u0010fR\u001a\u0010l\u001a\u00028\u00008DX\u0084\u0004¢\u0006\f\u0012\u0004\bj\u0010k\u001a\u0004\bh\u0010i\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006o"}, d2 = {"Lkotlinx/coroutines/flow/y;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/a;", "Lkotlinx/coroutines/flow/a0;", "Lkotlinx/coroutines/flow/s;", "Lkotlinx/coroutines/flow/c;", "Lkotlinx/coroutines/flow/internal/p;", "value", "", ExifInterface.LONGITUDE_WEST, "(Ljava/lang/Object;)Z", "X", "", "I", "", "newHead", "F", "", "item", "L", "", "curBuffer", "", "curSize", "newSize", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "([Ljava/lang/Object;II)[Ljava/lang/Object;", "K", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/y$a;", "emitter", "C", "newReplayIndex", "newMinCollectorIndex", "newBufferEndIndex", "newQueueEndIndex", "a0", "D", "slot", "Z", "Y", "index", "R", "B", "(Lkotlinx/coroutines/flow/a0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "resumesIn", "M", "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "c", "emit", "c0", "()J", "oldIndex", "b0", "(J)[Lkotlin/coroutines/Continuation;", "G", com.qennnsad.aknkaksd.data.repository.f.f47745b, "H", "(I)[Lkotlinx/coroutines/flow/a0;", "e", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/i;", "a", "replay", "f", "bufferCapacity", "g", "Lkotlinx/coroutines/channels/BufferOverflow;", "h", "[Ljava/lang/Object;", "buffer", ContextChain.TAG_INFRA, "J", "replayIndex", "j", "minCollectorIndex", "k", "bufferSize", "l", "queueSize", "O", com.google.android.exoplayer2.text.ttml.d.f25724o, "()I", "replaySize", "U", "totalSize", "N", "bufferEndIndex", ExifInterface.LATITUDE_SOUTH, "queueEndIndex", "", "b", "()Ljava/util/List;", "replayCache", "P", "()Ljava/lang/Object;", "getLastReplayedLocked$annotations", "()V", "lastReplayedLocked", "<init>", "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class y<T> extends kotlinx.coroutines.flow.internal.a<a0> implements s<T>, kotlinx.coroutines.flow.c<T>, kotlinx.coroutines.flow.internal.p<T> {

    /* renamed from: e  reason: collision with root package name */
    private final int f86162e;

    /* renamed from: f  reason: collision with root package name */
    private final int f86163f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final BufferOverflow f86164g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Object[] f86165h;

    /* renamed from: i  reason: collision with root package name */
    private long f86166i;

    /* renamed from: j  reason: collision with root package name */
    private long f86167j;

    /* renamed from: k  reason: collision with root package name */
    private int f86168k;

    /* renamed from: l  reason: collision with root package name */
    private int f86169l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SharedFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B3\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/flow/y$a;", "Lkotlinx/coroutines/l1;", "", "dispose", "Lkotlinx/coroutines/flow/y;", "a", "Lkotlinx/coroutines/flow/y;", "flow", "", "b", "J", "index", "", "c", "Ljava/lang/Object;", "value", "Lkotlin/coroutines/Continuation;", "d", "Lkotlin/coroutines/Continuation;", "cont", "<init>", "(Lkotlinx/coroutines/flow/y;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements l1 {
        @JvmField
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public final y<?> f86170a;
        @JvmField

        /* renamed from: b  reason: collision with root package name */
        public long f86171b;
        @m8.h
        @JvmField

        /* renamed from: c  reason: collision with root package name */
        public final Object f86172c;
        @JvmField
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        public final Continuation<Unit> f86173d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g y<?> yVar, long j4, @m8.h Object obj, @m8.g Continuation<? super Unit> continuation) {
            this.f86170a = yVar;
            this.f86171b = j4;
            this.f86172c = obj;
            this.f86173d = continuation;
        }

        @Override // kotlinx.coroutines.l1
        public void dispose() {
            this.f86170a.C(this);
        }
    }

    /* compiled from: SharedFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {373, 380, 383}, m = "collect$suspendImpl", n = {"this", "collector", "slot", "this", "collector", "slot", "collectorJob", "this", "collector", "slot", "collectorJob"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes4.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86174a;

        /* renamed from: b  reason: collision with root package name */
        Object f86175b;

        /* renamed from: c  reason: collision with root package name */
        Object f86176c;

        /* renamed from: d  reason: collision with root package name */
        Object f86177d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f86178e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ y<T> f86179f;

        /* renamed from: g  reason: collision with root package name */
        int f86180g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(y<T> yVar, Continuation<? super c> continuation) {
            super(continuation);
            this.f86179f = yVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86178e = obj;
            this.f86180g |= Integer.MIN_VALUE;
            return y.E(this.f86179f, null, this);
        }
    }

    public y(int i4, int i10, @m8.g BufferOverflow bufferOverflow) {
        this.f86162e = i4;
        this.f86163f = i10;
        this.f86164g = bufferOverflow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object B(a0 a0Var, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Unit unit;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        synchronized (this) {
            if (Y(a0Var) < 0) {
                a0Var.f85838b = rVar;
            } else {
                Result.Companion companion = Result.Companion;
                rVar.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
            }
            unit = Unit.INSTANCE;
        }
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return A == coroutine_suspended2 ? A : unit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(a aVar) {
        synchronized (this) {
            if (aVar.f86171b < O()) {
                return;
            }
            Object[] objArr = this.f86165h;
            Intrinsics.checkNotNull(objArr);
            if (z.c(objArr, aVar.f86171b) != aVar) {
                return;
            }
            z.d(objArr, aVar.f86171b, z.f86181a);
            D();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void D() {
        if (this.f86163f != 0 || this.f86169l > 1) {
            Object[] objArr = this.f86165h;
            Intrinsics.checkNotNull(objArr);
            while (this.f86169l > 0 && z.c(objArr, (O() + U()) - 1) == z.f86181a) {
                this.f86169l--;
                z.d(objArr, O() + U(), null);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|(3:(6:(1:(1:11)(2:42|43))(1:44)|12|13|14|15|(3:16|(4:26|(1:28)(1:34)|29|(2:31|32)(1:33))(3:18|19|(2:21|22)(1:24))|25))(4:45|46|47|48)|38|39)(5:54|55|56|(2:58|(1:60))|62)|49|50|15|(3:16|(0)(0)|25)))|65|6|(0)(0)|49|50|15|(3:16|(0)(0)|25)) */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d4, code lost:
        r5 = r8;
        r8 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ab A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ java.lang.Object E(kotlinx.coroutines.flow.y r8, kotlinx.coroutines.flow.j r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.y.E(kotlinx.coroutines.flow.y, kotlinx.coroutines.flow.j, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void F(long j4) {
        kotlinx.coroutines.flow.internal.c[] g4;
        if (kotlinx.coroutines.flow.internal.a.f(this) != 0 && (g4 = kotlinx.coroutines.flow.internal.a.g(this)) != null) {
            int i4 = 0;
            int length = g4.length;
            while (i4 < length) {
                kotlinx.coroutines.flow.internal.c cVar = g4[i4];
                i4++;
                if (cVar != null) {
                    a0 a0Var = (a0) cVar;
                    long j10 = a0Var.f85837a;
                    if (j10 >= 0 && j10 < j4) {
                        a0Var.f85837a = j4;
                    }
                }
            }
        }
        this.f86167j = j4;
    }

    private final void I() {
        Object[] objArr = this.f86165h;
        Intrinsics.checkNotNull(objArr);
        z.d(objArr, O(), null);
        this.f86168k--;
        long O = O() + 1;
        if (this.f86166i < O) {
            this.f86166i = O;
        }
        if (this.f86167j < O) {
            F(O);
        }
    }

    static /* synthetic */ Object J(y yVar, Object obj, Continuation continuation) {
        Object coroutine_suspended;
        if (yVar.c(obj)) {
            return Unit.INSTANCE;
        }
        Object K = yVar.K(obj, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return K == coroutine_suspended ? K : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object K(T t9, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Continuation<Unit>[] continuationArr;
        a aVar;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        Continuation<Unit>[] continuationArr2 = kotlinx.coroutines.flow.internal.b.f85909a;
        synchronized (this) {
            if (W(t9)) {
                Result.Companion companion = Result.Companion;
                rVar.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
                continuationArr = M(continuationArr2);
                aVar = null;
            } else {
                a aVar2 = new a(this, U() + O(), t9, rVar);
                L(aVar2);
                this.f86169l++;
                if (this.f86163f == 0) {
                    continuationArr2 = M(continuationArr2);
                }
                continuationArr = continuationArr2;
                aVar = aVar2;
            }
        }
        if (aVar != null) {
            kotlinx.coroutines.t.a(rVar, aVar);
        }
        int i4 = 0;
        int length = continuationArr.length;
        while (i4 < length) {
            Continuation<Unit> continuation2 = continuationArr[i4];
            i4++;
            if (continuation2 != null) {
                Result.Companion companion2 = Result.Companion;
                continuation2.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
            }
        }
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return A == coroutine_suspended2 ? A : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(Object obj) {
        int U = U();
        Object[] objArr = this.f86165h;
        if (objArr == null) {
            objArr = V(null, 0, 2);
        } else if (U >= objArr.length) {
            objArr = V(objArr, U, objArr.length * 2);
        }
        z.d(objArr, O() + U, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object[], java.lang.Object] */
    public final Continuation<Unit>[] M(Continuation<Unit>[] continuationArr) {
        kotlinx.coroutines.flow.internal.c[] g4;
        a0 a0Var;
        Continuation<? super Unit> continuation;
        int length = continuationArr.length;
        if (kotlinx.coroutines.flow.internal.a.f(this) != 0 && (g4 = kotlinx.coroutines.flow.internal.a.g(this)) != null) {
            int i4 = 0;
            int length2 = g4.length;
            while (i4 < length2) {
                kotlinx.coroutines.flow.internal.c cVar = g4[i4];
                i4++;
                if (cVar != null && (continuation = (a0Var = (a0) cVar).f85838b) != null && Y(a0Var) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                        continuationArr = copyOf;
                    }
                    continuationArr[length] = continuation;
                    a0Var.f85838b = null;
                    length++;
                }
            }
        }
        return continuationArr;
    }

    private final long N() {
        return O() + this.f86168k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long O() {
        return Math.min(this.f86167j, this.f86166i);
    }

    protected static /* synthetic */ void Q() {
    }

    private final Object R(long j4) {
        Object[] objArr = this.f86165h;
        Intrinsics.checkNotNull(objArr);
        Object c10 = z.c(objArr, j4);
        return c10 instanceof a ? ((a) c10).f86172c : c10;
    }

    private final long S() {
        return O() + this.f86168k + this.f86169l;
    }

    private final int T() {
        return (int) ((O() + this.f86168k) - this.f86166i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int U() {
        return this.f86168k + this.f86169l;
    }

    private final Object[] V(Object[] objArr, int i4, int i10) {
        if (i10 > 0) {
            Object[] objArr2 = new Object[i10];
            this.f86165h = objArr2;
            if (objArr == null) {
                return objArr2;
            }
            long O = O();
            for (int i11 = 0; i11 < i4; i11++) {
                long j4 = i11 + O;
                z.d(objArr2, j4, z.c(objArr, j4));
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean W(T t9) {
        if (m() == 0) {
            return X(t9);
        }
        if (this.f86168k >= this.f86163f && this.f86167j <= this.f86166i) {
            int i4 = b.$EnumSwitchMapping$0[this.f86164g.ordinal()];
            if (i4 == 1) {
                return false;
            }
            if (i4 == 2) {
                return true;
            }
        }
        L(t9);
        int i10 = this.f86168k + 1;
        this.f86168k = i10;
        if (i10 > this.f86163f) {
            I();
        }
        if (T() > this.f86162e) {
            a0(this.f86166i + 1, this.f86167j, N(), S());
        }
        return true;
    }

    private final boolean X(T t9) {
        if (this.f86162e == 0) {
            return true;
        }
        L(t9);
        int i4 = this.f86168k + 1;
        this.f86168k = i4;
        if (i4 > this.f86162e) {
            I();
        }
        this.f86167j = O() + this.f86168k;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long Y(a0 a0Var) {
        long j4 = a0Var.f85837a;
        if (j4 < N()) {
            return j4;
        }
        if (this.f86163f <= 0 && j4 <= O() && this.f86169l != 0) {
            return j4;
        }
        return -1L;
    }

    private final Object Z(a0 a0Var) {
        Object obj;
        Continuation<Unit>[] continuationArr = kotlinx.coroutines.flow.internal.b.f85909a;
        synchronized (this) {
            long Y = Y(a0Var);
            if (Y < 0) {
                obj = z.f86181a;
            } else {
                long j4 = a0Var.f85837a;
                Object R = R(Y);
                a0Var.f85837a = Y + 1;
                continuationArr = b0(j4);
                obj = R;
            }
        }
        int i4 = 0;
        int length = continuationArr.length;
        while (i4 < length) {
            Continuation<Unit> continuation = continuationArr[i4];
            i4++;
            if (continuation != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
            }
        }
        return obj;
    }

    private final void a0(long j4, long j10, long j11, long j12) {
        long min = Math.min(j10, j4);
        for (long O = O(); O < min; O = 1 + O) {
            Object[] objArr = this.f86165h;
            Intrinsics.checkNotNull(objArr);
            z.d(objArr, O, null);
        }
        this.f86166i = j4;
        this.f86167j = j10;
        this.f86168k = (int) (j11 - min);
        this.f86169l = (int) (j12 - j11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @m8.g
    /* renamed from: G */
    public a0 i() {
        return new a0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @m8.g
    /* renamed from: H */
    public a0[] j(int i4) {
        return new a0[i4];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T P() {
        Object[] objArr = this.f86165h;
        Intrinsics.checkNotNull(objArr);
        return (T) z.c(objArr, (this.f86166i + T()) - 1);
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @m8.g
    public i<T> a(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return z.e(this, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.x
    @m8.g
    public List<T> b() {
        List<T> emptyList;
        synchronized (this) {
            int T = T();
            if (T == 0) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            ArrayList arrayList = new ArrayList(T);
            Object[] objArr = this.f86165h;
            Intrinsics.checkNotNull(objArr);
            int i4 = 0;
            while (i4 < T) {
                int i10 = i4 + 1;
                arrayList.add(z.c(objArr, this.f86166i + i4));
                i4 = i10;
            }
            return arrayList;
        }
    }

    @m8.g
    public final Continuation<Unit>[] b0(long j4) {
        int i4;
        long j10;
        kotlinx.coroutines.flow.internal.c[] g4;
        if (j4 > this.f86167j) {
            return kotlinx.coroutines.flow.internal.b.f85909a;
        }
        long O = O();
        long j11 = this.f86168k + O;
        long j12 = 1;
        if (this.f86163f == 0 && this.f86169l > 0) {
            j11++;
        }
        if (kotlinx.coroutines.flow.internal.a.f(this) != 0 && (g4 = kotlinx.coroutines.flow.internal.a.g(this)) != null) {
            int length = g4.length;
            int i10 = 0;
            while (i10 < length) {
                kotlinx.coroutines.flow.internal.c cVar = g4[i10];
                i10++;
                if (cVar != null) {
                    long j13 = ((a0) cVar).f85837a;
                    if (j13 >= 0 && j13 < j11) {
                        j11 = j13;
                    }
                }
            }
        }
        if (j11 <= this.f86167j) {
            return kotlinx.coroutines.flow.internal.b.f85909a;
        }
        long N = N();
        if (m() > 0) {
            i4 = Math.min(this.f86169l, this.f86163f - ((int) (N - j11)));
        } else {
            i4 = this.f86169l;
        }
        Continuation<Unit>[] continuationArr = kotlinx.coroutines.flow.internal.b.f85909a;
        long j14 = this.f86169l + N;
        if (i4 > 0) {
            continuationArr = new Continuation[i4];
            Object[] objArr = this.f86165h;
            Intrinsics.checkNotNull(objArr);
            long j15 = N;
            int i11 = 0;
            while (true) {
                if (N >= j14) {
                    j10 = j11;
                    break;
                }
                long j16 = N + j12;
                Object c10 = z.c(objArr, N);
                p0 p0Var = z.f86181a;
                if (c10 != p0Var) {
                    Objects.requireNonNull(c10, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) c10;
                    int i12 = i11 + 1;
                    j10 = j11;
                    continuationArr[i11] = aVar.f86173d;
                    z.d(objArr, N, p0Var);
                    long j17 = j15;
                    z.d(objArr, j17, aVar.f86172c);
                    j15 = j17 + 1;
                    if (i12 >= i4) {
                        break;
                    }
                    i11 = i12;
                    N = j16;
                    j11 = j10;
                } else {
                    N = j16;
                }
                j12 = 1;
            }
            N = j15;
        } else {
            j10 = j11;
        }
        int i13 = (int) (N - O);
        long j18 = m() == 0 ? N : j10;
        long max = Math.max(this.f86166i, N - Math.min(this.f86162e, i13));
        if (this.f86163f == 0 && max < j14) {
            Object[] objArr2 = this.f86165h;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(z.c(objArr2, max), z.f86181a)) {
                N++;
                max++;
            }
        }
        a0(max, j18, N, j14);
        D();
        return (continuationArr.length == 0) ^ true ? M(continuationArr) : continuationArr;
    }

    @Override // kotlinx.coroutines.flow.s
    public boolean c(T t9) {
        int i4;
        boolean z9;
        Continuation<Unit>[] continuationArr = kotlinx.coroutines.flow.internal.b.f85909a;
        synchronized (this) {
            i4 = 0;
            if (W(t9)) {
                continuationArr = M(continuationArr);
                z9 = true;
            } else {
                z9 = false;
            }
        }
        int length = continuationArr.length;
        while (i4 < length) {
            Continuation<Unit> continuation = continuationArr[i4];
            i4++;
            if (continuation != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
            }
        }
        return z9;
    }

    public final long c0() {
        long j4 = this.f86166i;
        if (j4 < this.f86167j) {
            this.f86167j = j4;
        }
        return j4;
    }

    @Override // kotlinx.coroutines.flow.x, kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<?> continuation) {
        return E(this, jVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.s
    public void e() {
        synchronized (this) {
            a0(N(), this.f86167j, N(), S());
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.s, kotlinx.coroutines.flow.j
    @m8.h
    public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
        return J(this, t9, continuation);
    }
}
