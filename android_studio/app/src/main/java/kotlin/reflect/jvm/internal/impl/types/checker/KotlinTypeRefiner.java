package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import m8.g;
import m8.h;

/* compiled from: KotlinTypeRefiner.kt */
/* loaded from: classes4.dex */
public abstract class KotlinTypeRefiner extends AbstractTypeRefiner {

    /* compiled from: KotlinTypeRefiner.kt */
    /* loaded from: classes4.dex */
    public static final class Default extends KotlinTypeRefiner {
        @g
        public static final Default INSTANCE = new Default();

        private Default() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        @h
        public ClassDescriptor findClassAcrossModuleDependencies(@g ClassId classId) {
            Intrinsics.checkNotNullParameter(classId, "classId");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        @g
        public <S extends MemberScope> S getOrPutScopeForClass(@g ClassDescriptor classDescriptor, @g Function0<? extends S> compute) {
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            Intrinsics.checkNotNullParameter(compute, "compute");
            return compute.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public boolean isRefinementNeededForModule(@g ModuleDescriptor moduleDescriptor) {
            Intrinsics.checkNotNullParameter(moduleDescriptor, "moduleDescriptor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public boolean isRefinementNeededForTypeConstructor(@g TypeConstructor typeConstructor) {
            Intrinsics.checkNotNullParameter(typeConstructor, "typeConstructor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        @h
        public ClassDescriptor refineDescriptor(@g DeclarationDescriptor descriptor) {
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        @g
        public Collection<KotlinType> refineSupertypes(@g ClassDescriptor classDescriptor) {
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            Collection<KotlinType> mo1364getSupertypes = classDescriptor.getTypeConstructor().mo1364getSupertypes();
            Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "classDescriptor.typeConstructor.supertypes");
            return mo1364getSupertypes;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner, kotlin.reflect.jvm.internal.impl.types.AbstractTypeRefiner
        @g
        public KotlinType refineType(@g KotlinTypeMarker type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return (KotlinType) type;
        }
    }

    @h
    public abstract ClassDescriptor findClassAcrossModuleDependencies(@g ClassId classId);

    @g
    public abstract <S extends MemberScope> S getOrPutScopeForClass(@g ClassDescriptor classDescriptor, @g Function0<? extends S> function0);

    public abstract boolean isRefinementNeededForModule(@g ModuleDescriptor moduleDescriptor);

    public abstract boolean isRefinementNeededForTypeConstructor(@g TypeConstructor typeConstructor);

    @h
    public abstract ClassifierDescriptor refineDescriptor(@g DeclarationDescriptor declarationDescriptor);

    @g
    public abstract Collection<KotlinType> refineSupertypes(@g ClassDescriptor classDescriptor);

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeRefiner
    @g
    public abstract KotlinType refineType(@g KotlinTypeMarker kotlinTypeMarker);
}
