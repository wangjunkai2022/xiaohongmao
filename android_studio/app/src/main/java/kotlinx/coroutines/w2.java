package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlinx.coroutines.j2;

/* compiled from: NonCancellable.kt */
@Metadata(bv = {}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b5\u0010$J\b\u0010\u0004\u001a\u00020\u0003H\u0017J\u0013\u0010\u0006\u001a\u00020\u0005H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\n\u001a\u00060\bj\u0002`\tH\u0017J1\u0010\u0013\u001a\u00020\u00122'\u0010\u0011\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u0010H\u0017JA\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032'\u0010\u0011\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u0010H\u0017J\u0018\u0010\u0017\u001a\u00020\u00052\u000e\u0010\u000f\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tH\u0017J\u0012\u0010\u0018\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0017J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0017J\b\u0010\u001e\u001a\u00020\u001dH\u0016R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u001fR\u001a\u0010%\u001a\u00020\u00038VX\u0097\u0004¢\u0006\f\u0012\u0004\b#\u0010$\u001a\u0004\b!\u0010\"R\u001a\u0010(\u001a\u00020\u00038VX\u0097\u0004¢\u0006\f\u0012\u0004\b'\u0010$\u001a\u0004\b&\u0010\"R\u001a\u0010)\u001a\u00020\u00038VX\u0097\u0004¢\u0006\f\u0012\u0004\b*\u0010$\u001a\u0004\b)\u0010\"R\u001a\u0010/\u001a\u00020+8VX\u0097\u0004¢\u0006\f\u0012\u0004\b.\u0010$\u001a\u0004\b,\u0010-R \u00104\u001a\b\u0012\u0004\u0012\u00020\u0002008VX\u0097\u0004¢\u0006\f\u0012\u0004\b3\u0010$\u001a\u0004\b1\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, d2 = {"Lkotlinx/coroutines/w2;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/j2;", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "", "X", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/l1;", "H", "onCancelling", "invokeImmediately", y.b.f83920h, "d", "b", "Lkotlinx/coroutines/y;", "child", "Lkotlinx/coroutines/w;", "n0", "", "toString", "Ljava/lang/String;", "message", "a", "()Z", "isActive$annotations", "()V", "isActive", ContextChain.TAG_INFRA, "isCompleted$annotations", "isCompleted", "isCancelled", "isCancelled$annotations", "Lkotlinx/coroutines/selects/c;", "h0", "()Lkotlinx/coroutines/selects/c;", "getOnJoin$annotations", "onJoin", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "getChildren$annotations", y.b.f83923k, "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w2 extends AbstractCoroutineContextElement implements j2 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final w2 f86856a = new w2();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f86857b = "NonCancellable can be used only as an argument for 'withContext', direct usages of its API are prohibited";

    private w2() {
        super(j2.f86331k2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public static /* synthetic */ void p0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public static /* synthetic */ void q0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public static /* synthetic */ void r0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public static /* synthetic */ void s0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public static /* synthetic */ void t0() {
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    @m8.g
    public CancellationException A() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @m8.g
    public j2 G(@m8.g j2 j2Var) {
        return j2.a.i(this, j2Var);
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    @m8.g
    public l1 H(@m8.g Function1<? super Throwable, Unit> function1) {
        return x2.f86862a;
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    @m8.h
    public Object X(@m8.g Continuation<? super Unit> continuation) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.j2
    public boolean a() {
        return true;
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean b(Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        d(null);
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public void d(@m8.h CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public Sequence<j2> getChildren() {
        Sequence<j2> emptySequence;
        emptySequence = SequencesKt__SequencesKt.emptySequence();
        return emptySequence;
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public kotlinx.coroutines.selects.c h0() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.j2
    public boolean i() {
        return false;
    }

    @Override // kotlinx.coroutines.j2
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    @m8.g
    public w n0(@m8.g y yVar) {
        return x2.f86862a;
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    public boolean start() {
        return false;
    }

    @m8.g
    public String toString() {
        return "NonCancellable";
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.WARNING, message = f86857b)
    @m8.g
    public l1 y(boolean z9, boolean z10, @m8.g Function1<? super Throwable, Unit> function1) {
        return x2.f86862a;
    }
}
