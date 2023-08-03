package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Substitutable;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;
import m8.h;

/* compiled from: SubstitutingScope.kt */
/* loaded from: classes4.dex */
public final class SubstitutingScope implements MemberScope {
    @g
    private final Lazy _allDescriptors$delegate;
    @h
    private Map<DeclarationDescriptor, DeclarationDescriptor> substitutedDescriptors;
    @g
    private final TypeSubstitutor substitutor;
    @g
    private final MemberScope workerScope;

    public SubstitutingScope(@g MemberScope workerScope, @g TypeSubstitutor givenSubstitutor) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(workerScope, "workerScope");
        Intrinsics.checkNotNullParameter(givenSubstitutor, "givenSubstitutor");
        this.workerScope = workerScope;
        TypeSubstitution substitution = givenSubstitutor.getSubstitution();
        Intrinsics.checkNotNullExpressionValue(substitution, "givenSubstitutor.substitution");
        this.substitutor = CapturedTypeConstructorKt.wrapWithCapturingSubstitution$default(substitution, false, 1, null).buildSubstitutor();
        lazy = LazyKt__LazyJVMKt.lazy(new SubstitutingScope$_allDescriptors$2(this));
        this._allDescriptors$delegate = lazy;
    }

    private final Collection<DeclarationDescriptor> get_allDescriptors() {
        return (Collection) this._allDescriptors$delegate.getValue();
    }

    private final <D extends DeclarationDescriptor> D substitute(D d4) {
        if (this.substitutor.isEmpty()) {
            return d4;
        }
        if (this.substitutedDescriptors == null) {
            this.substitutedDescriptors = new HashMap();
        }
        Map<DeclarationDescriptor, DeclarationDescriptor> map = this.substitutedDescriptors;
        Intrinsics.checkNotNull(map);
        DeclarationDescriptor declarationDescriptor = map.get(d4);
        if (declarationDescriptor == null) {
            if (!(d4 instanceof Substitutable)) {
                throw new IllegalStateException(("Unknown descriptor in scope: " + d4).toString());
            }
            declarationDescriptor = ((Substitutable) d4).substitute(this.substitutor);
            if (declarationDescriptor != null) {
                map.put(d4, declarationDescriptor);
            } else {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + d4 + " substitution fails");
            }
        }
        D d10 = (D) declarationDescriptor;
        Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type D of org.jetbrains.kotlin.resolve.scopes.SubstitutingScope.substitute");
        return d10;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @h
    public Set<Name> getClassifierNames() {
        return this.workerScope.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @h
    public ClassifierDescriptor getContributedClassifier(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        ClassifierDescriptor contributedClassifier = this.workerScope.getContributedClassifier(name, location);
        if (contributedClassifier != null) {
            return (ClassifierDescriptor) substitute((SubstitutingScope) contributedClassifier);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        return get_allDescriptors();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<? extends SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return substitute(this.workerScope.getContributedFunctions(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<? extends PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return substitute(this.workerScope.getContributedVariables(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getFunctionNames() {
        return this.workerScope.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getVariableNames() {
        return this.workerScope.getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public void recordLookup(@g Name name, @g LookupLocation lookupLocation) {
        MemberScope.DefaultImpls.recordLookup(this, name, lookupLocation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends DeclarationDescriptor> Collection<D> substitute(Collection<? extends D> collection) {
        if (this.substitutor.isEmpty() || collection.isEmpty()) {
            return collection;
        }
        LinkedHashSet newLinkedHashSetWithExpectedSize = CollectionsKt.newLinkedHashSetWithExpectedSize(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            newLinkedHashSetWithExpectedSize.add(substitute((SubstitutingScope) ((DeclarationDescriptor) it.next())));
        }
        return newLinkedHashSetWithExpectedSize;
    }
}
