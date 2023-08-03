package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.channels.i;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.z2;

/* compiled from: ConflatedBroadcastChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 D*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0004D*E-B\u0007¢\u0006\u0004\bB\u00108B\u0011\b\u0016\u0012\u0006\u00109\u001a\u00028\u0000¢\u0006\u0004\bB\u0010CJ\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J?\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\b2\u0014\u0010\t\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0018\u00010\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002¢\u0006\u0004\b\n\u0010\u000bJ?\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0018\u00010\b2\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0014JX\u0010\u001d\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00162\u0006\u0010\u0011\u001a\u00028\u00002(\u0010\u001c\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0018H\u0002ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010#\u001a\u00020\"2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b#\u0010$J)\u0010(\u001a\u00020\u00052\u0018\u0010'\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u00050%j\u0002`&H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010*\u001a\u00020\"2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017¢\u0006\u0004\b*\u0010$J\u001f\u0010-\u001a\u00020\u00052\u000e\u0010\u000e\u001a\n\u0018\u00010+j\u0004\u0018\u0001`,H\u0016¢\u0006\u0004\b-\u0010.J\u001b\u0010/\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b/\u00100J&\u00104\u001a\b\u0012\u0004\u0012\u00020\u0005012\u0006\u0010\u0011\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b2\u00103R\u0017\u00109\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b7\u00108\u001a\u0004\b5\u00106R\u0013\u0010;\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b:\u00106R\u0014\u0010<\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R&\u0010A\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00190>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006F"}, d2 = {"Lkotlinx/coroutines/channels/w;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/i;", "Lkotlinx/coroutines/channels/w$d;", "subscriber", "", "f", "(Lkotlinx/coroutines/channels/w$d;)V", "", "list", "e", "([Lkotlinx/coroutines/channels/w$d;Lkotlinx/coroutines/channels/w$d;)[Lkotlinx/coroutines/channels/w$d;", "n", "", "cause", "k", "(Ljava/lang/Throwable;)V", "element", "Lkotlinx/coroutines/channels/w$a;", "l", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/w$a;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/j0;", "Lkotlin/coroutines/Continuation;", "", "block", "m", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlinx/coroutines/channels/f0;", "g", "()Lkotlinx/coroutines/channels/f0;", "", "close", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "b", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "d", "(Ljava/util/concurrent/CancellationException;)V", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "h", "()Ljava/lang/Object;", "getValue$annotations", "()V", "value", "j", "valueOrNull", "isClosedForSend", "()Z", "Lkotlinx/coroutines/selects/e;", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "<init>", "(Ljava/lang/Object;)V", "a", "c", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@z2
/* loaded from: classes4.dex */
public final class w<E> implements i<E> {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f85130b;

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f85131c;

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f85132d;
    @m8.g
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    private static final p0 f85134f;
    @m8.g
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    private static final c<Object> f85135g;
    @m8.g
    private volatile /* synthetic */ Object _state;
    @m8.g
    private volatile /* synthetic */ int _updating;
    @m8.g
    private volatile /* synthetic */ Object onCloseHandler;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final b f85129a = new b(null);
    @m8.g
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    private static final a f85133e = new a(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0011\u0010\u0007\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0006R\u0011\u0010\t\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/channels/w$a;", "", "", "a", "Ljava/lang/Throwable;", "closeCause", "()Ljava/lang/Throwable;", "sendException", "b", "valueException", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        @m8.h
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f85136a;

        public a(@m8.h Throwable th) {
            this.f85136a = th;
        }

        @m8.g
        public final Throwable a() {
            Throwable th = this.f85136a;
            return th == null ? new ClosedSendChannelException(r.f84913a) : th;
        }

        @m8.g
        public final Throwable b() {
            Throwable th = this.f85136a;
            return th == null ? new IllegalStateException(r.f84913a) : th;
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/w$b;", "", "Lkotlinx/coroutines/channels/w$a;", "CLOSED", "Lkotlinx/coroutines/channels/w$a;", "Lkotlinx/coroutines/channels/w$c;", "INITIAL_STATE", "Lkotlinx/coroutines/channels/w$c;", "Lkotlinx/coroutines/internal/p0;", "UNDEFINED", "Lkotlinx/coroutines/internal/p0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B'\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\n\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0018\u00010\u0006¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\"\u0010\n\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/w$c;", ExifInterface.LONGITUDE_EAST, "", "a", "Ljava/lang/Object;", "value", "", "Lkotlinx/coroutines/channels/w$d;", "b", "[Lkotlinx/coroutines/channels/w$d;", "subscribers", "<init>", "(Ljava/lang/Object;[Lkotlinx/coroutines/channels/w$d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class c<E> {
        @m8.h
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public final Object f85137a;
        @m8.h
        @JvmField

        /* renamed from: b  reason: collision with root package name */
        public final d<E>[] f85138b;

        public c(@m8.h Object obj, @m8.h d<E>[] dVarArr) {
            this.f85137a = obj;
            this.f85138b = dVarArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/w$d;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/x;", "Lkotlinx/coroutines/channels/f0;", "", "wasClosed", "", "c0", "element", "", "H", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/w;", "f", "Lkotlinx/coroutines/channels/w;", "broadcastChannel", "<init>", "(Lkotlinx/coroutines/channels/w;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d<E> extends x<E> implements f0<E> {
        @m8.g

        /* renamed from: f  reason: collision with root package name */
        private final w<E> f85139f;

        public d(@m8.g w<E> wVar) {
            super(null);
            this.f85139f = wVar;
        }

        @Override // kotlinx.coroutines.channels.x, kotlinx.coroutines.channels.c
        @m8.g
        public Object H(E e4) {
            return super.H(e4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlinx.coroutines.channels.x, kotlinx.coroutines.channels.a
        public void c0(boolean z9) {
            if (z9) {
                this.f85139f.f(this);
            }
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001JX\u0010\f\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0006\u001a\u00028\u00002(\u0010\n\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0016ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/channels/w$e", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "R", "Lkotlinx/coroutines/selects/f;", "select", com.alipay.sdk.authjs.a.f6841l, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "n", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class e implements kotlinx.coroutines.selects.e<E, j0<? super E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w<E> f85140a;

        e(w<E> wVar) {
            this.f85140a = wVar;
        }

        @Override // kotlinx.coroutines.selects.e
        public <R> void n(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, E e4, @m8.g Function2<? super j0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f85140a.m(fVar, e4, function2);
        }
    }

    static {
        p0 p0Var = new p0("UNDEFINED");
        f85134f = p0Var;
        f85135g = new c<>(p0Var, null);
        f85130b = AtomicReferenceFieldUpdater.newUpdater(w.class, Object.class, "_state");
        f85131c = AtomicIntegerFieldUpdater.newUpdater(w.class, "_updating");
        f85132d = AtomicReferenceFieldUpdater.newUpdater(w.class, Object.class, "onCloseHandler");
    }

    public w() {
        this._state = f85135g;
        this._updating = 0;
        this.onCloseHandler = null;
    }

    private final d<E>[] e(d<E>[] dVarArr, d<E> dVar) {
        Object[] plus;
        if (dVarArr != null) {
            plus = ArraysKt___ArraysJvmKt.plus(dVarArr, dVar);
            return (d[]) plus;
        }
        d<E>[] dVarArr2 = new d[1];
        for (int i4 = 0; i4 < 1; i4++) {
            dVarArr2[i4] = dVar;
        }
        return dVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(d<E> dVar) {
        Object obj;
        Object obj2;
        d<E>[] dVarArr;
        do {
            obj = this._state;
            if (obj instanceof a) {
                return;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                obj2 = cVar.f85137a;
                dVarArr = cVar.f85138b;
                Intrinsics.checkNotNull(dVarArr);
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f85130b, this, obj, new c(obj2, n(dVarArr, dVar))));
    }

    public static /* synthetic */ void i() {
    }

    private final void k(Throwable th) {
        p0 p0Var;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (p0Var = kotlinx.coroutines.channels.b.f84831h) || !androidx.concurrent.futures.a.a(f85132d, this, obj, p0Var)) {
            return;
        }
        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1)).invoke(th);
    }

    private final a l(E e4) {
        Object obj;
        if (f85131c.compareAndSet(this, 0, 1)) {
            do {
                try {
                    obj = this._state;
                    if (obj instanceof a) {
                        return (a) obj;
                    }
                    if (obj instanceof c) {
                    } else {
                        throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
                    }
                } finally {
                    this._updating = 0;
                }
            } while (!androidx.concurrent.futures.a.a(f85130b, this, obj, new c(e4, ((c) obj).f85138b)));
            d<E>[] dVarArr = ((c) obj).f85138b;
            if (dVarArr != null) {
                int length = dVarArr.length;
                int i4 = 0;
                while (i4 < length) {
                    d<E> dVar = dVarArr[i4];
                    i4++;
                    dVar.H(e4);
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void m(kotlinx.coroutines.selects.f<? super R> fVar, E e4, Function2<? super j0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        if (fVar.t()) {
            a l10 = l(e4);
            if (l10 == null) {
                z7.b.d(function2, this, fVar.u());
            } else {
                fVar.v(l10.a());
            }
        }
    }

    private final d<E>[] n(d<E>[] dVarArr, d<E> dVar) {
        int indexOf;
        int length = dVarArr.length;
        indexOf = ArraysKt___ArraysKt.indexOf(dVarArr, dVar);
        if (length == 1) {
            return null;
        }
        d<E>[] dVarArr2 = new d[length - 1];
        ArraysKt___ArraysJvmKt.copyInto$default(dVarArr, dVarArr2, 0, 0, indexOf, 6, (Object) null);
        ArraysKt___ArraysJvmKt.copyInto$default(dVarArr, dVarArr2, indexOf, indexOf + 1, 0, 8, (Object) null);
        return dVarArr2;
    }

    @Override // kotlinx.coroutines.channels.i
    /* renamed from: close */
    public boolean b(@m8.h Throwable th) {
        Object obj;
        int i4;
        do {
            obj = this._state;
            i4 = 0;
            if (obj instanceof a) {
                return false;
            }
            if (!(obj instanceof c)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f85130b, this, obj, th == null ? f85133e : new a(th)));
        d<E>[] dVarArr = ((c) obj).f85138b;
        if (dVarArr != null) {
            int length = dVarArr.length;
            while (i4 < length) {
                d<E> dVar = dVarArr[i4];
                i4++;
                dVar.close(th);
            }
        }
        k(th);
        return true;
    }

    @Override // kotlinx.coroutines.channels.i
    public void d(@m8.h CancellationException cancellationException) {
        b(cancellationException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.i
    @m8.g
    public f0<E> g() {
        Object obj;
        c cVar;
        d dVar = new d(this);
        do {
            obj = this._state;
            if (obj instanceof a) {
                dVar.close(((a) obj).f85136a);
                return dVar;
            } else if (obj instanceof c) {
                cVar = (c) obj;
                Object obj2 = cVar.f85137a;
                if (obj2 != f85134f) {
                    dVar.H(obj2);
                }
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f85130b, this, obj, new c(cVar.f85137a, e(cVar.f85138b, dVar))));
        return dVar;
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    public kotlinx.coroutines.selects.e<E, j0<E>> getOnSend() {
        return new e(this);
    }

    public final E h() {
        Object obj = this._state;
        if (!(obj instanceof a)) {
            if (obj instanceof c) {
                E e4 = (E) ((c) obj).f85137a;
                if (e4 != f85134f) {
                    return e4;
                }
                throw new IllegalStateException("No value");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
        }
        throw ((a) obj).b();
    }

    @Override // kotlinx.coroutines.channels.j0
    public void invokeOnClose(@m8.g Function1<? super Throwable, Unit> function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85132d;
        if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, function1)) {
            Object obj = this.onCloseHandler;
            if (obj == kotlinx.coroutines.channels.b.f84831h) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Another handler was already registered: ", obj));
        }
        Object obj2 = this._state;
        if ((obj2 instanceof a) && androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, function1, kotlinx.coroutines.channels.b.f84831h)) {
            function1.invoke(((a) obj2).f85136a);
        }
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean isClosedForSend() {
        return this._state instanceof a;
    }

    @m8.h
    public final E j() {
        Object obj = this._state;
        if (obj instanceof a) {
            return null;
        }
        if (obj instanceof c) {
            p0 p0Var = f85134f;
            E e4 = (E) ((c) obj).f85137a;
            if (e4 == p0Var) {
                return null;
            }
            return e4;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
    }

    @Override // kotlinx.coroutines.channels.j0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e4) {
        return i.a.c(this, e4);
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.h
    public Object send(E e4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        a l10 = l(e4);
        if (l10 == null) {
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (coroutine_suspended == null) {
                return null;
            }
            return Unit.INSTANCE;
        }
        throw l10.a();
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public Object mo51trySendJP2dKIU(E e4) {
        a l10 = l(e4);
        if (l10 == null) {
            return q.f84909b.c(Unit.INSTANCE);
        }
        return q.f84909b.a(l10.a());
    }

    public w(E e4) {
        this();
        f85130b.lazySet(this, new c(e4, null));
    }
}
