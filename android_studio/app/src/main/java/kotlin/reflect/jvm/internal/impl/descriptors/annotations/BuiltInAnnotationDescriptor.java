package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: BuiltInAnnotationDescriptor.kt */
/* loaded from: classes4.dex */
public final class BuiltInAnnotationDescriptor implements AnnotationDescriptor {
    @g
    private final Map<Name, ConstantValue<?>> allValueArguments;
    @g
    private final KotlinBuiltIns builtIns;
    @g
    private final FqName fqName;
    @g
    private final Lazy type$delegate;

    /* JADX WARN: Multi-variable type inference failed */
    public BuiltInAnnotationDescriptor(@g KotlinBuiltIns builtIns, @g FqName fqName, @g Map<Name, ? extends ConstantValue<?>> allValueArguments) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(allValueArguments, "allValueArguments");
        this.builtIns = builtIns;
        this.fqName = fqName;
        this.allValueArguments = allValueArguments;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new BuiltInAnnotationDescriptor$type$2(this));
        this.type$delegate = lazy;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public Map<Name, ConstantValue<?>> getAllValueArguments() {
        return this.allValueArguments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public FqName getFqName() {
        return this.fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public SourceElement getSource() {
        SourceElement NO_SOURCE = SourceElement.NO_SOURCE;
        Intrinsics.checkNotNullExpressionValue(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public KotlinType getType() {
        Object value = this.type$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-type>(...)");
        return (KotlinType) value;
    }
}
