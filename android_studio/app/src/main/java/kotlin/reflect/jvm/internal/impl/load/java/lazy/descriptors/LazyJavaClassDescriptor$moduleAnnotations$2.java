package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import m8.h;

/* compiled from: LazyJavaClassDescriptor.kt */
/* loaded from: classes4.dex */
final class LazyJavaClassDescriptor$moduleAnnotations$2 extends Lambda implements Function0<List<? extends JavaAnnotation>> {
    final /* synthetic */ LazyJavaClassDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor$moduleAnnotations$2(LazyJavaClassDescriptor lazyJavaClassDescriptor) {
        super(0);
        this.this$0 = lazyJavaClassDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final List<? extends JavaAnnotation> invoke() {
        ClassId classId = DescriptorUtilsKt.getClassId(this.this$0);
        if (classId != null) {
            return this.this$0.getOuterContext().getComponents().getJavaModuleResolver().getAnnotationsForModuleOwnerOfClass(classId);
        }
        return null;
    }
}
