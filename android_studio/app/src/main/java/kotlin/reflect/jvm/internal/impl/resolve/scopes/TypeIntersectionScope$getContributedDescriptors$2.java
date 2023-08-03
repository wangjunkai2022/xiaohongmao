package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import m8.g;

/* compiled from: TypeIntersectionScope.kt */
/* loaded from: classes4.dex */
final class TypeIntersectionScope$getContributedDescriptors$2 extends Lambda implements Function1<CallableDescriptor, CallableDescriptor> {
    public static final TypeIntersectionScope$getContributedDescriptors$2 INSTANCE = new TypeIntersectionScope$getContributedDescriptors$2();

    TypeIntersectionScope$getContributedDescriptors$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final CallableDescriptor invoke(@g CallableDescriptor selectMostSpecificInEachOverridableGroup) {
        Intrinsics.checkNotNullParameter(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
        return selectMostSpecificInEachOverridableGroup;
    }
}
