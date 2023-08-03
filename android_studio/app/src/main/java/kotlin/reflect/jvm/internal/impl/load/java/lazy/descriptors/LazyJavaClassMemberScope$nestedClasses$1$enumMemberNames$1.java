package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Set;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: LazyJavaClassMemberScope.kt */
/* loaded from: classes4.dex */
final class LazyJavaClassMemberScope$nestedClasses$1$enumMemberNames$1 extends Lambda implements Function0<Set<? extends Name>> {
    final /* synthetic */ LazyJavaClassMemberScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope$nestedClasses$1$enumMemberNames$1(LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(0);
        this.this$0 = lazyJavaClassMemberScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Set<? extends Name> invoke() {
        Set<? extends Name> plus;
        plus = SetsKt___SetsKt.plus((Set) this.this$0.getFunctionNames(), (Iterable) this.this$0.getVariableNames());
        return plus;
    }
}
