package kotlinx.coroutines.test;

import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.y0;
import kotlinx.coroutines.internal.z0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TestCoroutineContext.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u00032\u00020\u0004B'\u0012\n\u0010\u0006\u001a\u00060\u0002j\u0002`\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b \u0010!J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0011\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0000H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0018\u0010\u0006\u001a\u00060\u0002j\u0002`\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000e8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0010R(\u0010\u0018\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u000f\u0010\u0016\"\u0004\b\f\u0010\u0017R\"\u0010\u001f\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lkotlinx/coroutines/test/c;", "", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Lkotlinx/coroutines/internal/z0;", "", "run", "other", "", "c", "", "toString", "a", "Ljava/lang/Runnable;", "", "b", "J", "count", j.f47980a, "Lkotlinx/coroutines/internal/y0;", "d", "Lkotlinx/coroutines/internal/y0;", "()Lkotlinx/coroutines/internal/y0;", "(Lkotlinx/coroutines/internal/y0;)V", "heap", "e", "I", "getIndex", "()I", "h", "(I)V", "index", "<init>", "(Ljava/lang/Runnable;JJ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c implements Comparable<c>, Runnable, z0 {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f86822a;

    /* renamed from: b  reason: collision with root package name */
    private final long f86823b;
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public final long f86824c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private y0<?> f86825d;

    /* renamed from: e  reason: collision with root package name */
    private int f86826e;

    public c(@g Runnable runnable, long j4, long j10) {
        this.f86822a = runnable;
        this.f86823b = j4;
        this.f86824c = j10;
    }

    @Override // kotlinx.coroutines.internal.z0
    public void a(@h y0<?> y0Var) {
        this.f86825d = y0Var;
    }

    @Override // kotlinx.coroutines.internal.z0
    @h
    public y0<?> b() {
        return this.f86825d;
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(@g c cVar) {
        long j4 = this.f86824c;
        long j10 = cVar.f86824c;
        if (j4 == j10) {
            return Intrinsics.compare(this.f86823b, cVar.f86823b);
        }
        return Intrinsics.compare(j4, j10);
    }

    @Override // kotlinx.coroutines.internal.z0
    public int getIndex() {
        return this.f86826e;
    }

    @Override // kotlinx.coroutines.internal.z0
    public void h(int i4) {
        this.f86826e = i4;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f86822a.run();
    }

    @g
    public String toString() {
        return "TimedRunnable(time=" + this.f86824c + ", run=" + this.f86822a + ')';
    }

    public /* synthetic */ c(Runnable runnable, long j4, long j10, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(runnable, (i4 & 2) != 0 ? 0L : j4, (i4 & 4) != 0 ? 0L : j10);
    }
}
