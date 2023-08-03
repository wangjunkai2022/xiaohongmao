package org.koin.core.component;

import kotlin.Metadata;
import m8.g;
import org.koin.core.Koin;
import org.koin.core.component.a;
import org.koin.core.scope.Scope;

/* compiled from: KoinScopeComponent.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lorg/koin/core/component/b;", "Lorg/koin/core/component/a;", "", "a", "Lorg/koin/core/scope/Scope;", "getScope", "()Lorg/koin/core/scope/Scope;", "scope", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public interface b extends org.koin.core.component.a {

    /* compiled from: KoinScopeComponent.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class a {
        public static void a(@g b bVar) {
            if (bVar.getScope().U()) {
                bVar.getScope().e();
            }
        }

        @g
        public static Koin b(@g b bVar) {
            return a.C0815a.a(bVar);
        }
    }

    void a();

    @g
    Scope getScope();
}
