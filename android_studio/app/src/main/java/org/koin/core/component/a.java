package org.koin.core.component;

import kotlin.Metadata;
import m8.g;
import org.koin.core.Koin;

/* compiled from: KoinComponent.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"Lorg/koin/core/component/a;", "", "Lorg/koin/core/Koin;", "getKoin", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public interface a {

    /* compiled from: KoinComponent.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: org.koin.core.component.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0815a {
        @g
        public static Koin a(@g a aVar) {
            return d9.b.f62011a.a().get();
        }
    }

    @g
    Koin getKoin();
}
