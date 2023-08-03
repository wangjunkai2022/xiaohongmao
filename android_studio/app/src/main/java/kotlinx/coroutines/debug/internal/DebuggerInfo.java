package kotlinx.coroutines.debug.internal;

import io.sentry.protocol.t;
import io.sentry.protocol.v;
import java.io.Serializable;
import java.lang.Thread;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.r0;

/* compiled from: DebuggerInfo.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0013\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\fR\u0019\u0010\u0016\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\fR\u0019\u0010\u0019\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\n\u001a\u0004\b\u0018\u0010\fR\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006,"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "Ljava/io/Serializable;", "", "a", "Ljava/lang/Long;", "getCoroutineId", "()Ljava/lang/Long;", "coroutineId", "", "b", "Ljava/lang/String;", "getDispatcher", "()Ljava/lang/String;", "dispatcher", "c", "getName", "name", "d", "getState", t.b.f83859d, "e", "getLastObservedThreadState", "lastObservedThreadState", "f", "getLastObservedThreadName", "lastObservedThreadName", "", "Ljava/lang/StackTraceElement;", "g", "Ljava/util/List;", "getLastObservedStackTrace", "()Ljava/util/List;", "lastObservedStackTrace", "h", "J", "getSequenceNumber", "()J", "sequenceNumber", "Lkotlinx/coroutines/debug/internal/e;", v.b.f83881a, "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlinx/coroutines/debug/internal/e;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public final class DebuggerInfo implements Serializable {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Long f85172a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f85173b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final String f85174c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final String f85175d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final String f85176e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final String f85177f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final List<StackTraceElement> f85178g;

    /* renamed from: h  reason: collision with root package name */
    private final long f85179h;

    public DebuggerInfo(@m8.g e eVar, @m8.g CoroutineContext coroutineContext) {
        Thread.State state;
        q0 q0Var = (q0) coroutineContext.get(q0.f86357b);
        this.f85172a = q0Var == null ? null : Long.valueOf(q0Var.s0());
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        this.f85173b = continuationInterceptor == null ? null : continuationInterceptor.toString();
        r0 r0Var = (r0) coroutineContext.get(r0.f86391b);
        this.f85174c = r0Var == null ? null : r0Var.getName();
        this.f85175d = eVar.g();
        Thread thread = eVar.f85219e;
        this.f85176e = (thread == null || (state = thread.getState()) == null) ? null : state.toString();
        Thread thread2 = eVar.f85219e;
        this.f85177f = thread2 != null ? thread2.getName() : null;
        this.f85178g = eVar.h();
        this.f85179h = eVar.f85216b;
    }

    @m8.h
    public final Long getCoroutineId() {
        return this.f85172a;
    }

    @m8.h
    public final String getDispatcher() {
        return this.f85173b;
    }

    @m8.g
    public final List<StackTraceElement> getLastObservedStackTrace() {
        return this.f85178g;
    }

    @m8.h
    public final String getLastObservedThreadName() {
        return this.f85177f;
    }

    @m8.h
    public final String getLastObservedThreadState() {
        return this.f85176e;
    }

    @m8.h
    public final String getName() {
        return this.f85174c;
    }

    public final long getSequenceNumber() {
        return this.f85179h;
    }

    @m8.g
    public final String getState() {
        return this.f85175d;
    }
}
