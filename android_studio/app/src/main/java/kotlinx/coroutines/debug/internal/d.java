package kotlinx.coroutines.debug.internal;

import io.sentry.protocol.t;
import io.sentry.protocol.v;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;

/* compiled from: DebugCoroutineInfo.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b'\u0010(R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\r\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010!\u001a\u0004\u0018\u00010\u001e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b\u0019\u0010 R\u0019\u0010\"\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u001b\u0010\t\u001a\u0004\b\u0014\u0010\nR\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128G¢\u0006\f\n\u0004\b#\u0010\u0015\u001a\u0004\b#\u0010\u0016¨\u0006)"}, d2 = {"Lkotlinx/coroutines/debug/internal/d;", "", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "()Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "b", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "creationStackBottom", "", "c", "J", "f", "()J", "sequenceNumber", "", "Ljava/lang/StackTraceElement;", "d", "Ljava/util/List;", "()Ljava/util/List;", "creationStackTrace", "", "e", "Ljava/lang/String;", "g", "()Ljava/lang/String;", t.b.f83859d, "Ljava/lang/Thread;", "Ljava/lang/Thread;", "()Ljava/lang/Thread;", "lastObservedThread", "lastObservedFrame", "h", "lastObservedStackTrace", "Lkotlinx/coroutines/debug/internal/e;", v.b.f83881a, "<init>", "(Lkotlinx/coroutines/debug/internal/e;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f85207a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineStackFrame f85208b;

    /* renamed from: c  reason: collision with root package name */
    private final long f85209c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final List<StackTraceElement> f85210d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final String f85211e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final Thread f85212f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private final CoroutineStackFrame f85213g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final List<StackTraceElement> f85214h;

    public d(@m8.g e eVar, @m8.g CoroutineContext coroutineContext) {
        this.f85207a = coroutineContext;
        this.f85208b = eVar.d();
        this.f85209c = eVar.f85216b;
        this.f85210d = eVar.e();
        this.f85211e = eVar.g();
        this.f85212f = eVar.f85219e;
        this.f85213g = eVar.f();
        this.f85214h = eVar.h();
    }

    @m8.g
    public final CoroutineContext a() {
        return this.f85207a;
    }

    @m8.h
    public final CoroutineStackFrame b() {
        return this.f85208b;
    }

    @m8.g
    public final List<StackTraceElement> c() {
        return this.f85210d;
    }

    @m8.h
    public final CoroutineStackFrame d() {
        return this.f85213g;
    }

    @m8.h
    public final Thread e() {
        return this.f85212f;
    }

    public final long f() {
        return this.f85209c;
    }

    @m8.g
    public final String g() {
        return this.f85211e;
    }

    @m8.g
    @JvmName(name = "lastObservedStackTrace")
    public final List<StackTraceElement> h() {
        return this.f85214h;
    }
}
