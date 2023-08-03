package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaClassDescriptor.kt */
/* loaded from: classes4.dex */
public final class LazyJavaClassDescriptor$declaredParameters$1 extends Lambda implements Function0<List<? extends TypeParameterDescriptor>> {
    final /* synthetic */ LazyJavaClassDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor$declaredParameters$1(LazyJavaClassDescriptor lazyJavaClassDescriptor) {
        super(0);
        this.this$0 = lazyJavaClassDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends TypeParameterDescriptor> invoke() {
        int collectionSizeOrDefault;
        List<JavaTypeParameter> typeParameters = this.this$0.getJClass().getTypeParameters();
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.this$0;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (JavaTypeParameter javaTypeParameter : typeParameters) {
            TypeParameterDescriptor resolveTypeParameter = lazyJavaClassDescriptor.f84759c.getTypeParameterResolver().resolveTypeParameter(javaTypeParameter);
            if (resolveTypeParameter == null) {
                throw new AssertionError("Parameter " + javaTypeParameter + " surely belongs to class " + lazyJavaClassDescriptor.getJClass() + ", so it must be resolved");
            }
            arrayList.add(resolveTypeParameter);
        }
        return arrayList;
    }
}
