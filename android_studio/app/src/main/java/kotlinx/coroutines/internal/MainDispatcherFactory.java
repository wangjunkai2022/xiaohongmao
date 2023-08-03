package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.u2;

/* compiled from: MainDispatcherFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/internal/MainDispatcherFactory;", "", "", "allFactories", "Lkotlinx/coroutines/u2;", "createDispatcher", "", "hintOnError", "", "getLoadPriority", "()I", "loadPriority", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public interface MainDispatcherFactory {

    /* compiled from: MainDispatcherFactory.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        @m8.h
        public static String a(@m8.g MainDispatcherFactory mainDispatcherFactory) {
            return null;
        }
    }

    @m8.g
    u2 createDispatcher(@m8.g List<? extends MainDispatcherFactory> list);

    int getLoadPriority();

    @m8.h
    String hintOnError();
}
