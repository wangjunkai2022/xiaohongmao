package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes4.dex */
public final class DeserializedMemberScope$NoReorderImplementation$allProperties$2 extends Lambda implements Function0<List<? extends PropertyDescriptor>> {
    final /* synthetic */ DeserializedMemberScope.NoReorderImplementation this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$NoReorderImplementation$allProperties$2(DeserializedMemberScope.NoReorderImplementation noReorderImplementation) {
        super(0);
        this.this$0 = noReorderImplementation;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends PropertyDescriptor> invoke() {
        List declaredProperties;
        List computeAllNonDeclaredProperties;
        List<? extends PropertyDescriptor> plus;
        declaredProperties = this.this$0.getDeclaredProperties();
        computeAllNonDeclaredProperties = this.this$0.computeAllNonDeclaredProperties();
        plus = CollectionsKt___CollectionsKt.plus((Collection) declaredProperties, (Iterable) computeAllNonDeclaredProperties);
        return plus;
    }
}
