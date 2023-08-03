package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface TypeConstructor extends TypeConstructorMarker {
    @g
    KotlinBuiltIns getBuiltIns();

    @h
    ClassifierDescriptor getDeclarationDescriptor();

    @g
    List<TypeParameterDescriptor> getParameters();

    @g
    /* renamed from: getSupertypes */
    Collection<KotlinType> mo1364getSupertypes();

    boolean isDenotable();

    @g
    TypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner);
}
