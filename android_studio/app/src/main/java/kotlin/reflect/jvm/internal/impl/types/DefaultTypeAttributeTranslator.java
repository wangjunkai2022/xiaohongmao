package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import m8.g;
import m8.h;

/* compiled from: TypeAttributeTranslator.kt */
/* loaded from: classes4.dex */
public final class DefaultTypeAttributeTranslator implements TypeAttributeTranslator {
    @g
    public static final DefaultTypeAttributeTranslator INSTANCE = new DefaultTypeAttributeTranslator();

    private DefaultTypeAttributeTranslator() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator
    @g
    public TypeAttributes toAttributes(@g Annotations annotations, @h TypeConstructor typeConstructor, @h DeclarationDescriptor declarationDescriptor) {
        List<? extends TypeAttribute<?>> listOf;
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        if (annotations.isEmpty()) {
            return TypeAttributes.Companion.getEmpty();
        }
        TypeAttributes.Companion companion = TypeAttributes.Companion;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new AnnotationsTypeAttribute(annotations));
        return companion.create(listOf);
    }
}
