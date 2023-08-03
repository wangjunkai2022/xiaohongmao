package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import m8.g;
import m8.h;

/* compiled from: TypeAttributeTranslator.kt */
/* loaded from: classes4.dex */
public interface TypeAttributeTranslator {

    /* compiled from: TypeAttributeTranslator.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ TypeAttributes toAttributes$default(TypeAttributeTranslator typeAttributeTranslator, Annotations annotations, TypeConstructor typeConstructor, DeclarationDescriptor declarationDescriptor, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 2) != 0) {
                    typeConstructor = null;
                }
                if ((i4 & 4) != 0) {
                    declarationDescriptor = null;
                }
                return typeAttributeTranslator.toAttributes(annotations, typeConstructor, declarationDescriptor);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toAttributes");
        }
    }

    @g
    TypeAttributes toAttributes(@g Annotations annotations, @h TypeConstructor typeConstructor, @h DeclarationDescriptor declarationDescriptor);
}
