package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RawType.kt */
/* loaded from: classes4.dex */
public final class RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2 extends Lambda implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ JavaTypeAttributes $attr;
    final /* synthetic */ ClassDescriptor $declaration;
    final /* synthetic */ SimpleType $type;
    final /* synthetic */ RawSubstitution this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2(ClassDescriptor classDescriptor, RawSubstitution rawSubstitution, SimpleType simpleType, JavaTypeAttributes javaTypeAttributes) {
        super(1);
        this.$declaration = classDescriptor;
        this.this$0 = rawSubstitution;
        this.$type = simpleType;
        this.$attr = javaTypeAttributes;
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final SimpleType invoke(@g KotlinTypeRefiner kotlinTypeRefiner) {
        ClassId classId;
        ClassDescriptor findClassAcrossModuleDependencies;
        Pair eraseInflexibleBasedOnClassDescriptor;
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        ClassDescriptor classDescriptor = this.$declaration;
        if (!(classDescriptor instanceof ClassDescriptor)) {
            classDescriptor = null;
        }
        if (classDescriptor == null || (classId = DescriptorUtilsKt.getClassId(classDescriptor)) == null || (findClassAcrossModuleDependencies = kotlinTypeRefiner.findClassAcrossModuleDependencies(classId)) == null || Intrinsics.areEqual(findClassAcrossModuleDependencies, this.$declaration)) {
            return null;
        }
        eraseInflexibleBasedOnClassDescriptor = this.this$0.eraseInflexibleBasedOnClassDescriptor(this.$type, findClassAcrossModuleDependencies, this.$attr);
        return (SimpleType) eraseInflexibleBasedOnClassDescriptor.getFirst();
    }
}
