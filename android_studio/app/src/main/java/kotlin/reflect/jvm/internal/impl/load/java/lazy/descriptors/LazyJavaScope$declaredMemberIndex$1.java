package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: LazyJavaScope.kt */
/* loaded from: classes4.dex */
final class LazyJavaScope$declaredMemberIndex$1 extends Lambda implements Function0<DeclaredMemberIndex> {
    final /* synthetic */ LazyJavaScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaScope$declaredMemberIndex$1(LazyJavaScope lazyJavaScope) {
        super(0);
        this.this$0 = lazyJavaScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final DeclaredMemberIndex invoke() {
        return this.this$0.computeMemberIndex();
    }
}
