package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: ModuleAwareClassDescriptor.kt */
/* loaded from: classes4.dex */
public abstract class ModuleAwareClassDescriptor implements ClassDescriptor {
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: ModuleAwareClassDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final MemberScope getRefinedMemberScopeIfPossible$descriptors(@g ClassDescriptor classDescriptor, @g TypeSubstitution typeSubstitution, @g KotlinTypeRefiner kotlinTypeRefiner) {
            MemberScope memberScope;
            Intrinsics.checkNotNullParameter(classDescriptor, "<this>");
            Intrinsics.checkNotNullParameter(typeSubstitution, "typeSubstitution");
            Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = classDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) classDescriptor : null;
            if (moduleAwareClassDescriptor == null || (memberScope = moduleAwareClassDescriptor.getMemberScope(typeSubstitution, kotlinTypeRefiner)) == null) {
                MemberScope memberScope2 = classDescriptor.getMemberScope(typeSubstitution);
                Intrinsics.checkNotNullExpressionValue(memberScope2, "this.getMemberScope(\n   …ubstitution\n            )");
                return memberScope2;
            }
            return memberScope;
        }

        @g
        public final MemberScope getRefinedUnsubstitutedMemberScopeIfPossible$descriptors(@g ClassDescriptor classDescriptor, @g KotlinTypeRefiner kotlinTypeRefiner) {
            MemberScope unsubstitutedMemberScope;
            Intrinsics.checkNotNullParameter(classDescriptor, "<this>");
            Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = classDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) classDescriptor : null;
            if (moduleAwareClassDescriptor == null || (unsubstitutedMemberScope = moduleAwareClassDescriptor.getUnsubstitutedMemberScope(kotlinTypeRefiner)) == null) {
                MemberScope unsubstitutedMemberScope2 = classDescriptor.getUnsubstitutedMemberScope();
                Intrinsics.checkNotNullExpressionValue(unsubstitutedMemberScope2, "this.unsubstitutedMemberScope");
                return unsubstitutedMemberScope2;
            }
            return unsubstitutedMemberScope;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract MemberScope getMemberScope(@g TypeSubstitution typeSubstitution, @g KotlinTypeRefiner kotlinTypeRefiner);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract MemberScope getUnsubstitutedMemberScope(@g KotlinTypeRefiner kotlinTypeRefiner);
}
