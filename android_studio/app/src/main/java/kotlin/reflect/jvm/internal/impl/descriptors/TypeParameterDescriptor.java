package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import m8.g;

/* loaded from: classes4.dex */
public interface TypeParameterDescriptor extends ClassifierDescriptor, TypeParameterMarker {
    int getIndex();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    TypeParameterDescriptor getOriginal();

    @g
    StorageManager getStorageManager();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    TypeConstructor getTypeConstructor();

    @g
    List<KotlinType> getUpperBounds();

    @g
    Variance getVariance();

    boolean isCapturedFromOuterDeclaration();

    boolean isReified();
}
