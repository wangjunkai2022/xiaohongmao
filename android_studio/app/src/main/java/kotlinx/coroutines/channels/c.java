package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.o0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.v0;

/* compiled from: AbstractChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\t\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0004KOijB)\u0012 \u0010M\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u00010:j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`J¢\u0006\u0004\bh\u0010>J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ+\u0010\u000f\u001a\u00020\u000b*\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u0014\u0010\u0015JX\u0010\u001c\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00172\u0006\u0010\b\u001a\u00028\u00002(\u0010\u001b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00028\u0000H\u0014¢\u0006\u0004\b!\u0010\"J#\u0010#\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0014¢\u0006\u0004\b#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0004¢\u0006\u0004\b&\u0010'J\u001d\u0010)\u001a\b\u0012\u0002\b\u0003\u0018\u00010(2\u0006\u0010\b\u001a\u00028\u0000H\u0004¢\u0006\u0004\b)\u0010*J#\u0010-\u001a\u000e\u0012\u0002\b\u00030+j\u0006\u0012\u0002\b\u0003`,2\u0006\u0010\b\u001a\u00028\u0000H\u0004¢\u0006\u0004\b-\u0010.J\u001b\u0010/\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b/\u0010\rJ\u0017\u00101\u001a\u0002002\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u00102J$\u00105\u001a\b\u0012\u0004\u0012\u00020\u000b032\u0006\u0010\b\u001a\u00028\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b4\u0010\"J\u0019\u00106\u001a\u0004\u0018\u00010\u001a2\u0006\u0010/\u001a\u00020%H\u0014¢\u0006\u0004\b6\u00107J\u0019\u00108\u001a\u0002002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b8\u00109J)\u0010=\u001a\u00020\u000b2\u0018\u0010<\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000b0:j\u0002`;H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020?H\u0014¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010(H\u0014¢\u0006\u0004\bB\u0010CJ\u001d\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000D2\u0006\u0010\b\u001a\u00028\u0000H\u0004¢\u0006\u0004\bE\u0010FJ\u000f\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bH\u0010IR.\u0010M\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u00010:j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`J8\u0004X\u0085\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u001a\u0010S\u001a\u00020N8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u0014\u0010V\u001a\u0002008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0014\u0010X\u001a\u00020G8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bW\u0010IR\u0014\u0010Z\u001a\u0002008$X¤\u0004¢\u0006\u0006\u001a\u0004\bY\u0010UR\u0014\u0010[\u001a\u0002008$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010UR\u001a\u0010^\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00038DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010]R\u001a\u0010`\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00038DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b_\u0010]R\u0011\u0010a\u001a\u0002008F¢\u0006\u0006\u001a\u0004\ba\u0010UR#\u0010e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020b8F¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0014\u0010g\u001a\u00020G8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bf\u0010I\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006k"}, d2 = {"Lkotlinx/coroutines/channels/c;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/j0;", "Lkotlinx/coroutines/channels/v;", "closed", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;", "element", "z", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;", "", "M", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "B", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V", "cause", "C", "(Ljava/lang/Throwable;)V", y.b.f83920h, "(Lkotlinx/coroutines/channels/v;)V", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "", "block", "K", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "j", "()I", "H", "(Ljava/lang/Object;)Ljava/lang/Object;", "I", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/i0;", "O", "()Lkotlinx/coroutines/channels/i0;", "Lkotlinx/coroutines/channels/g0;", "L", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/g0;", "Lkotlinx/coroutines/internal/x$b;", "Lkotlinx/coroutines/internal/AddLastDesc;", "k", "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/x$b;", "send", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "trySend", "m", "(Lkotlinx/coroutines/channels/i0;)Ljava/lang/Object;", "close", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/x;", "J", "(Lkotlinx/coroutines/internal/x;)V", "N", "()Lkotlinx/coroutines/channels/g0;", "Lkotlinx/coroutines/channels/c$d;", "l", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/c$d;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "a", "Lkotlin/jvm/functions/Function1;", "onUndeliveredElement", "Lkotlinx/coroutines/internal/v;", "b", "Lkotlinx/coroutines/internal/v;", "r", "()Lkotlinx/coroutines/internal/v;", "queue", "G", "()Z", "isFullImpl", "s", "queueDebugStateString", "D", "isBufferAlwaysFull", "isBufferFull", "q", "()Lkotlinx/coroutines/channels/v;", "closedForSend", "p", "closedForReceive", "isClosedForSend", "Lkotlinx/coroutines/selects/e;", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "n", "bufferDebugString", "<init>", "c", "d", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class c<E> implements j0<E> {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f84838c = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "onCloseHandler");
    @m8.h
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    protected final Function1<E, Unit> f84839a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final kotlinx.coroutines.internal.v f84840b = new kotlinx.coroutines.internal.v();
    @m8.g
    private volatile /* synthetic */ Object onCloseHandler = null;

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0010\u001a\u00028\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0010\u001a\u00028\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/channels/c$a;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/i0;", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", "j0", "", "g0", "Lkotlinx/coroutines/channels/v;", "closed", "i0", "", "toString", "d", "Ljava/lang/Object;", "element", "", "h0", "()Ljava/lang/Object;", "pollResult", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a<E> extends i0 {
        @JvmField

        /* renamed from: d  reason: collision with root package name */
        public final E f84841d;

        public a(E e4) {
            this.f84841d = e4;
        }

        @Override // kotlinx.coroutines.channels.i0
        public void g0() {
        }

        @Override // kotlinx.coroutines.channels.i0
        @m8.h
        public Object h0() {
            return this.f84841d;
        }

        @Override // kotlinx.coroutines.channels.i0
        public void i0(@m8.g v<?> vVar) {
        }

        @Override // kotlinx.coroutines.channels.i0
        @m8.h
        public p0 j0(@m8.h x.d dVar) {
            p0 p0Var = kotlinx.coroutines.s.f86625d;
            if (dVar != null) {
                dVar.d();
            }
            return p0Var;
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "SendBuffered@" + v0.b(this) + '(' + this.f84841d + ')';
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u0000*\u0004\b\u0001\u0010\u00012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00028\u0001¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/channels/c$b;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/x$b;", "Lkotlinx/coroutines/channels/c$a;", "Lkotlinx/coroutines/internal/AddLastDesc;", "Lkotlinx/coroutines/internal/x;", "affected", "", "e", "Lkotlinx/coroutines/internal/v;", "queue", "element", "<init>", "(Lkotlinx/coroutines/internal/v;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    private static class b<E> extends x.b<a<? extends E>> {
        public b(@m8.g kotlinx.coroutines.internal.v vVar, E e4) {
            super(vVar, new a(e4));
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected Object e(@m8.g kotlinx.coroutines.internal.x xVar) {
            if (xVar instanceof v) {
                return xVar;
            }
            if (xVar instanceof g0) {
                return kotlinx.coroutines.channels.b.f84828e;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u00032\u00020\u0004BX\u0012\u0006\u0010\u0016\u001a\u00028\u0001\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00020\u001b\u0012(\u0010%\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010 \u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020!\u0012\u0006\u0012\u0004\u0018\u00010\"0\u001fø\u0001\u0000¢\u0006\u0004\b&\u0010'J\u0014\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\u0014\u0010\u000e\u001a\u00020\t2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u001a\u0010\u0016\u001a\u00028\u00018\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00020\u001b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR9\u0010%\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010 \u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020!\u0012\u0006\u0012\u0004\u0018\u00010\"0\u001f8\u0006X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, d2 = {"Lkotlinx/coroutines/channels/c$c;", ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/i0;", "Lkotlinx/coroutines/l1;", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", "j0", "", "g0", "dispose", "Lkotlinx/coroutines/channels/v;", "closed", "i0", "k0", "", "toString", "d", "Ljava/lang/Object;", "h0", "()Ljava/lang/Object;", "pollResult", "Lkotlinx/coroutines/channels/c;", "e", "Lkotlinx/coroutines/channels/c;", "channel", "Lkotlinx/coroutines/selects/f;", "f", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/j0;", "Lkotlin/coroutines/Continuation;", "", "g", "Lkotlin/jvm/functions/Function2;", "block", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.channels.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0725c<E, R> extends i0 implements l1 {

        /* renamed from: d  reason: collision with root package name */
        private final E f84842d;
        @JvmField
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        public final c<E> f84843e;
        @JvmField
        @m8.g

        /* renamed from: f  reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f84844f;
        @JvmField
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        public final Function2<j0<? super E>, Continuation<? super R>, Object> f84845g;

        /* JADX WARN: Multi-variable type inference failed */
        public C0725c(E e4, @m8.g c<E> cVar, @m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super j0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f84842d = e4;
            this.f84843e = cVar;
            this.f84844f = fVar;
            this.f84845g = function2;
        }

        @Override // kotlinx.coroutines.l1
        public void dispose() {
            if (Z()) {
                k0();
            }
        }

        @Override // kotlinx.coroutines.channels.i0
        public void g0() {
            z7.a.f(this.f84845g, this.f84843e, this.f84844f.u(), null, 4, null);
        }

        @Override // kotlinx.coroutines.channels.i0
        public E h0() {
            return this.f84842d;
        }

        @Override // kotlinx.coroutines.channels.i0
        public void i0(@m8.g v<?> vVar) {
            if (this.f84844f.t()) {
                this.f84844f.v(vVar.o0());
            }
        }

        @Override // kotlinx.coroutines.channels.i0
        @m8.h
        public p0 j0(@m8.h x.d dVar) {
            return (p0) this.f84844f.q(dVar);
        }

        @Override // kotlinx.coroutines.channels.i0
        public void k0() {
            Function1<E, Unit> function1 = this.f84843e.f84839a;
            if (function1 == null) {
                return;
            }
            kotlinx.coroutines.internal.g0.b(function1, h0(), this.f84844f.u().getContext());
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "SendSelect@" + v0.b(this) + '(' + h0() + ")[" + this.f84843e + ", " + this.f84844f + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\u000e\u001a\u00028\u0001\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0016\u0010\f\u001a\u0004\u0018\u00010\u00072\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016R\u0014\u0010\u000e\u001a\u00028\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/channels/c$d;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/x$e;", "Lkotlinx/coroutines/channels/g0;", "Lkotlinx/coroutines/internal/RemoveFirstDesc;", "Lkotlinx/coroutines/internal/x;", "affected", "", "e", "Lkotlinx/coroutines/internal/x$d;", "Lkotlinx/coroutines/internal/PrepareOp;", "prepareOp", "j", "Ljava/lang/Object;", "element", "Lkotlinx/coroutines/internal/v;", "queue", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/v;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d<E> extends x.e<g0<? super E>> {
        @JvmField

        /* renamed from: e  reason: collision with root package name */
        public final E f84846e;

        public d(E e4, @m8.g kotlinx.coroutines.internal.v vVar) {
            super(vVar);
            this.f84846e = e4;
        }

        @Override // kotlinx.coroutines.internal.x.e, kotlinx.coroutines.internal.x.a
        @m8.h
        protected Object e(@m8.g kotlinx.coroutines.internal.x xVar) {
            if (xVar instanceof v) {
                return xVar;
            }
            if (xVar instanceof g0) {
                return null;
            }
            return kotlinx.coroutines.channels.b.f84828e;
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        public Object j(@m8.g x.d dVar) {
            p0 x9 = ((g0) dVar.f86319a).x(this.f84846e, dVar);
            if (x9 == null) {
                return kotlinx.coroutines.internal.y.f86327a;
            }
            Object obj = kotlinx.coroutines.internal.c.f86247b;
            if (x9 == obj) {
                return obj;
            }
            return null;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/internal/x$f", "Lkotlinx/coroutines/internal/x$c;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class e extends x.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.internal.x f84847d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ c f84848e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(kotlinx.coroutines.internal.x xVar, c cVar) {
            super(xVar);
            this.f84847d = xVar;
            this.f84848e = cVar;
        }

        @Override // kotlinx.coroutines.internal.d
        @m8.h
        /* renamed from: k */
        public Object i(@m8.g kotlinx.coroutines.internal.x xVar) {
            if (this.f84848e.E()) {
                return null;
            }
            return kotlinx.coroutines.internal.w.a();
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001JX\u0010\f\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0006\u001a\u00028\u00002(\u0010\n\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0016ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/channels/c$f", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "R", "Lkotlinx/coroutines/selects/f;", "select", com.alipay.sdk.authjs.a.f6841l, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "n", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class f implements kotlinx.coroutines.selects.e<E, j0<? super E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c<E> f84849a;

        f(c<E> cVar) {
            this.f84849a = cVar;
        }

        @Override // kotlinx.coroutines.selects.e
        public <R> void n(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, E e4, @m8.g Function2<? super j0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f84849a.K(fVar, e4, function2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@m8.h Function1<? super E, Unit> function1) {
        this.f84839a = function1;
    }

    private final Throwable A(v<?> vVar) {
        y(vVar);
        return vVar.o0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(Continuation<?> continuation, E e4, v<?> vVar) {
        UndeliveredElementException d4;
        y(vVar);
        Throwable o02 = vVar.o0();
        Function1<E, Unit> function1 = this.f84839a;
        if (function1 == null || (d4 = kotlinx.coroutines.internal.g0.d(function1, e4, null, 2, null)) == null) {
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(o02)));
            return;
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(d4, o02);
        Result.Companion companion2 = Result.Companion;
        continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(d4)));
    }

    private final void C(Throwable th) {
        p0 p0Var;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (p0Var = kotlinx.coroutines.channels.b.f84831h) || !androidx.concurrent.futures.a.a(f84838c, this, obj, p0Var)) {
            return;
        }
        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1)).invoke(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean G() {
        return !(this.f84840b.S() instanceof g0) && E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void K(kotlinx.coroutines.selects.f<? super R> fVar, E e4, Function2<? super j0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        while (!fVar.h()) {
            if (G()) {
                C0725c c0725c = new C0725c(e4, this, fVar, function2);
                Object m9 = m(c0725c);
                if (m9 == null) {
                    fVar.p(c0725c);
                    return;
                } else if (!(m9 instanceof v)) {
                    if (m9 != kotlinx.coroutines.channels.b.f84830g && !(m9 instanceof e0)) {
                        throw new IllegalStateException(("enqueueSend returned " + m9 + ' ').toString());
                    }
                } else {
                    throw o0.p(z(e4, (v) m9));
                }
            }
            Object I = I(e4, fVar);
            if (I == kotlinx.coroutines.selects.g.d()) {
                return;
            }
            if (I != kotlinx.coroutines.channels.b.f84828e && I != kotlinx.coroutines.internal.c.f86247b) {
                if (I == kotlinx.coroutines.channels.b.f84827d) {
                    z7.b.d(function2, this, fVar.u());
                    return;
                } else if (!(I instanceof v)) {
                    throw new IllegalStateException(Intrinsics.stringPlus("offerSelectInternal returned ", I).toString());
                } else {
                    throw o0.p(z(e4, (v) I));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006f, code lost:
        r4 = r0.A();
        r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        if (r4 != r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
        kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        r5 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
        if (r4 != r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
        return kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object M(E r4, kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r3 = this;
            kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r5)
            kotlinx.coroutines.r r0 = kotlinx.coroutines.t.b(r0)
        L8:
            boolean r1 = c(r3)
            if (r1 == 0) goto L4d
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r1 = r3.f84839a
            if (r1 != 0) goto L18
            kotlinx.coroutines.channels.k0 r1 = new kotlinx.coroutines.channels.k0
            r1.<init>(r4, r0)
            goto L1f
        L18:
            kotlinx.coroutines.channels.l0 r1 = new kotlinx.coroutines.channels.l0
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r2 = r3.f84839a
            r1.<init>(r4, r0, r2)
        L1f:
            java.lang.Object r2 = r3.m(r1)
            if (r2 != 0) goto L29
            kotlinx.coroutines.t.c(r0, r1)
            goto L6f
        L29:
            boolean r1 = r2 instanceof kotlinx.coroutines.channels.v
            if (r1 == 0) goto L33
            kotlinx.coroutines.channels.v r2 = (kotlinx.coroutines.channels.v) r2
            a(r3, r0, r4, r2)
            goto L6f
        L33:
            kotlinx.coroutines.internal.p0 r1 = kotlinx.coroutines.channels.b.f84830g
            if (r2 != r1) goto L38
            goto L4d
        L38:
            boolean r1 = r2 instanceof kotlinx.coroutines.channels.e0
            if (r1 == 0) goto L3d
            goto L4d
        L3d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "enqueueSend returned "
            java.lang.String r5 = kotlin.jvm.internal.Intrinsics.stringPlus(r5, r2)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L4d:
            java.lang.Object r1 = r3.H(r4)
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.channels.b.f84827d
            if (r1 != r2) goto L61
            kotlin.Result$Companion r4 = kotlin.Result.Companion
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            java.lang.Object r4 = kotlin.Result.m70constructorimpl(r4)
            r0.resumeWith(r4)
            goto L6f
        L61:
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.channels.b.f84828e
            if (r1 != r2) goto L66
            goto L8
        L66:
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.v
            if (r2 == 0) goto L86
            kotlinx.coroutines.channels.v r1 = (kotlinx.coroutines.channels.v) r1
            a(r3, r0, r4, r1)
        L6f:
            java.lang.Object r4 = r0.A()
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r0) goto L7c
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r5)
        L7c:
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r5) goto L83
            return r4
        L83:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L86:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "offerInternal returned "
            java.lang.String r5 = kotlin.jvm.internal.Intrinsics.stringPlus(r5, r1)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.M(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final int j() {
        kotlinx.coroutines.internal.v vVar = this.f84840b;
        int i4 = 0;
        for (kotlinx.coroutines.internal.x xVar = (kotlinx.coroutines.internal.x) vVar.R(); !Intrinsics.areEqual(xVar, vVar); xVar = xVar.S()) {
            if (xVar instanceof kotlinx.coroutines.internal.x) {
                i4++;
            }
        }
        return i4;
    }

    private final String s() {
        String stringPlus;
        kotlinx.coroutines.internal.x S = this.f84840b.S();
        if (S == this.f84840b) {
            return "EmptyQueue";
        }
        if (S instanceof v) {
            stringPlus = S.toString();
        } else if (S instanceof e0) {
            stringPlus = "ReceiveQueued";
        } else {
            stringPlus = S instanceof i0 ? "SendQueued" : Intrinsics.stringPlus("UNEXPECTED:", S);
        }
        kotlinx.coroutines.internal.x T = this.f84840b.T();
        if (T != S) {
            String str = stringPlus + ",queueSize=" + j();
            if (T instanceof v) {
                return str + ",closedForSend=" + T;
            }
            return str;
        }
        return stringPlus;
    }

    private final void y(v<?> vVar) {
        Object c10 = kotlinx.coroutines.internal.p.c(null, 1, null);
        while (true) {
            kotlinx.coroutines.internal.x T = vVar.T();
            e0 e0Var = T instanceof e0 ? (e0) T : null;
            if (e0Var == null) {
                break;
            } else if (!e0Var.Z()) {
                e0Var.U();
            } else {
                c10 = kotlinx.coroutines.internal.p.h(c10, e0Var);
            }
        }
        if (c10 != null) {
            if (!(c10 instanceof ArrayList)) {
                ((e0) c10).i0(vVar);
            } else {
                ArrayList arrayList = (ArrayList) c10;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i4 = size - 1;
                        ((e0) arrayList.get(size)).i0(vVar);
                        if (i4 < 0) {
                            break;
                        }
                        size = i4;
                    }
                }
            }
        }
        J(vVar);
    }

    private final Throwable z(E e4, v<?> vVar) {
        UndeliveredElementException d4;
        y(vVar);
        Function1<E, Unit> function1 = this.f84839a;
        if (function1 == null || (d4 = kotlinx.coroutines.internal.g0.d(function1, e4, null, 2, null)) == null) {
            return vVar.o0();
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(d4, vVar.o0());
        throw d4;
    }

    protected abstract boolean D();

    protected abstract boolean E();

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public Object H(E e4) {
        g0<E> N;
        do {
            N = N();
            if (N == null) {
                return kotlinx.coroutines.channels.b.f84828e;
            }
        } while (N.x(e4, null) == null);
        N.o(e4);
        return N.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public Object I(E e4, @m8.g kotlinx.coroutines.selects.f<?> fVar) {
        d<E> l10 = l(e4);
        Object w9 = fVar.w(l10);
        if (w9 != null) {
            return w9;
        }
        g0<? super E> o9 = l10.o();
        o9.o(e4);
        return o9.d();
    }

    protected void J(@m8.g kotlinx.coroutines.internal.x xVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final g0<?> L(E e4) {
        kotlinx.coroutines.internal.x T;
        kotlinx.coroutines.internal.x xVar = this.f84840b;
        a aVar = new a(e4);
        do {
            T = xVar.T();
            if (T instanceof g0) {
                return (g0) T;
            }
        } while (!T.K(aVar, xVar));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public g0<E> N() {
        kotlinx.coroutines.internal.x xVar;
        kotlinx.coroutines.internal.x c02;
        kotlinx.coroutines.internal.v vVar = this.f84840b;
        while (true) {
            xVar = (kotlinx.coroutines.internal.x) vVar.R();
            if (xVar != vVar && (xVar instanceof g0)) {
                if (((((g0) xVar) instanceof v) && !xVar.W()) || (c02 = xVar.c0()) == null) {
                    break;
                }
                c02.V();
            }
        }
        xVar = null;
        return (g0) xVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final i0 O() {
        kotlinx.coroutines.internal.x xVar;
        kotlinx.coroutines.internal.x c02;
        kotlinx.coroutines.internal.v vVar = this.f84840b;
        while (true) {
            xVar = (kotlinx.coroutines.internal.x) vVar.R();
            if (xVar != vVar && (xVar instanceof i0)) {
                if (((((i0) xVar) instanceof v) && !xVar.W()) || (c02 = xVar.c0()) == null) {
                    break;
                }
                c02.V();
            }
        }
        xVar = null;
        return (i0) xVar;
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean close(@m8.h Throwable th) {
        boolean z9;
        v<?> vVar = new v<>(th);
        kotlinx.coroutines.internal.x xVar = this.f84840b;
        while (true) {
            kotlinx.coroutines.internal.x T = xVar.T();
            z9 = true;
            if (!(!(T instanceof v))) {
                z9 = false;
                break;
            } else if (T.K(vVar, xVar)) {
                break;
            }
        }
        if (!z9) {
            vVar = (v) this.f84840b.T();
        }
        y(vVar);
        if (z9) {
            C(th);
        }
        return z9;
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    public final kotlinx.coroutines.selects.e<E, j0<E>> getOnSend() {
        return new f(this);
    }

    @Override // kotlinx.coroutines.channels.j0
    public void invokeOnClose(@m8.g Function1<? super Throwable, Unit> function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f84838c;
        if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, function1)) {
            Object obj = this.onCloseHandler;
            if (obj == kotlinx.coroutines.channels.b.f84831h) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Another handler was already registered: ", obj));
        }
        v<?> q9 = q();
        if (q9 == null || !androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, function1, kotlinx.coroutines.channels.b.f84831h)) {
            return;
        }
        function1.invoke(q9.f85128d);
    }

    @Override // kotlinx.coroutines.channels.j0
    public final boolean isClosedForSend() {
        return q() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final x.b<?> k(E e4) {
        return new b(this.f84840b, e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final d<E> l(E e4) {
        return new d<>(e4, this.f84840b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public Object m(@m8.g i0 i0Var) {
        boolean z9;
        kotlinx.coroutines.internal.x T;
        if (D()) {
            kotlinx.coroutines.internal.x xVar = this.f84840b;
            do {
                T = xVar.T();
                if (T instanceof g0) {
                    return T;
                }
            } while (!T.K(i0Var, xVar));
            return null;
        }
        kotlinx.coroutines.internal.x xVar2 = this.f84840b;
        e eVar = new e(i0Var, this);
        while (true) {
            kotlinx.coroutines.internal.x T2 = xVar2.T();
            if (!(T2 instanceof g0)) {
                int e02 = T2.e0(i0Var, xVar2, eVar);
                z9 = true;
                if (e02 != 1) {
                    if (e02 == 2) {
                        z9 = false;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                return T2;
            }
        }
        if (z9) {
            return null;
        }
        return kotlinx.coroutines.channels.b.f84830g;
    }

    @m8.g
    protected String n() {
        return "";
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean offer(E e4) {
        UndeliveredElementException d4;
        try {
            return j0.a.c(this, e4);
        } catch (Throwable th) {
            Function1<E, Unit> function1 = this.f84839a;
            if (function1 != null && (d4 = kotlinx.coroutines.internal.g0.d(function1, e4, null, 2, null)) != null) {
                ExceptionsKt__ExceptionsKt.addSuppressed(d4, th);
                throw d4;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final v<?> p() {
        kotlinx.coroutines.internal.x S = this.f84840b.S();
        v<?> vVar = S instanceof v ? (v) S : null;
        if (vVar == null) {
            return null;
        }
        y(vVar);
        return vVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final v<?> q() {
        kotlinx.coroutines.internal.x T = this.f84840b.T();
        v<?> vVar = T instanceof v ? (v) T : null;
        if (vVar == null) {
            return null;
        }
        y(vVar);
        return vVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final kotlinx.coroutines.internal.v r() {
        return this.f84840b;
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.h
    public final Object send(E e4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (H(e4) == kotlinx.coroutines.channels.b.f84827d) {
            return Unit.INSTANCE;
        }
        Object M = M(e4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return M == coroutine_suspended ? M : Unit.INSTANCE;
    }

    @m8.g
    public String toString() {
        return v0.a(this) + '@' + v0.b(this) + '{' + s() + '}' + n();
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public final Object mo51trySendJP2dKIU(E e4) {
        Object H = H(e4);
        if (H == kotlinx.coroutines.channels.b.f84827d) {
            return q.f84909b.c(Unit.INSTANCE);
        }
        if (H == kotlinx.coroutines.channels.b.f84828e) {
            v<?> q9 = q();
            return q9 == null ? q.f84909b.b() : q.f84909b.a(A(q9));
        } else if (H instanceof v) {
            return q.f84909b.a(A((v) H));
        } else {
            throw new IllegalStateException(Intrinsics.stringPlus("trySend returned ", H).toString());
        }
    }
}
