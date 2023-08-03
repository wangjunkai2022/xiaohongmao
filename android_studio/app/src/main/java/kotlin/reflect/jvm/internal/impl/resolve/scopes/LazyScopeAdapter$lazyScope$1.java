package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: LazyScopeAdapter.kt */
/* loaded from: classes4.dex */
final class LazyScopeAdapter$lazyScope$1 extends Lambda implements Function0<MemberScope> {
    final /* synthetic */ Function0<MemberScope> $getScope;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyScopeAdapter$lazyScope$1(Function0<? extends MemberScope> function0) {
        super(0);
        this.$getScope = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final MemberScope invoke() {
        MemberScope invoke = this.$getScope.invoke();
        return invoke instanceof AbstractScopeAdapter ? ((AbstractScopeAdapter) invoke).getActualScope() : invoke;
    }
}
