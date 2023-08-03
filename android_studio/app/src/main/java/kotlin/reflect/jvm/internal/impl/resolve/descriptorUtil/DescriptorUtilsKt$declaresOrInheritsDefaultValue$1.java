package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DescriptorUtils.kt */
/* loaded from: classes4.dex */
public final class DescriptorUtilsKt$declaresOrInheritsDefaultValue$1<N> implements DFS.Neighbors {
    public static final DescriptorUtilsKt$declaresOrInheritsDefaultValue$1<N> INSTANCE = new DescriptorUtilsKt$declaresOrInheritsDefaultValue$1<>();

    DescriptorUtilsKt$declaresOrInheritsDefaultValue$1() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    @g
    public final Iterable<ValueParameterDescriptor> getNeighbors(ValueParameterDescriptor valueParameterDescriptor) {
        int collectionSizeOrDefault;
        Collection<ValueParameterDescriptor> overriddenDescriptors = valueParameterDescriptor.getOverriddenDescriptors();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(overriddenDescriptors, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ValueParameterDescriptor valueParameterDescriptor2 : overriddenDescriptors) {
            arrayList.add(valueParameterDescriptor2.getOriginal());
        }
        return arrayList;
    }
}
