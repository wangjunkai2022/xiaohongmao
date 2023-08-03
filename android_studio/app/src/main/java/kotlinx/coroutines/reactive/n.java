package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.Objects;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.JvmOverloads;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.i1;

/* compiled from: ReactiveFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a,\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007\u001a&\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u0005H\u0000\"\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\f¨\u0006\u000e"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/reactivestreams/c;", "Lkotlinx/coroutines/flow/i;", "a", "Lkotlin/coroutines/CoroutineContext;", "context", "c", "coroutineContext", "e", "", "Lkotlinx/coroutines/reactive/c;", "[Lkotlinx/coroutines/reactive/c;", "contextInjectors", "kotlinx-coroutines-reactive"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class n {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final c[] f86483a;

    static {
        Sequence asSequence;
        List list;
        asSequence = SequencesKt__SequencesKt.asSequence(ServiceLoader.load(c.class, c.class.getClassLoader()).iterator());
        list = SequencesKt___SequencesKt.toList(asSequence);
        Object[] array = list.toArray(new c[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        f86483a = (c[]) array;
    }

    @m8.g
    public static final <T> kotlinx.coroutines.flow.i<T> a(@m8.g org.reactivestreams.c<T> cVar) {
        return new l(cVar, null, 0, null, 14, null);
    }

    @JvmOverloads
    @m8.g
    public static final <T> org.reactivestreams.c<T> b(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar) {
        return d(iVar, null, 1, null);
    }

    @JvmOverloads
    @m8.g
    public static final <T> org.reactivestreams.c<T> c(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        return new e(iVar, i1.g().plus(coroutineContext));
    }

    public static /* synthetic */ org.reactivestreams.c d(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return c(iVar, coroutineContext);
    }

    @m8.g
    public static final <T> org.reactivestreams.c<T> e(@m8.g org.reactivestreams.c<T> cVar, @m8.g CoroutineContext coroutineContext) {
        c[] cVarArr = f86483a;
        int length = cVarArr.length;
        int i4 = 0;
        while (i4 < length) {
            c cVar2 = cVarArr[i4];
            i4++;
            cVar = cVar2.a(cVar, coroutineContext);
        }
        return cVar;
    }
}
