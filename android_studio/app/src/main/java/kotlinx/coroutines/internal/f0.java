package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.MainDispatcherFactory;
import kotlinx.coroutines.u2;

/* compiled from: MainDispatchers.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/internal/f0;", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "", "allFactories", "Lkotlinx/coroutines/u2;", "createDispatcher", "", "getLoadPriority", "()I", "loadPriority", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public final class f0 implements MainDispatcherFactory {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final f0 f86259a = new f0();

    private f0() {
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    @m8.g
    public u2 createDispatcher(@m8.g List<? extends MainDispatcherFactory> list) {
        return new e0(null, null, 2, null);
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public int getLoadPriority() {
        return -1;
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    @m8.h
    public String hintOnError() {
        return MainDispatcherFactory.a.a(this);
    }
}
