package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* compiled from: ConcurrentLinkedList.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001ao\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000228\u0010\b\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0003\u0012\u0015\u0012\u0013\u0018\u00018\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0082\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\u000e\u001a\u00028\u0000\"\u000e\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\f*\u00028\u0000H\u0000¢\u0006\u0004\b\u000e\u0010\u000f\"\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\"\u001a\u0010\u0018\u001a\u00020\u00148\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0015\u0012\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/internal/m0;", ExifInterface.LATITUDE_SOUTH, "", "id", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "prev", "createNewSegment", "Lkotlinx/coroutines/internal/n0;", "c", "(Lkotlinx/coroutines/internal/m0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/h;", "N", "b", "(Lkotlinx/coroutines/internal/h;)Lkotlinx/coroutines/internal/h;", "", "a", "I", "POINTERS_SHIFT", "Lkotlinx/coroutines/internal/p0;", "Lkotlinx/coroutines/internal/p0;", "getCLOSED$annotations", "()V", "CLOSED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: a */
    private static final int f86260a = 16;
    @m8.g

    /* renamed from: b */
    private static final p0 f86261b = new p0("CLOSED");

    public static final /* synthetic */ p0 a() {
        return f86261b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.h] */
    @m8.g
    public static final <N extends h<N>> N b(@m8.g N n9) {
        while (true) {
            Object e4 = n9.e();
            if (e4 == f86261b) {
                return n9;
            }
            ?? r02 = (h) e4;
            if (r02 != 0) {
                n9 = r02;
            } else if (n9.j()) {
                return n9;
            }
        }
    }

    private static final <S extends m0<S>> Object c(S s9, long j4, Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s9.o() >= j4 && !s9.g()) {
                return n0.b(s9);
            }
            Object e4 = s9.e();
            if (e4 == f86261b) {
                return n0.b(f86261b);
            }
            S s10 = (S) ((h) e4);
            if (s10 == null) {
                s10 = function2.invoke(Long.valueOf(s9.o() + 1), s9);
                if (s9.m(s10)) {
                    if (s9.g()) {
                        s9.l();
                    }
                }
            }
            s9 = s10;
        }
    }

    private static /* synthetic */ void d() {
    }
}
