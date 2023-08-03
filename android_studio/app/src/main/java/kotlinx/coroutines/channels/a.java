package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.m;
import kotlinx.coroutines.channels.o;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.internal.o0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.q;
import kotlinx.coroutines.v0;

/* compiled from: AbstractChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0007W)X,GYZB)\u0012 \u0010T\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0013\u0018\u00010Rj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`S¢\u0006\u0004\bU\u0010VJ!\u0010\u0007\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002JT\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0001\u0010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052$\u0010\u0012\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015JZ\u0010\u0017\u001a\u00020\u0013\"\u0004\b\u0001\u0010\u0004* \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018JT\u0010\u0019\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2$\u0010\u0012\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ \u0010\u001d\u001a\u00020\u00132\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001b2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0002J\n\u0010\u001e\u001a\u0004\u0018\u00010\u0010H\u0014J\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00102\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0014J\u0013\u0010 \u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b \u0010!J\u0016\u0010\"\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0014J\"\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0086@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b$\u0010!J\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000#ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b%\u0010&J\u0012\u0010)\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010'H\u0007J\u0016\u0010,\u001a\u00020\u00132\u000e\u0010(\u001a\n\u0018\u00010*j\u0004\u0018\u0001`+J\u0019\u0010-\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010'H\u0000¢\u0006\u0004\b-\u0010.J\u0010\u00100\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u000bH\u0014J/\u00106\u001a\u00020\u00132\f\u00103\u001a\b\u0012\u0004\u0012\u000202012\n\u00105\u001a\u0006\u0012\u0002\b\u000304H\u0014ø\u0001\u0000ø\u0001\u0002¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\b\u0012\u0004\u0012\u00028\u000008H\u0086\u0002J\u000e\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0004J\u0010\u0010=\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010<H\u0014J\b\u0010>\u001a\u00020\u0013H\u0014J\b\u0010?\u001a\u00020\u0013H\u0014R\u0014\u0010B\u001a\u00020\u000b8$X¤\u0004¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0014\u0010D\u001a\u00020\u000b8$X¤\u0004¢\u0006\u0006\u001a\u0004\bC\u0010AR\u0014\u0010F\u001a\u00020\u000b8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bE\u0010AR\u0014\u0010H\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010AR\u0014\u0010I\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bI\u0010AR\u0014\u0010K\u001a\u00020\u000b8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010AR\u0017\u0010O\u001a\b\u0012\u0004\u0012\u00028\u00000L8F¢\u0006\u0006\u001a\u0004\bM\u0010NR \u0010Q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000#0L8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\bP\u0010N\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006["}, d2 = {"Lkotlinx/coroutines/channels/a;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/c;", "Lkotlinx/coroutines/channels/m;", "R", "", "receiveMode", "i0", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/e0;", "receive", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "block", "", "j0", "(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/functions/Function2;)V", "value", "l0", "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V", "X", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)Z", "Lkotlinx/coroutines/q;", "cont", "k0", "g0", "h0", "F", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.LONGITUDE_WEST, "Lkotlinx/coroutines/channels/q;", y.b.f83919g, "v", "()Ljava/lang/Object;", "", "cause", "b", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "d", ExifInterface.GPS_DIRECTION_TRUE, "(Ljava/lang/Throwable;)Z", "wasClosed", "c0", "Lkotlinx/coroutines/internal/p;", "Lkotlinx/coroutines/channels/i0;", "list", "Lkotlinx/coroutines/channels/v;", "closed", "d0", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V", "Lkotlinx/coroutines/channels/o;", "iterator", "Lkotlinx/coroutines/channels/a$g;", "U", "Lkotlinx/coroutines/channels/g0;", "N", "f0", "e0", "Z", "()Z", "isBufferAlwaysEmpty", "a0", "isBufferEmpty", "Y", "hasReceiveOrClosed", "e", "isClosedForReceive", "isEmpty", "b0", "isEmptyImpl", "Lkotlinx/coroutines/selects/d;", "o", "()Lkotlinx/coroutines/selects/d;", "onReceive", "t", "onReceiveCatching", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "a", "c", "f", "g", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class a<E> extends kotlinx.coroutines.channels.c<E> implements m<E> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0013\u0010\u0007\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\t\u001a\u00020\u0005H\u0096Bø\u0001\u0000¢\u0006\u0004\b\t\u0010\bJ\u0010\u0010\n\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0010\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/channels/a$a;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/o;", "", "result", "", "e", "f", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "next", "()Ljava/lang/Object;", "Lkotlinx/coroutines/channels/a;", "a", "Lkotlinx/coroutines/channels/a;", "channel", "Ljava/lang/Object;", "d", "g", "(Ljava/lang/Object;)V", "<init>", "(Lkotlinx/coroutines/channels/a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.channels.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0724a<E> implements o<E> {
        @JvmField
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public final a<E> f84804a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private Object f84805b = kotlinx.coroutines.channels.b.f84829f;

        public C0724a(@m8.g a<E> aVar) {
            this.f84804a = aVar;
        }

        private final boolean e(Object obj) {
            if (obj instanceof v) {
                v vVar = (v) obj;
                if (vVar.f85128d == null) {
                    return false;
                }
                throw o0.p(vVar.n0());
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object f(Continuation<? super Boolean> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            kotlinx.coroutines.r b10 = kotlinx.coroutines.t.b(intercepted);
            d dVar = new d(this, b10);
            while (true) {
                if (this.f84804a.V(dVar)) {
                    this.f84804a.k0(b10, dVar);
                    break;
                }
                Object g02 = this.f84804a.g0();
                g(g02);
                if (g02 instanceof v) {
                    v vVar = (v) g02;
                    if (vVar.f85128d == null) {
                        Result.Companion companion = Result.Companion;
                        b10.resumeWith(Result.m70constructorimpl(Boxing.boxBoolean(false)));
                    } else {
                        Result.Companion companion2 = Result.Companion;
                        b10.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(vVar.n0())));
                    }
                } else if (g02 != kotlinx.coroutines.channels.b.f84829f) {
                    Boolean boxBoolean = Boxing.boxBoolean(true);
                    Function1<E, Unit> function1 = this.f84804a.f84839a;
                    b10.r(boxBoolean, function1 == null ? null : kotlinx.coroutines.internal.g0.a(function1, g02, b10.getContext()));
                }
            }
            Object A = b10.A();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (A == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return A;
        }

        @Override // kotlinx.coroutines.channels.o
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        public /* synthetic */ Object a(Continuation continuation) {
            return o.a.a(this, continuation);
        }

        @Override // kotlinx.coroutines.channels.o
        @m8.h
        public Object b(@m8.g Continuation<? super Boolean> continuation) {
            Object d4 = d();
            p0 p0Var = kotlinx.coroutines.channels.b.f84829f;
            if (d4 != p0Var) {
                return Boxing.boxBoolean(e(d()));
            }
            g(this.f84804a.g0());
            return d() != p0Var ? Boxing.boxBoolean(e(d())) : f(continuation);
        }

        @m8.h
        public final Object d() {
            return this.f84805b;
        }

        public final void g(@m8.h Object obj) {
            this.f84805b = obj;
        }

        @Override // kotlinx.coroutines.channels.o
        public E next() {
            E e4 = (E) this.f84805b;
            if (!(e4 instanceof v)) {
                p0 p0Var = kotlinx.coroutines.channels.b.f84829f;
                if (e4 != p0Var) {
                    this.f84805b = p0Var;
                    return e4;
                }
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            throw o0.p(((v) e4).n0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0012\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001f\u0012\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00028\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0011\u001a\u00020\f2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u001c\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00148\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/channels/a$b;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/e0;", "value", "", "j0", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", y.b.f83919g, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/x$d;)Lkotlinx/coroutines/internal/p0;", "", "o", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/v;", "closed", "i0", "", "toString", "Lkotlinx/coroutines/q;", "d", "Lkotlinx/coroutines/q;", "cont", "", "e", "I", "receiveMode", "<init>", "(Lkotlinx/coroutines/q;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static class b<E> extends e0<E> {
        @JvmField
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        public final kotlinx.coroutines.q<Object> f84806d;
        @JvmField

        /* renamed from: e  reason: collision with root package name */
        public final int f84807e;

        public b(@m8.g kotlinx.coroutines.q<Object> qVar, int i4) {
            this.f84806d = qVar;
            this.f84807e = i4;
        }

        @Override // kotlinx.coroutines.channels.e0
        public void i0(@m8.g v<?> vVar) {
            if (this.f84807e == 1) {
                kotlinx.coroutines.q<Object> qVar = this.f84806d;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m70constructorimpl(q.b(q.f84909b.a(vVar.f85128d))));
                return;
            }
            kotlinx.coroutines.q<Object> qVar2 = this.f84806d;
            Result.Companion companion2 = Result.Companion;
            qVar2.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(vVar.n0())));
        }

        @m8.h
        public final Object j0(E e4) {
            return this.f84807e == 1 ? q.b(q.f84909b.c(e4)) : e4;
        }

        @Override // kotlinx.coroutines.channels.g0
        public void o(E e4) {
            this.f84806d.I(kotlinx.coroutines.s.f86625d);
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "ReceiveElement@" + v0.b(this) + "[receiveMode=" + this.f84807e + ']';
        }

        @Override // kotlinx.coroutines.channels.g0
        @m8.h
        public p0 x(E e4, @m8.h x.d dVar) {
            if (this.f84806d.z(j0(e4), dVar == null ? null : dVar.f86321c, h0(e4)) == null) {
                return null;
            }
            if (dVar != null) {
                dVar.d();
            }
            return kotlinx.coroutines.s.f86625d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00010\u0002B=\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00060\u0004j\b\u0012\u0004\u0012\u00028\u0001`\t¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0007\u0010\bR*\u0010\f\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00060\u0004j\b\u0012\u0004\u0012\u00028\u0001`\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/channels/a$c;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/a$b;", "value", "Lkotlin/Function1;", "", "", "h0", "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "f", "Lkotlin/jvm/functions/Function1;", "onUndeliveredElement", "Lkotlinx/coroutines/q;", "", "cont", "", "receiveMode", "<init>", "(Lkotlinx/coroutines/q;ILkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class c<E> extends b<E> {
        @JvmField
        @m8.g

        /* renamed from: f  reason: collision with root package name */
        public final Function1<E, Unit> f84808f;

        /* JADX WARN: Multi-variable type inference failed */
        public c(@m8.g kotlinx.coroutines.q<Object> qVar, int i4, @m8.g Function1<? super E, Unit> function1) {
            super(qVar, i4);
            this.f84808f = function1;
        }

        @Override // kotlinx.coroutines.channels.e0
        @m8.h
        public Function1<Throwable, Unit> h0(E e4) {
            return kotlinx.coroutines.internal.g0.a(this.f84808f, e4, this.f84806d.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0012\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B#\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0015\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0004\b\u001e\u0010\u001fJ#\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00028\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u000e\u001a\u00020\t2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0016J%\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u000f2\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0014\u001a\u00020\u0013H\u0016R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lkotlinx/coroutines/channels/a$d;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/e0;", "value", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", y.b.f83919g, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/x$d;)Lkotlinx/coroutines/internal/p0;", "", "o", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/v;", "closed", "i0", "Lkotlin/Function1;", "", "h0", "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;", "", "toString", "Lkotlinx/coroutines/channels/a$a;", "d", "Lkotlinx/coroutines/channels/a$a;", "iterator", "Lkotlinx/coroutines/q;", "", "e", "Lkotlinx/coroutines/q;", "cont", "<init>", "(Lkotlinx/coroutines/channels/a$a;Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static class d<E> extends e0<E> {
        @JvmField
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        public final C0724a<E> f84809d;
        @JvmField
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        public final kotlinx.coroutines.q<Boolean> f84810e;

        /* JADX WARN: Multi-variable type inference failed */
        public d(@m8.g C0724a<E> c0724a, @m8.g kotlinx.coroutines.q<? super Boolean> qVar) {
            this.f84809d = c0724a;
            this.f84810e = qVar;
        }

        @Override // kotlinx.coroutines.channels.e0
        @m8.h
        public Function1<Throwable, Unit> h0(E e4) {
            Function1<E, Unit> function1 = this.f84809d.f84804a.f84839a;
            if (function1 == null) {
                return null;
            }
            return kotlinx.coroutines.internal.g0.a(function1, e4, this.f84810e.getContext());
        }

        @Override // kotlinx.coroutines.channels.e0
        public void i0(@m8.g v<?> vVar) {
            Object l10;
            if (vVar.f85128d == null) {
                l10 = q.a.b(this.f84810e, Boolean.FALSE, null, 2, null);
            } else {
                l10 = this.f84810e.l(vVar.n0());
            }
            if (l10 != null) {
                this.f84809d.g(vVar);
                this.f84810e.I(l10);
            }
        }

        @Override // kotlinx.coroutines.channels.g0
        public void o(E e4) {
            this.f84809d.g(e4);
            this.f84810e.I(kotlinx.coroutines.s.f86625d);
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return Intrinsics.stringPlus("ReceiveHasNext@", v0.b(this));
        }

        @Override // kotlinx.coroutines.channels.g0
        @m8.h
        public p0 x(E e4, @m8.h x.d dVar) {
            if (this.f84810e.z(Boolean.TRUE, dVar == null ? null : dVar.f86321c, h0(e4)) == null) {
                return null;
            }
            if (dVar != null) {
                dVar.d();
            }
            return kotlinx.coroutines.s.f86625d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\b\u0012\u0004\u0012\u00028\u00020\u00032\u00020\u0004BT\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0018\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u001c\u0012$\u0010%\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010!0 \u0012\u0006\u0010)\u001a\u00020&ø\u0001\u0000¢\u0006\u0004\b*\u0010+J#\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00028\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0014\u0010\u0010\u001a\u00020\u000b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J%\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0017\u001a\u00020\u0016H\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00020\u00188\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u001c8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR5\u0010%\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010!0 8\u0006X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Lkotlinx/coroutines/channels/a$e;", "R", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/e0;", "Lkotlinx/coroutines/l1;", "value", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", y.b.f83919g, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/x$d;)Lkotlinx/coroutines/internal/p0;", "", "o", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/v;", "closed", "i0", "dispose", "Lkotlin/Function1;", "", "h0", "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;", "", "toString", "Lkotlinx/coroutines/channels/a;", "d", "Lkotlinx/coroutines/channels/a;", "channel", "Lkotlinx/coroutines/selects/f;", "e", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "f", "Lkotlin/jvm/functions/Function2;", "block", "", "g", "I", "receiveMode", "<init>", "(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class e<R, E> extends e0<E> implements l1 {
        @JvmField
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        public final a<E> f84811d;
        @JvmField
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f84812e;
        @JvmField
        @m8.g

        /* renamed from: f  reason: collision with root package name */
        public final Function2<Object, Continuation<? super R>, Object> f84813f;
        @JvmField

        /* renamed from: g  reason: collision with root package name */
        public final int f84814g;

        /* JADX WARN: Multi-variable type inference failed */
        public e(@m8.g a<E> aVar, @m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i4) {
            this.f84811d = aVar;
            this.f84812e = fVar;
            this.f84813f = function2;
            this.f84814g = i4;
        }

        @Override // kotlinx.coroutines.l1
        public void dispose() {
            if (Z()) {
                this.f84811d.e0();
            }
        }

        @Override // kotlinx.coroutines.channels.e0
        @m8.h
        public Function1<Throwable, Unit> h0(E e4) {
            Function1<E, Unit> function1 = this.f84811d.f84839a;
            if (function1 == null) {
                return null;
            }
            return kotlinx.coroutines.internal.g0.a(function1, e4, this.f84812e.u().getContext());
        }

        @Override // kotlinx.coroutines.channels.e0
        public void i0(@m8.g v<?> vVar) {
            if (this.f84812e.t()) {
                int i4 = this.f84814g;
                if (i4 == 0) {
                    this.f84812e.v(vVar.n0());
                } else if (i4 != 1) {
                } else {
                    z7.a.f(this.f84813f, q.b(q.f84909b.a(vVar.f85128d)), this.f84812e.u(), null, 4, null);
                }
            }
        }

        @Override // kotlinx.coroutines.channels.g0
        public void o(E e4) {
            z7.a.e(this.f84813f, this.f84814g == 1 ? q.b(q.f84909b.c(e4)) : e4, this.f84812e.u(), h0(e4));
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "ReceiveSelect@" + v0.b(this) + '[' + this.f84812e + ",receiveMode=" + this.f84814g + ']';
        }

        @Override // kotlinx.coroutines.channels.g0
        @m8.h
        public p0 x(E e4, @m8.h x.d dVar) {
            return (p0) this.f84812e.q(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\b¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/a$f;", "Lkotlinx/coroutines/g;", "", "cause", "", "a", "", "toString", "Lkotlinx/coroutines/channels/e0;", "Lkotlinx/coroutines/channels/e0;", "receive", "<init>", "(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/e0;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class f extends kotlinx.coroutines.g {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final e0<?> f84815a;

        public f(@m8.g e0<?> e0Var) {
            this.f84815a = e0Var;
        }

        @Override // kotlinx.coroutines.p
        public void a(@m8.h Throwable th) {
            if (this.f84815a.Z()) {
                a.this.e0();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            a(th);
            return Unit.INSTANCE;
        }

        @m8.g
        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f84815a + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0004B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0016\u0010\f\u001a\u0004\u0018\u00010\u00072\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/channels/a$g;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/x$e;", "Lkotlinx/coroutines/channels/i0;", "Lkotlinx/coroutines/internal/RemoveFirstDesc;", "Lkotlinx/coroutines/internal/x;", "affected", "", "e", "Lkotlinx/coroutines/internal/x$d;", "Lkotlinx/coroutines/internal/PrepareOp;", "prepareOp", "j", "", "k", "Lkotlinx/coroutines/internal/v;", "queue", "<init>", "(Lkotlinx/coroutines/internal/v;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class g<E> extends x.e<i0> {
        public g(@m8.g kotlinx.coroutines.internal.v vVar) {
            super(vVar);
        }

        @Override // kotlinx.coroutines.internal.x.e, kotlinx.coroutines.internal.x.a
        @m8.h
        protected Object e(@m8.g kotlinx.coroutines.internal.x xVar) {
            if (xVar instanceof v) {
                return xVar;
            }
            if (xVar instanceof i0) {
                return null;
            }
            return kotlinx.coroutines.channels.b.f84829f;
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        public Object j(@m8.g x.d dVar) {
            p0 j02 = ((i0) dVar.f86319a).j0(dVar);
            if (j02 == null) {
                return kotlinx.coroutines.internal.y.f86327a;
            }
            Object obj = kotlinx.coroutines.internal.c.f86247b;
            if (j02 == obj) {
                return obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.x.a
        public void k(@m8.g kotlinx.coroutines.internal.x xVar) {
            ((i0) xVar).k0();
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/internal/x$f", "Lkotlinx/coroutines/internal/x$c;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class h extends x.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.internal.x f84817d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ a f84818e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(kotlinx.coroutines.internal.x xVar, a aVar) {
            super(xVar);
            this.f84817d = xVar;
            this.f84818e = aVar;
        }

        @Override // kotlinx.coroutines.internal.d
        @m8.h
        /* renamed from: k */
        public Object i(@m8.g kotlinx.coroutines.internal.x xVar) {
            if (this.f84818e.a0()) {
                return null;
            }
            return kotlinx.coroutines.internal.w.a();
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001JJ\u0010\n\u001a\u00020\t\"\u0004\b\u0001\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0016ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"kotlinx/coroutines/channels/a$i", "Lkotlinx/coroutines/selects/d;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "c", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class i implements kotlinx.coroutines.selects.d<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a<E> f84819a;

        i(a<E> aVar) {
            this.f84819a = aVar;
        }

        @Override // kotlinx.coroutines.selects.d
        public <R> void c(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f84819a.j0(fVar, 0, function2);
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001JS\u0010\u000b\u001a\u00020\n\"\u0004\b\u0001\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042(\u0010\t\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006H\u0016ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"kotlinx/coroutines/channels/a$j", "Lkotlinx/coroutines/selects/d;", "Lkotlinx/coroutines/channels/q;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "c", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class j implements kotlinx.coroutines.selects.d<q<? extends E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a<E> f84820a;

        j(a<E> aVar) {
            this.f84820a = aVar;
        }

        @Override // kotlinx.coroutines.selects.d
        public <R> void c(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super q<? extends E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f84820a.j0(fVar, 1, function2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.AbstractChannel", f = "AbstractChannel.kt", i = {}, l = {633}, m = "receiveCatching-JP2dKIU", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class k extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f84821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a<E> f84822b;

        /* renamed from: c  reason: collision with root package name */
        int f84823c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(a<E> aVar, Continuation<? super k> continuation) {
            super(continuation);
            this.f84822b = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f84821a = obj;
            this.f84823c |= Integer.MIN_VALUE;
            Object x9 = this.f84822b.x(this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return x9 == coroutine_suspended ? x9 : q.b(x9);
        }
    }

    public a(@m8.h Function1<? super E, Unit> function1) {
        super(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean V(e0<? super E> e0Var) {
        boolean W = W(e0Var);
        if (W) {
            f0();
        }
        return W;
    }

    private final <R> boolean X(kotlinx.coroutines.selects.f<? super R> fVar, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i4) {
        e eVar = new e(this, fVar, function2, i4);
        boolean V = V(eVar);
        if (V) {
            fVar.p(eVar);
        }
        return V;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.channels.a$b] */
    public final <R> Object i0(int i4, Continuation<? super R> continuation) {
        Continuation intercepted;
        c cVar;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r b10 = kotlinx.coroutines.t.b(intercepted);
        if (this.f84839a == null) {
            cVar = new b(b10, i4);
        } else {
            cVar = new c(b10, i4, this.f84839a);
        }
        while (true) {
            if (V(cVar)) {
                k0(b10, cVar);
                break;
            }
            Object g02 = g0();
            if (g02 instanceof v) {
                cVar.i0((v) g02);
                break;
            } else if (g02 != kotlinx.coroutines.channels.b.f84829f) {
                b10.r(cVar.j0(g02), cVar.h0(g02));
                break;
            }
        }
        Object A = b10.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void j0(kotlinx.coroutines.selects.f<? super R> fVar, int i4, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2) {
        while (!fVar.h()) {
            if (b0()) {
                if (X(fVar, function2, i4)) {
                    return;
                }
            } else {
                Object h02 = h0(fVar);
                if (h02 == kotlinx.coroutines.selects.g.d()) {
                    return;
                }
                if (h02 != kotlinx.coroutines.channels.b.f84829f && h02 != kotlinx.coroutines.internal.c.f86247b) {
                    l0(function2, fVar, i4, h02);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(kotlinx.coroutines.q<?> qVar, e0<?> e0Var) {
        qVar.k(new f(e0Var));
    }

    private final <R> void l0(Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, kotlinx.coroutines.selects.f<? super R> fVar, int i4, Object obj) {
        boolean z9 = obj instanceof v;
        if (!z9) {
            if (i4 == 1) {
                q.b bVar = q.f84909b;
                z7.b.d(function2, q.b(z9 ? bVar.a(((v) obj).f85128d) : bVar.c(obj)), fVar.u());
                return;
            }
            z7.b.d(function2, obj, fVar.u());
        } else if (i4 != 0) {
            if (i4 == 1 && fVar.t()) {
                z7.b.d(function2, q.b(q.f84909b.a(((v) obj).f85128d)), fVar.u());
            }
        } else {
            throw o0.p(((v) obj).n0());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.f0
    @m8.h
    public final Object F(@m8.g Continuation<? super E> continuation) {
        Object g02 = g0();
        return (g02 == kotlinx.coroutines.channels.b.f84829f || (g02 instanceof v)) ? i0(0, continuation) : g02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.h
    public g0<E> N() {
        g0<E> N = super.N();
        if (N != null && !(N instanceof v)) {
            e0();
        }
        return N;
    }

    @Override // kotlinx.coroutines.channels.f0
    /* renamed from: T */
    public final boolean b(@m8.h Throwable th) {
        boolean close = close(th);
        c0(close);
        return close;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final g<E> U() {
        return new g<>(r());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean W(@m8.g e0<? super E> e0Var) {
        int e02;
        kotlinx.coroutines.internal.x T;
        if (Z()) {
            kotlinx.coroutines.internal.x r9 = r();
            do {
                T = r9.T();
                if (!(!(T instanceof i0))) {
                    return false;
                }
            } while (!T.K(e0Var, r9));
        } else {
            kotlinx.coroutines.internal.x r10 = r();
            h hVar = new h(e0Var, this);
            do {
                kotlinx.coroutines.internal.x T2 = r10.T();
                if (!(!(T2 instanceof i0))) {
                    return false;
                }
                e02 = T2.e0(e0Var, r10, hVar);
                if (e02 != 1) {
                }
            } while (e02 != 2);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean Y() {
        return r().S() instanceof g0;
    }

    protected abstract boolean Z();

    protected abstract boolean a0();

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b0() {
        return !(r().S() instanceof i0) && a0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c0(boolean z9) {
        v<?> q9 = q();
        if (q9 != null) {
            Object c10 = kotlinx.coroutines.internal.p.c(null, 1, null);
            while (true) {
                kotlinx.coroutines.internal.x T = q9.T();
                if (T instanceof kotlinx.coroutines.internal.v) {
                    d0(c10, q9);
                    return;
                } else if (!T.Z()) {
                    T.U();
                } else {
                    c10 = kotlinx.coroutines.internal.p.h(c10, (i0) T);
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen".toString());
        }
    }

    @Override // kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        d(null);
    }

    @Override // kotlinx.coroutines.channels.f0
    public final void d(@m8.h CancellationException cancellationException) {
        if (e()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new CancellationException(Intrinsics.stringPlus(v0.a(this), " was cancelled"));
        }
        b(cancellationException);
    }

    protected void d0(@m8.g Object obj, @m8.g v<?> vVar) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            ((i0) obj).i0(vVar);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i4 = size - 1;
            ((i0) arrayList.get(size)).i0(vVar);
            if (i4 < 0) {
                return;
            }
            size = i4;
        }
    }

    @Override // kotlinx.coroutines.channels.f0
    public boolean e() {
        return p() != null && a0();
    }

    protected void e0() {
    }

    protected void f0() {
    }

    @m8.h
    protected Object g0() {
        while (true) {
            i0 O = O();
            if (O == null) {
                return kotlinx.coroutines.channels.b.f84829f;
            }
            if (O.j0(null) != null) {
                O.g0();
                return O.h0();
            }
            O.k0();
        }
    }

    @m8.h
    protected Object h0(@m8.g kotlinx.coroutines.selects.f<?> fVar) {
        g<E> U = U();
        Object w9 = fVar.w(U);
        if (w9 != null) {
            return w9;
        }
        U.o().g0();
        return U.o().h0();
    }

    @Override // kotlinx.coroutines.channels.f0
    public boolean isEmpty() {
        return b0();
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public final o<E> iterator() {
        return new C0724a(this);
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public final kotlinx.coroutines.selects.d<E> o() {
        return new i(this);
    }

    @Override // kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @m8.h
    public E poll() {
        return (E) m.a.d(this);
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public final kotlinx.coroutines.selects.d<q<E>> t() {
        return new j(this);
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public kotlinx.coroutines.selects.d<E> u() {
        return m.a.b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public final Object v() {
        Object g02 = g0();
        return g02 == kotlinx.coroutines.channels.b.f84829f ? q.f84909b.b() : g02 instanceof v ? q.f84909b.a(((v) g02).f85128d) : q.f84909b.c(g02);
    }

    @Override // kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @m8.h
    public Object w(@m8.g Continuation<? super E> continuation) {
        return m.a.e(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kotlinx.coroutines.channels.f0
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(@m8.g kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.q<? extends E>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.a.k
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.a$k r0 = (kotlinx.coroutines.channels.a.k) r0
            int r1 = r0.f84823c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84823c = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.a$k r0 = new kotlinx.coroutines.channels.a$k
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f84821a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84823c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5b
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.Object r5 = r4.g0()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.channels.b.f84829f
            if (r5 == r2) goto L52
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.v
            if (r0 == 0) goto L4b
            kotlinx.coroutines.channels.q$b r0 = kotlinx.coroutines.channels.q.f84909b
            kotlinx.coroutines.channels.v r5 = (kotlinx.coroutines.channels.v) r5
            java.lang.Throwable r5 = r5.f85128d
            java.lang.Object r5 = r0.a(r5)
            goto L51
        L4b:
            kotlinx.coroutines.channels.q$b r0 = kotlinx.coroutines.channels.q.f84909b
            java.lang.Object r5 = r0.c(r5)
        L51:
            return r5
        L52:
            r0.f84823c = r3
            java.lang.Object r5 = r4.i0(r3, r0)
            if (r5 != r1) goto L5b
            return r1
        L5b:
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            java.lang.Object r5 = r5.o()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.a.x(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
