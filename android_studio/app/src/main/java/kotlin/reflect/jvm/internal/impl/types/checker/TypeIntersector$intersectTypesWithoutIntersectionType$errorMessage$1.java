package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: IntersectionType.kt */
/* loaded from: classes4.dex */
final class TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1 extends Lambda implements Function0<String> {
    final /* synthetic */ Set<SimpleType> $inputTypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1(Set<? extends SimpleType> set) {
        super(0);
        this.$inputTypes = set;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final String invoke() {
        String joinToString$default;
        StringBuilder sb = new StringBuilder();
        sb.append("This collections cannot be empty! input types: ");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.$inputTypes, null, null, null, 0, null, null, 63, null);
        sb.append(joinToString$default);
        return sb.toString();
    }
}
