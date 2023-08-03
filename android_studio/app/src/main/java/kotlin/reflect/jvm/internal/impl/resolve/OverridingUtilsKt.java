package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import m8.g;

/* compiled from: overridingUtils.kt */
/* loaded from: classes4.dex */
public final class OverridingUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final <H> Collection<H> selectMostSpecificInEachOverridableGroup(@g Collection<? extends H> collection, @g Function1<? super H, ? extends CallableDescriptor> descriptorByHandle) {
        Object first;
        Object single;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(descriptorByHandle, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        SmartSet create = SmartSet.Companion.create();
        while (!linkedList.isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) linkedList);
            SmartSet create2 = SmartSet.Companion.create();
            Collection<? super H> extractMembersOverridableInBothWays = OverridingUtil.extractMembersOverridableInBothWays(first, linkedList, descriptorByHandle, new OverridingUtilsKt$selectMostSpecificInEachOverridableGroup$overridableGroup$1(create2));
            Intrinsics.checkNotNullExpressionValue(extractMembersOverridableInBothWays, "val conflictedHandles = …nflictedHandles.add(it) }");
            if (extractMembersOverridableInBothWays.size() == 1 && create2.isEmpty()) {
                single = CollectionsKt___CollectionsKt.single(extractMembersOverridableInBothWays);
                Intrinsics.checkNotNullExpressionValue(single, "overridableGroup.single()");
                create.add(single);
            } else {
                Object obj = (Object) OverridingUtil.selectMostSpecificMember(extractMembersOverridableInBothWays, descriptorByHandle);
                Intrinsics.checkNotNullExpressionValue(obj, "selectMostSpecificMember…roup, descriptorByHandle)");
                CallableDescriptor invoke = descriptorByHandle.invoke(obj);
                for (Object it : extractMembersOverridableInBothWays) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    if (!OverridingUtil.isMoreSpecific(invoke, descriptorByHandle.invoke(it))) {
                        create2.add(it);
                    }
                }
                if (!create2.isEmpty()) {
                    create.addAll(create2);
                }
                create.add(obj);
            }
        }
        return create;
    }
}
