package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaConstructor;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaClassMemberScope.kt */
/* loaded from: classes4.dex */
public final class LazyJavaClassMemberScope$constructors$1 extends Lambda implements Function0<List<? extends ClassConstructorDescriptor>> {
    final /* synthetic */ LazyJavaResolverContext $c;
    final /* synthetic */ LazyJavaClassMemberScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope$constructors$1(LazyJavaClassMemberScope lazyJavaClassMemberScope, LazyJavaResolverContext lazyJavaResolverContext) {
        super(0);
        this.this$0 = lazyJavaClassMemberScope;
        this.$c = lazyJavaResolverContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.List] */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends ClassConstructorDescriptor> invoke() {
        JavaClass javaClass;
        JavaClass javaClass2;
        List<? extends ClassConstructorDescriptor> list;
        ClassConstructorDescriptor createDefaultConstructor;
        ?? listOfNotNull;
        ClassConstructorDescriptor createDefaultRecordConstructor;
        JavaClass javaClass3;
        JavaClassConstructorDescriptor resolveConstructor;
        javaClass = this.this$0.jClass;
        Collection<JavaConstructor> constructors = javaClass.getConstructors();
        ArrayList<ClassConstructorDescriptor> arrayList = new ArrayList(constructors.size());
        for (JavaConstructor javaConstructor : constructors) {
            resolveConstructor = this.this$0.resolveConstructor(javaConstructor);
            arrayList.add(resolveConstructor);
        }
        javaClass2 = this.this$0.jClass;
        if (javaClass2.isRecord()) {
            createDefaultRecordConstructor = this.this$0.createDefaultRecordConstructor();
            boolean z9 = false;
            String computeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(createDefaultRecordConstructor, false, false, 2, null);
            if (!arrayList.isEmpty()) {
                for (ClassConstructorDescriptor classConstructorDescriptor : arrayList) {
                    if (Intrinsics.areEqual(MethodSignatureMappingKt.computeJvmDescriptor$default(classConstructorDescriptor, false, false, 2, null), computeJvmDescriptor$default)) {
                        break;
                    }
                }
            }
            z9 = true;
            if (z9) {
                arrayList.add(createDefaultRecordConstructor);
                JavaResolverCache javaResolverCache = this.$c.getComponents().getJavaResolverCache();
                javaClass3 = this.this$0.jClass;
                javaResolverCache.recordConstructor(javaClass3, createDefaultRecordConstructor);
            }
        }
        this.$c.getComponents().getSyntheticPartsProvider().generateConstructors(this.this$0.getOwnerDescriptor(), arrayList);
        SignatureEnhancement signatureEnhancement = this.$c.getComponents().getSignatureEnhancement();
        LazyJavaResolverContext lazyJavaResolverContext = this.$c;
        LazyJavaClassMemberScope lazyJavaClassMemberScope = this.this$0;
        boolean isEmpty = arrayList.isEmpty();
        ArrayList arrayList2 = arrayList;
        if (isEmpty) {
            createDefaultConstructor = lazyJavaClassMemberScope.createDefaultConstructor();
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(createDefaultConstructor);
            arrayList2 = listOfNotNull;
        }
        list = CollectionsKt___CollectionsKt.toList(signatureEnhancement.enhanceSignatures(lazyJavaResolverContext, arrayList2));
        return list;
    }
}
