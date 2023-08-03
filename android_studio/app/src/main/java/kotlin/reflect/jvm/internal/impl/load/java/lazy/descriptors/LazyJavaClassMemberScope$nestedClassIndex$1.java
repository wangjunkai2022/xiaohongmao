package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaClassMemberScope.kt */
/* loaded from: classes4.dex */
public final class LazyJavaClassMemberScope$nestedClassIndex$1 extends Lambda implements Function0<Set<? extends Name>> {
    final /* synthetic */ LazyJavaClassMemberScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope$nestedClassIndex$1(LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(0);
        this.this$0 = lazyJavaClassMemberScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Set<? extends Name> invoke() {
        JavaClass javaClass;
        Set<? extends Name> set;
        javaClass = this.this$0.jClass;
        set = CollectionsKt___CollectionsKt.toSet(javaClass.getInnerClassNames());
        return set;
    }
}
