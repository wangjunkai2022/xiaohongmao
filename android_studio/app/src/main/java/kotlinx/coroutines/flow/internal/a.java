package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.flow.internal.c;

/* compiled from: AbstractSharedFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00060\u0003j\u0002`\u0004B\u0007¢\u0006\u0004\b*\u0010\u001aJ\u000f\u0010\u0005\u001a\u00028\u0000H$¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\t2\u0006\u0010\b\u001a\u00020\u0007H$¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e0\u0011H\u0084\bR>\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\t2\u0010\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\t8\u0004@BX\u0084\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R$\u0010 \u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00078\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070'8F¢\u0006\u0006\u001a\u0004\b$\u0010(¨\u0006+"}, d2 = {"Lkotlinx/coroutines/flow/internal/a;", "Lkotlinx/coroutines/flow/internal/c;", ExifInterface.LATITUDE_SOUTH, "", "Lkotlinx/coroutines/internal/SynchronizedObject;", ContextChain.TAG_INFRA, "()Lkotlinx/coroutines/flow/internal/c;", "", com.qennnsad.aknkaksd.data.repository.f.f47745b, "", "j", "(I)[Lkotlinx/coroutines/flow/internal/c;", "h", "slot", "", "l", "(Lkotlinx/coroutines/flow/internal/c;)V", "Lkotlin/Function1;", "block", "k", "<set-?>", "a", "[Lkotlinx/coroutines/flow/internal/c;", "n", "()[Lkotlinx/coroutines/flow/internal/c;", "getSlots$annotations", "()V", "slots", "b", "I", "m", "()I", "nCollectors", "c", "nextIndex", "Lkotlinx/coroutines/flow/internal/w;", "d", "Lkotlinx/coroutines/flow/internal/w;", "_subscriptionCount", "Lkotlinx/coroutines/flow/h0;", "()Lkotlinx/coroutines/flow/h0;", "subscriptionCount", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class a<S extends c<?>> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private S[] f85905a;

    /* renamed from: b  reason: collision with root package name */
    private int f85906b;

    /* renamed from: c  reason: collision with root package name */
    private int f85907c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private w f85908d;

    public static final /* synthetic */ int f(a aVar) {
        return aVar.f85906b;
    }

    public static final /* synthetic */ c[] g(a aVar) {
        return aVar.f85905a;
    }

    protected static /* synthetic */ void o() {
    }

    @m8.g
    public final h0<Integer> d() {
        w wVar;
        synchronized (this) {
            wVar = this.f85908d;
            if (wVar == null) {
                wVar = new w(m());
                this.f85908d = wVar;
            }
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final S h() {
        S s9;
        w wVar;
        synchronized (this) {
            S[] n9 = n();
            if (n9 == null) {
                n9 = j(2);
                this.f85905a = n9;
            } else if (m() >= n9.length) {
                Object[] copyOf = Arrays.copyOf(n9, n9.length * 2);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                this.f85905a = (S[]) ((c[]) copyOf);
                n9 = (S[]) ((c[]) copyOf);
            }
            int i4 = this.f85907c;
            do {
                s9 = n9[i4];
                if (s9 == null) {
                    s9 = i();
                    n9[i4] = s9;
                }
                i4++;
                if (i4 >= n9.length) {
                    i4 = 0;
                }
            } while (!s9.a(this));
            this.f85907c = i4;
            this.f85906b = m() + 1;
            wVar = this.f85908d;
        }
        if (wVar != null) {
            wVar.e0(1);
        }
        return s9;
    }

    @m8.g
    protected abstract S i();

    @m8.g
    protected abstract S[] j(int i4);

    protected final void k(@m8.g Function1<? super S, Unit> function1) {
        c[] cVarArr;
        if (this.f85906b == 0 || (cVarArr = this.f85905a) == null) {
            return;
        }
        int i4 = 0;
        int length = cVarArr.length;
        while (i4 < length) {
            c cVar = cVarArr[i4];
            i4++;
            if (cVar != null) {
                function1.invoke(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l(@m8.g S s9) {
        w wVar;
        int i4;
        Continuation<Unit>[] b10;
        synchronized (this) {
            this.f85906b = m() - 1;
            wVar = this.f85908d;
            i4 = 0;
            if (m() == 0) {
                this.f85907c = 0;
            }
            b10 = s9.b(this);
        }
        int length = b10.length;
        while (i4 < length) {
            Continuation<Unit> continuation = b10[i4];
            i4++;
            if (continuation != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
            }
        }
        if (wVar == null) {
            return;
        }
        wVar.e0(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int m() {
        return this.f85906b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final S[] n() {
        return this.f85905a;
    }
}
