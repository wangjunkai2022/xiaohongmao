package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaAnnotationMapper.kt */
/* loaded from: classes4.dex */
public final class JavaTargetAnnotationDescriptor$allValueArguments$2 extends Lambda implements Function0<Map<Name, ? extends ConstantValue<? extends Object>>> {
    final /* synthetic */ JavaTargetAnnotationDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTargetAnnotationDescriptor$allValueArguments$2(JavaTargetAnnotationDescriptor javaTargetAnnotationDescriptor) {
        super(0);
        this.this$0 = javaTargetAnnotationDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Map<Name, ? extends ConstantValue<? extends Object>> invoke() {
        ConstantValue<?> constantValue;
        List<? extends JavaAnnotationArgument> listOf;
        Map<Name, ? extends ConstantValue<? extends Object>> emptyMap;
        JavaAnnotationArgument firstArgument = this.this$0.getFirstArgument();
        if (firstArgument instanceof JavaArrayAnnotationArgument) {
            constantValue = JavaAnnotationTargetMapper.INSTANCE.mapJavaTargetArguments$descriptors_jvm(((JavaArrayAnnotationArgument) this.this$0.getFirstArgument()).getElements());
        } else if (firstArgument instanceof JavaEnumValueAnnotationArgument) {
            JavaAnnotationTargetMapper javaAnnotationTargetMapper = JavaAnnotationTargetMapper.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.this$0.getFirstArgument());
            constantValue = javaAnnotationTargetMapper.mapJavaTargetArguments$descriptors_jvm(listOf);
        } else {
            constantValue = null;
        }
        Map<Name, ? extends ConstantValue<? extends Object>> mapOf = constantValue != null ? MapsKt__MapsJVMKt.mapOf(TuplesKt.to(JavaAnnotationMapper.INSTANCE.getTARGET_ANNOTATION_ALLOWED_TARGETS$descriptors_jvm(), constantValue)) : null;
        if (mapOf == null) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            return emptyMap;
        }
        return mapOf;
    }
}
