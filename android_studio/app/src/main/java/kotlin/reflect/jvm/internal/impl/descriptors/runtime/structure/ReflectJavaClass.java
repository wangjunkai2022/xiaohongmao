package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaModifierListOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaClass.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaClass extends ReflectJavaElement implements ReflectJavaAnnotationOwner, ReflectJavaModifierListOwner, JavaClass {
    @g
    private final Class<?> klass;

    public ReflectJavaClass(@g Class<?> klass) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        this.klass = klass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isEnumValuesOrValueOf(Method method) {
        String name = method.getName();
        if (Intrinsics.areEqual(name, "values")) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes, "method.parameterTypes");
            if (parameterTypes.length == 0) {
                return true;
            }
        } else if (Intrinsics.areEqual(name, "valueOf")) {
            return Arrays.equals(method.getParameterTypes(), new Class[]{String.class});
        }
        return false;
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof ReflectJavaClass) && Intrinsics.areEqual(this.klass, ((ReflectJavaClass) obj).klass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    @h
    public ReflectJavaAnnotation findAnnotation(@g FqName fqName) {
        return ReflectJavaAnnotationOwner.DefaultImpls.findAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public FqName getFqName() {
        FqName asSingleFqName = ReflectClassUtilKt.getClassId(this.klass).asSingleFqName();
        Intrinsics.checkNotNullExpressionValue(asSingleFqName, "klass.classId.asSingleFqName()");
        return asSingleFqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @h
    public LightClassOriginKind getLightClassOriginKind() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaModifierListOwner
    public int getModifiers() {
        return this.klass.getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaNamedElement
    @g
    public Name getName() {
        Name identifier = Name.identifier(this.klass.getSimpleName());
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(klass.simpleName)");
        return identifier;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public Collection<JavaClassifierType> getPermittedTypes() {
        List emptyList;
        Class<?>[] loadGetPermittedSubclasses = Java16SealedRecordLoader.INSTANCE.loadGetPermittedSubclasses(this.klass);
        if (loadGetPermittedSubclasses != null) {
            ArrayList arrayList = new ArrayList(loadGetPermittedSubclasses.length);
            for (Class<?> cls : loadGetPermittedSubclasses) {
                arrayList.add(new ReflectJavaClassifierType(cls));
            }
            return arrayList;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public Collection<JavaRecordComponent> getRecordComponents() {
        Object[] loadGetRecordComponents = Java16SealedRecordLoader.INSTANCE.loadGetRecordComponents(this.klass);
        if (loadGetRecordComponents == null) {
            loadGetRecordComponents = new Object[0];
        }
        ArrayList arrayList = new ArrayList(loadGetRecordComponents.length);
        for (Object obj : loadGetRecordComponents) {
            arrayList.add(new ReflectJavaRecordComponent(obj));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public Collection<JavaClassifierType> getSupertypes() {
        Class cls;
        List<Type> listOf;
        int collectionSizeOrDefault;
        List emptyList;
        cls = Object.class;
        if (Intrinsics.areEqual(this.klass, cls)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        Object genericSuperclass = this.klass.getGenericSuperclass();
        spreadBuilder.add(genericSuperclass != null ? genericSuperclass : Object.class);
        Type[] genericInterfaces = this.klass.getGenericInterfaces();
        Intrinsics.checkNotNullExpressionValue(genericInterfaces, "klass.genericInterfaces");
        spreadBuilder.addSpread(genericInterfaces);
        listOf = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new Type[spreadBuilder.size()]));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Type type : listOf) {
            arrayList.add(new ReflectJavaClassifierType(type));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner
    @g
    public List<ReflectJavaTypeParameter> getTypeParameters() {
        TypeVariable<Class<?>>[] typeParameters = this.klass.getTypeParameters();
        Intrinsics.checkNotNullExpressionValue(typeParameters, "klass.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Class<?>> typeVariable : typeParameters) {
            arrayList.add(new ReflectJavaTypeParameter(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    @g
    public Visibility getVisibility() {
        return ReflectJavaModifierListOwner.DefaultImpls.getVisibility(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public boolean hasDefaultConstructor() {
        return false;
    }

    public int hashCode() {
        return this.klass.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public boolean isAbstract() {
        return ReflectJavaModifierListOwner.DefaultImpls.isAbstract(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public boolean isAnnotationType() {
        return this.klass.isAnnotation();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public boolean isDeprecatedInJavaDoc() {
        return ReflectJavaAnnotationOwner.DefaultImpls.isDeprecatedInJavaDoc(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public boolean isEnum() {
        return this.klass.isEnum();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public boolean isFinal() {
        return ReflectJavaModifierListOwner.DefaultImpls.isFinal(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public boolean isInterface() {
        return this.klass.isInterface();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public boolean isRecord() {
        Boolean loadIsRecord = Java16SealedRecordLoader.INSTANCE.loadIsRecord(this.klass);
        if (loadIsRecord != null) {
            return loadIsRecord.booleanValue();
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public boolean isSealed() {
        Boolean loadIsSealed = Java16SealedRecordLoader.INSTANCE.loadIsSealed(this.klass);
        if (loadIsSealed != null) {
            return loadIsSealed.booleanValue();
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public boolean isStatic() {
        return ReflectJavaModifierListOwner.DefaultImpls.isStatic(this);
    }

    @g
    public String toString() {
        return ReflectJavaClass.class.getName() + ": " + this.klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    @g
    public List<ReflectJavaAnnotation> getAnnotations() {
        return ReflectJavaAnnotationOwner.DefaultImpls.getAnnotations(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public List<ReflectJavaConstructor> getConstructors() {
        Sequence asSequence;
        Sequence filterNot;
        Sequence map;
        List<ReflectJavaConstructor> list;
        Constructor<?>[] declaredConstructors = this.klass.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "klass.declaredConstructors");
        asSequence = ArraysKt___ArraysKt.asSequence(declaredConstructors);
        filterNot = SequencesKt___SequencesKt.filterNot(asSequence, ReflectJavaClass$constructors$1.INSTANCE);
        map = SequencesKt___SequencesKt.map(filterNot, ReflectJavaClass$constructors$2.INSTANCE);
        list = SequencesKt___SequencesKt.toList(map);
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner
    @g
    public Class<?> getElement() {
        return this.klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public List<ReflectJavaField> getFields() {
        Sequence asSequence;
        Sequence filterNot;
        Sequence map;
        List<ReflectJavaField> list;
        Field[] declaredFields = this.klass.getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "klass.declaredFields");
        asSequence = ArraysKt___ArraysKt.asSequence(declaredFields);
        filterNot = SequencesKt___SequencesKt.filterNot(asSequence, ReflectJavaClass$fields$1.INSTANCE);
        map = SequencesKt___SequencesKt.map(filterNot, ReflectJavaClass$fields$2.INSTANCE);
        list = SequencesKt___SequencesKt.toList(map);
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public List<Name> getInnerClassNames() {
        Sequence asSequence;
        Sequence filterNot;
        Sequence mapNotNull;
        List<Name> list;
        Class<?>[] declaredClasses = this.klass.getDeclaredClasses();
        Intrinsics.checkNotNullExpressionValue(declaredClasses, "klass.declaredClasses");
        asSequence = ArraysKt___ArraysKt.asSequence(declaredClasses);
        filterNot = SequencesKt___SequencesKt.filterNot(asSequence, ReflectJavaClass$innerClassNames$1.INSTANCE);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(filterNot, ReflectJavaClass$innerClassNames$2.INSTANCE);
        list = SequencesKt___SequencesKt.toList(mapNotNull);
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @g
    public List<ReflectJavaMethod> getMethods() {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        List<ReflectJavaMethod> list;
        Method[] declaredMethods = this.klass.getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "klass.declaredMethods");
        asSequence = ArraysKt___ArraysKt.asSequence(declaredMethods);
        filter = SequencesKt___SequencesKt.filter(asSequence, new ReflectJavaClass$methods$1(this));
        map = SequencesKt___SequencesKt.map(filter, ReflectJavaClass$methods$2.INSTANCE);
        list = SequencesKt___SequencesKt.toList(map);
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    @h
    public ReflectJavaClass getOuterClass() {
        Class<?> declaringClass = this.klass.getDeclaringClass();
        if (declaringClass != null) {
            return new ReflectJavaClass(declaringClass);
        }
        return null;
    }
}
