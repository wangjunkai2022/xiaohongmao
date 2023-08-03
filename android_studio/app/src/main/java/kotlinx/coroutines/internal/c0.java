package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.u2;

/* compiled from: MainDispatchers.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/internal/c0;", "", "Lkotlinx/coroutines/u2;", "a", "", "b", "Z", "FAST_SERVICE_LOADER_ENABLED", "c", "Lkotlinx/coroutines/u2;", "dispatcher", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f86248a;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f86249b;
    @JvmField
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final u2 f86250c;

    static {
        c0 c0Var = new c0();
        f86248a = c0Var;
        f86249b = r0.e("kotlinx.coroutines.fast.service.loader", true);
        f86250c = c0Var.a();
    }

    private c0() {
    }

    private final u2 a() {
        Sequence asSequence;
        List<MainDispatcherFactory> list;
        Object next;
        try {
            if (f86249b) {
                list = n.f86279a.d();
            } else {
                asSequence = SequencesKt__SequencesKt.asSequence(ServiceLoader.load(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader()).iterator());
                list = SequencesKt___SequencesKt.toList(asSequence);
            }
            Iterator<T> it = list.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((MainDispatcherFactory) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) next;
            u2 f10 = mainDispatcherFactory == null ? null : d0.f(mainDispatcherFactory, list);
            return f10 == null ? d0.b(null, null, 3, null) : f10;
        } catch (Throwable th) {
            return d0.b(th, null, 2, null);
        }
    }
}
