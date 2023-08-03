package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaTypeParameter.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaTypeParameter extends ReflectJavaElement implements ReflectJavaAnnotationOwner, JavaTypeParameter {
    @g
    private final TypeVariable<?> typeVariable;

    public ReflectJavaTypeParameter(@g TypeVariable<?> typeVariable) {
        Intrinsics.checkNotNullParameter(typeVariable, "typeVariable");
        this.typeVariable = typeVariable;
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof ReflectJavaTypeParameter) && Intrinsics.areEqual(this.typeVariable, ((ReflectJavaTypeParameter) obj).typeVariable);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    @h
    public ReflectJavaAnnotation findAnnotation(@g FqName fqName) {
        return ReflectJavaAnnotationOwner.DefaultImpls.findAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner
    @h
    public AnnotatedElement getElement() {
        TypeVariable<?> typeVariable = this.typeVariable;
        if (typeVariable instanceof AnnotatedElement) {
            return (AnnotatedElement) typeVariable;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaNamedElement
    @g
    public Name getName() {
        Name identifier = Name.identifier(this.typeVariable.getName());
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(typeVariable.name)");
        return identifier;
    }

    public int hashCode() {
        return this.typeVariable.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public boolean isDeprecatedInJavaDoc() {
        return ReflectJavaAnnotationOwner.DefaultImpls.isDeprecatedInJavaDoc(this);
    }

    @g
    public String toString() {
        return ReflectJavaTypeParameter.class.getName() + ": " + this.typeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    @g
    public List<ReflectJavaAnnotation> getAnnotations() {
        return ReflectJavaAnnotationOwner.DefaultImpls.getAnnotations(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter
    @g
    public List<ReflectJavaClassifierType> getUpperBounds() {
        Object singleOrNull;
        List<ReflectJavaClassifierType> emptyList;
        Type[] bounds = this.typeVariable.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "typeVariable.bounds");
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new ReflectJavaClassifierType(type));
        }
        singleOrNull = CollectionsKt___CollectionsKt.singleOrNull((List<? extends Object>) arrayList);
        ReflectJavaClassifierType reflectJavaClassifierType = (ReflectJavaClassifierType) singleOrNull;
        if (Intrinsics.areEqual(reflectJavaClassifierType != null ? reflectJavaClassifierType.getReflectType() : null, Object.class)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return arrayList;
    }
}
