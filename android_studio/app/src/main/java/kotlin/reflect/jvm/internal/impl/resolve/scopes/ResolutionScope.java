package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ResolutionScope.kt */
/* loaded from: classes4.dex */
public interface ResolutionScope {

    /* compiled from: ResolutionScope.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Collection getContributedDescriptors$default(ResolutionScope resolutionScope, DescriptorKindFilter descriptorKindFilter, Function1 function1, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    descriptorKindFilter = DescriptorKindFilter.ALL;
                }
                Function1<Name, Boolean> function12 = function1;
                if ((i4 & 2) != 0) {
                    function12 = MemberScope.Companion.getALL_NAME_FILTER();
                }
                return resolutionScope.getContributedDescriptors(descriptorKindFilter, function12);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContributedDescriptors");
        }

        public static void recordLookup(@g ResolutionScope resolutionScope, @g Name name, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            resolutionScope.getContributedFunctions(name, location);
        }
    }

    @h
    ClassifierDescriptor getContributedClassifier(@g Name name, @g LookupLocation lookupLocation);

    @g
    Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter descriptorKindFilter, @g Function1<? super Name, Boolean> function1);

    @g
    Collection<? extends FunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation lookupLocation);

    void recordLookup(@g Name name, @g LookupLocation lookupLocation);
}
