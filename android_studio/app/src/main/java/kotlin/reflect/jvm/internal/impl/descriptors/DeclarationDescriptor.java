package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface DeclarationDescriptor extends Named, Annotated {
    <R, D> R accept(DeclarationDescriptorVisitor<R, D> declarationDescriptorVisitor, D d4);

    @h
    DeclarationDescriptor getContainingDeclaration();

    @g
    DeclarationDescriptor getOriginal();
}
