package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Collection;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;
import m8.h;

/* compiled from: JavaAnnotationMapper.kt */
/* loaded from: classes4.dex */
public class JavaAnnotationDescriptor implements AnnotationDescriptor, PossiblyExternalAnnotationDescriptor {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(JavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};
    @h
    private final JavaAnnotationArgument firstArgument;
    @g
    private final FqName fqName;
    private final boolean isIdeExternalAnnotation;
    @g
    private final SourceElement source;
    @g
    private final NotNullLazyValue type$delegate;

    public JavaAnnotationDescriptor(@g LazyJavaResolverContext c10, @h JavaAnnotation javaAnnotation, @g FqName fqName) {
        SourceElement NO_SOURCE;
        JavaAnnotationArgument javaAnnotationArgument;
        Collection<JavaAnnotationArgument> arguments;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        this.fqName = fqName;
        if (javaAnnotation == null || (NO_SOURCE = c10.getComponents().getSourceElementFactory().source(javaAnnotation)) == null) {
            NO_SOURCE = SourceElement.NO_SOURCE;
            Intrinsics.checkNotNullExpressionValue(NO_SOURCE, "NO_SOURCE");
        }
        this.source = NO_SOURCE;
        this.type$delegate = c10.getStorageManager().createLazyValue(new JavaAnnotationDescriptor$type$2(c10, this));
        if (javaAnnotation == null || (arguments = javaAnnotation.getArguments()) == null) {
            javaAnnotationArgument = null;
        } else {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(arguments);
            javaAnnotationArgument = (JavaAnnotationArgument) firstOrNull;
        }
        this.firstArgument = javaAnnotationArgument;
        boolean z9 = true;
        this.isIdeExternalAnnotation = (javaAnnotation == null || !javaAnnotation.isIdeExternalAnnotation()) ? false : false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public Map<Name, ConstantValue<?>> getAllValueArguments() {
        Map<Name, ConstantValue<?>> emptyMap;
        emptyMap = MapsKt__MapsKt.emptyMap();
        return emptyMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final JavaAnnotationArgument getFirstArgument() {
        return this.firstArgument;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public FqName getFqName() {
        return this.fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public SourceElement getSource() {
        return this.source;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor
    public boolean isIdeExternalAnnotation() {
        return this.isIdeExternalAnnotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public SimpleType getType() {
        return (SimpleType) StorageKt.getValue(this.type$delegate, this, $$delegatedProperties[0]);
    }
}
