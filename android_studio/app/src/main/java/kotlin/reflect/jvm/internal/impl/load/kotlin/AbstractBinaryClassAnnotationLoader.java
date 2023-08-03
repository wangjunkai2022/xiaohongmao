package kotlin.reflect.jvm.internal.impl.load.kotlin;

import com.fasterxml.jackson.core.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader.AnnotationsContainer;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;

/* compiled from: AbstractBinaryClassAnnotationLoader.kt */
/* loaded from: classes4.dex */
public abstract class AbstractBinaryClassAnnotationLoader<A, S extends AnnotationsContainer<? extends A>> implements AnnotationLoader<A> {
    @g
    private final KotlinClassFinder kotlinClassFinder;

    /* compiled from: AbstractBinaryClassAnnotationLoader.kt */
    /* loaded from: classes4.dex */
    public static abstract class AnnotationsContainer<A> {
        @g
        public abstract Map<MemberSignature, List<A>> getMemberAnnotations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBinaryClassAnnotationLoader.kt */
    /* loaded from: classes4.dex */
    public enum PropertyRelatedElement {
        PROPERTY,
        BACKING_FIELD,
        DELEGATE_FIELD
    }

    /* compiled from: AbstractBinaryClassAnnotationLoader.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 1;
            iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 2;
            iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AbstractBinaryClassAnnotationLoader(@g KotlinClassFinder kotlinClassFinder) {
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "kotlinClassFinder");
        this.kotlinClassFinder = kotlinClassFinder;
    }

    private final int computeJvmParameterIndexShift(ProtoContainer protoContainer, MessageLite messageLite) {
        if (messageLite instanceof ProtoBuf.Function) {
            if (ProtoTypeTableUtilKt.hasReceiver((ProtoBuf.Function) messageLite)) {
                return 1;
            }
        } else if (messageLite instanceof ProtoBuf.Property) {
            if (ProtoTypeTableUtilKt.hasReceiver((ProtoBuf.Property) messageLite)) {
                return 1;
            }
        } else if (messageLite instanceof ProtoBuf.Constructor) {
            Intrinsics.checkNotNull(protoContainer, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.ProtoContainer.Class");
            ProtoContainer.Class r42 = (ProtoContainer.Class) protoContainer;
            if (r42.getKind() == ProtoBuf.Class.Kind.ENUM_CLASS) {
                return 2;
            }
            if (r42.isInner()) {
                return 1;
            }
        } else {
            throw new UnsupportedOperationException("Unsupported message: " + messageLite.getClass());
        }
        return 0;
    }

    private final List<A> findClassAndLoadMemberAnnotations(ProtoContainer protoContainer, MemberSignature memberSignature, boolean z9, boolean z10, Boolean bool, boolean z11) {
        List<A> emptyList;
        List<A> emptyList2;
        KotlinJvmBinaryClass findClassWithAnnotationsAndInitializers = findClassWithAnnotationsAndInitializers(protoContainer, getSpecialCaseContainerClass(protoContainer, z9, z10, bool, z11));
        if (findClassWithAnnotationsAndInitializers == null) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        List<A> list = getAnnotationsContainer(findClassWithAnnotationsAndInitializers).getMemberAnnotations().get(memberSignature);
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }

    static /* synthetic */ List findClassAndLoadMemberAnnotations$default(AbstractBinaryClassAnnotationLoader abstractBinaryClassAnnotationLoader, ProtoContainer protoContainer, MemberSignature memberSignature, boolean z9, boolean z10, Boolean bool, boolean z11, int i4, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationLoader.findClassAndLoadMemberAnnotations(protoContainer, memberSignature, (i4 & 4) != 0 ? false : z9, (i4 & 8) != 0 ? false : z10, (i4 & 16) != 0 ? null : bool, (i4 & 32) != 0 ? false : z11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findClassAndLoadMemberAnnotations");
    }

    public static /* synthetic */ MemberSignature getCallableSignature$default(AbstractBinaryClassAnnotationLoader abstractBinaryClassAnnotationLoader, MessageLite messageLite, NameResolver nameResolver, TypeTable typeTable, AnnotatedCallableKind annotatedCallableKind, boolean z9, int i4, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationLoader.getCallableSignature(messageLite, nameResolver, typeTable, annotatedCallableKind, (i4 & 16) != 0 ? false : z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCallableSignature");
    }

    public static /* synthetic */ MemberSignature getPropertySignature$default(AbstractBinaryClassAnnotationLoader abstractBinaryClassAnnotationLoader, ProtoBuf.Property property, NameResolver nameResolver, TypeTable typeTable, boolean z9, boolean z10, boolean z11, int i4, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationLoader.getPropertySignature(property, nameResolver, typeTable, (i4 & 8) != 0 ? false : z9, (i4 & 16) != 0 ? false : z10, (i4 & 32) != 0 ? true : z11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPropertySignature");
    }

    private final List<A> loadPropertyAnnotations(ProtoContainer protoContainer, ProtoBuf.Property property, PropertyRelatedElement propertyRelatedElement) {
        boolean contains$default;
        List<A> emptyList;
        List<A> emptyList2;
        List<A> emptyList3;
        Boolean bool = Flags.IS_CONST.get(property.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_CONST.get(proto.flags)");
        boolean booleanValue = bool.booleanValue();
        boolean isMovedFromInterfaceCompanion = JvmProtoBufUtil.isMovedFromInterfaceCompanion(property);
        if (propertyRelatedElement == PropertyRelatedElement.PROPERTY) {
            MemberSignature propertySignature$default = getPropertySignature$default(this, property, protoContainer.getNameResolver(), protoContainer.getTypeTable(), false, true, false, 40, null);
            if (propertySignature$default == null) {
                emptyList3 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList3;
            }
            return findClassAndLoadMemberAnnotations$default(this, protoContainer, propertySignature$default, true, false, Boolean.valueOf(booleanValue), isMovedFromInterfaceCompanion, 8, null);
        }
        MemberSignature propertySignature$default2 = getPropertySignature$default(this, property, protoContainer.getNameResolver(), protoContainer.getTypeTable(), true, false, false, 48, null);
        if (propertySignature$default2 == null) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) propertySignature$default2.getSignature(), (CharSequence) "$delegate", false, 2, (Object) null);
        if (contains$default != (propertyRelatedElement == PropertyRelatedElement.DELEGATE_FIELD)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return findClassAndLoadMemberAnnotations(protoContainer, propertySignature$default2, true, true, Boolean.valueOf(booleanValue), isMovedFromInterfaceCompanion);
    }

    private final KotlinJvmBinaryClass toBinaryClass(ProtoContainer.Class r32) {
        SourceElement source = r32.getSource();
        KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = source instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) source : null;
        if (kotlinJvmBinarySourceElement != null) {
            return kotlinJvmBinarySourceElement.getBinaryClass();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final KotlinJvmBinaryClass findClassWithAnnotationsAndInitializers(@g ProtoContainer container, @h KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        Intrinsics.checkNotNullParameter(container, "container");
        if (kotlinJvmBinaryClass == null) {
            if (container instanceof ProtoContainer.Class) {
                return toBinaryClass((ProtoContainer.Class) container);
            }
            return null;
        }
        return kotlinJvmBinaryClass;
    }

    @g
    protected abstract S getAnnotationsContainer(@g KotlinJvmBinaryClass kotlinJvmBinaryClass);

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public byte[] getCachedFileContent(@g KotlinJvmBinaryClass kotlinClass) {
        Intrinsics.checkNotNullParameter(kotlinClass, "kotlinClass");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final MemberSignature getCallableSignature(@g MessageLite proto, @g NameResolver nameResolver, @g TypeTable typeTable, @g AnnotatedCallableKind kind, boolean z9) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        Intrinsics.checkNotNullParameter(kind, "kind");
        if (proto instanceof ProtoBuf.Constructor) {
            MemberSignature.Companion companion = MemberSignature.Companion;
            JvmMemberSignature.Method jvmConstructorSignature = JvmProtoBufUtil.INSTANCE.getJvmConstructorSignature((ProtoBuf.Constructor) proto, nameResolver, typeTable);
            if (jvmConstructorSignature == null) {
                return null;
            }
            return companion.fromJvmMemberSignature(jvmConstructorSignature);
        } else if (proto instanceof ProtoBuf.Function) {
            MemberSignature.Companion companion2 = MemberSignature.Companion;
            JvmMemberSignature.Method jvmMethodSignature = JvmProtoBufUtil.INSTANCE.getJvmMethodSignature((ProtoBuf.Function) proto, nameResolver, typeTable);
            if (jvmMethodSignature == null) {
                return null;
            }
            return companion2.fromJvmMemberSignature(jvmMethodSignature);
        } else if (proto instanceof ProtoBuf.Property) {
            GeneratedMessageLite.GeneratedExtension<ProtoBuf.Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.propertySignature;
            Intrinsics.checkNotNullExpressionValue(propertySignature, "propertySignature");
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.getExtensionOrNull((GeneratedMessageLite.ExtendableMessage) proto, propertySignature);
            if (jvmPropertySignature == null) {
                return null;
            }
            int i4 = WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
            if (i4 == 1) {
                if (jvmPropertySignature.hasGetter()) {
                    MemberSignature.Companion companion3 = MemberSignature.Companion;
                    JvmProtoBuf.JvmMethodSignature getter = jvmPropertySignature.getGetter();
                    Intrinsics.checkNotNullExpressionValue(getter, "signature.getter");
                    return companion3.fromMethod(nameResolver, getter);
                }
                return null;
            } else if (i4 != 2) {
                if (i4 != 3) {
                    return null;
                }
                return getPropertySignature((ProtoBuf.Property) proto, nameResolver, typeTable, true, true, z9);
            } else if (jvmPropertySignature.hasSetter()) {
                MemberSignature.Companion companion4 = MemberSignature.Companion;
                JvmProtoBuf.JvmMethodSignature setter = jvmPropertySignature.getSetter();
                Intrinsics.checkNotNullExpressionValue(setter, "signature.setter");
                return companion4.fromMethod(nameResolver, setter);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    @h
    protected final MemberSignature getPropertySignature(@g ProtoBuf.Property proto, @g NameResolver nameResolver, @g TypeTable typeTable, boolean z9, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        GeneratedMessageLite.GeneratedExtension<ProtoBuf.Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.propertySignature;
        Intrinsics.checkNotNullExpressionValue(propertySignature, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.getExtensionOrNull(proto, propertySignature);
        if (jvmPropertySignature == null) {
            return null;
        }
        if (z9) {
            JvmMemberSignature.Field jvmFieldSignature = JvmProtoBufUtil.INSTANCE.getJvmFieldSignature(proto, nameResolver, typeTable, z11);
            if (jvmFieldSignature == null) {
                return null;
            }
            return MemberSignature.Companion.fromJvmMemberSignature(jvmFieldSignature);
        } else if (z10 && jvmPropertySignature.hasSyntheticMethod()) {
            MemberSignature.Companion companion = MemberSignature.Companion;
            JvmProtoBuf.JvmMethodSignature syntheticMethod = jvmPropertySignature.getSyntheticMethod();
            Intrinsics.checkNotNullExpressionValue(syntheticMethod, "signature.syntheticMethod");
            return companion.fromMethod(nameResolver, syntheticMethod);
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final KotlinJvmBinaryClass getSpecialCaseContainerClass(@g ProtoContainer container, boolean z9, boolean z10, @h Boolean bool, boolean z11) {
        ProtoContainer.Class outerClass;
        String replace$default;
        Intrinsics.checkNotNullParameter(container, "container");
        if (z9) {
            if (bool != null) {
                if (container instanceof ProtoContainer.Class) {
                    ProtoContainer.Class r82 = (ProtoContainer.Class) container;
                    if (r82.getKind() == ProtoBuf.Class.Kind.INTERFACE) {
                        KotlinClassFinder kotlinClassFinder = this.kotlinClassFinder;
                        ClassId createNestedClassId = r82.getClassId().createNestedClassId(Name.identifier("DefaultImpls"));
                        Intrinsics.checkNotNullExpressionValue(createNestedClassId, "container.classId.create…EFAULT_IMPLS_CLASS_NAME))");
                        return KotlinClassFinderKt.findKotlinClass(kotlinClassFinder, createNestedClassId);
                    }
                }
                if (bool.booleanValue() && (container instanceof ProtoContainer.Package)) {
                    SourceElement source = container.getSource();
                    JvmPackagePartSource jvmPackagePartSource = source instanceof JvmPackagePartSource ? (JvmPackagePartSource) source : null;
                    JvmClassName facadeClassName = jvmPackagePartSource != null ? jvmPackagePartSource.getFacadeClassName() : null;
                    if (facadeClassName != null) {
                        KotlinClassFinder kotlinClassFinder2 = this.kotlinClassFinder;
                        String internalName = facadeClassName.getInternalName();
                        Intrinsics.checkNotNullExpressionValue(internalName, "facadeClassName.internalName");
                        replace$default = StringsKt__StringsJVMKt.replace$default(internalName, (char) e.f13819f, '.', false, 4, (Object) null);
                        ClassId classId = ClassId.topLevel(new FqName(replace$default));
                        Intrinsics.checkNotNullExpressionValue(classId, "topLevel(FqName(facadeCl…lName.replace('/', '.')))");
                        return KotlinClassFinderKt.findKotlinClass(kotlinClassFinder2, classId);
                    }
                }
            } else {
                throw new IllegalStateException(("isConst should not be null for property (container=" + container + ')').toString());
            }
        }
        if (z10 && (container instanceof ProtoContainer.Class)) {
            ProtoContainer.Class r83 = (ProtoContainer.Class) container;
            if (r83.getKind() == ProtoBuf.Class.Kind.COMPANION_OBJECT && (outerClass = r83.getOuterClass()) != null && (outerClass.getKind() == ProtoBuf.Class.Kind.CLASS || outerClass.getKind() == ProtoBuf.Class.Kind.ENUM_CLASS || (z11 && (outerClass.getKind() == ProtoBuf.Class.Kind.INTERFACE || outerClass.getKind() == ProtoBuf.Class.Kind.ANNOTATION_CLASS)))) {
                return toBinaryClass(outerClass);
            }
        }
        if ((container instanceof ProtoContainer.Package) && (container.getSource() instanceof JvmPackagePartSource)) {
            SourceElement source2 = container.getSource();
            Intrinsics.checkNotNull(source2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
            JvmPackagePartSource jvmPackagePartSource2 = (JvmPackagePartSource) source2;
            KotlinJvmBinaryClass knownJvmBinaryClass = jvmPackagePartSource2.getKnownJvmBinaryClass();
            return knownJvmBinaryClass == null ? KotlinClassFinderKt.findKotlinClass(this.kotlinClassFinder, jvmPackagePartSource2.getClassId()) : knownJvmBinaryClass;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isImplicitRepeatableContainer(@g ClassId classId) {
        KotlinJvmBinaryClass findKotlinClass;
        Intrinsics.checkNotNullParameter(classId, "classId");
        return classId.getOuterClassId() != null && Intrinsics.areEqual(classId.getShortClassName().asString(), "Container") && (findKotlinClass = KotlinClassFinderKt.findKotlinClass(this.kotlinClassFinder, classId)) != null && SpecialJvmAnnotations.INSTANCE.isAnnotatedWithContainerMetaAnnotation(findKotlinClass);
    }

    @h
    protected abstract KotlinJvmBinaryClass.AnnotationArgumentVisitor loadAnnotation(@g ClassId classId, @g SourceElement sourceElement, @g List<A> list);

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final KotlinJvmBinaryClass.AnnotationArgumentVisitor loadAnnotationIfNotSpecial(@g ClassId annotationClassId, @g SourceElement source, @g List<A> result) {
        Intrinsics.checkNotNullParameter(annotationClassId, "annotationClassId");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(result, "result");
        if (SpecialJvmAnnotations.INSTANCE.getSPECIAL_ANNOTATIONS().contains(annotationClassId)) {
            return null;
        }
        return loadAnnotation(annotationClassId, source, result);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadCallableAnnotations(@g ProtoContainer container, @g MessageLite proto, @g AnnotatedCallableKind kind) {
        List<A> emptyList;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(kind, "kind");
        if (kind == AnnotatedCallableKind.PROPERTY) {
            return loadPropertyAnnotations(container, (ProtoBuf.Property) proto, PropertyRelatedElement.PROPERTY);
        }
        MemberSignature callableSignature$default = getCallableSignature$default(this, proto, container.getNameResolver(), container.getTypeTable(), kind, false, 16, null);
        if (callableSignature$default == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return findClassAndLoadMemberAnnotations$default(this, container, callableSignature$default, false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadClassAnnotations(@g ProtoContainer.Class container) {
        Intrinsics.checkNotNullParameter(container, "container");
        KotlinJvmBinaryClass binaryClass = toBinaryClass(container);
        if (binaryClass != null) {
            final ArrayList arrayList = new ArrayList(1);
            binaryClass.loadClassAnnotations(new KotlinJvmBinaryClass.AnnotationVisitor(this) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader$loadClassAnnotations$1
                final /* synthetic */ AbstractBinaryClassAnnotationLoader<A, S> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.this$0 = this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
                @h
                public KotlinJvmBinaryClass.AnnotationArgumentVisitor visitAnnotation(@g ClassId classId, @g SourceElement source) {
                    Intrinsics.checkNotNullParameter(classId, "classId");
                    Intrinsics.checkNotNullParameter(source, "source");
                    return this.this$0.loadAnnotationIfNotSpecial(classId, source, arrayList);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
                public void visitEnd() {
                }
            }, getCachedFileContent(binaryClass));
            return arrayList;
        }
        throw new IllegalStateException(("Class for loading annotations is not found: " + container.debugFqName()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadEnumEntryAnnotations(@g ProtoContainer container, @g ProtoBuf.EnumEntry proto) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        MemberSignature.Companion companion = MemberSignature.Companion;
        String string = container.getNameResolver().getString(proto.getName());
        String asString = ((ProtoContainer.Class) container).getClassId().asString();
        Intrinsics.checkNotNullExpressionValue(asString, "container as ProtoContai…Class).classId.asString()");
        return findClassAndLoadMemberAnnotations$default(this, container, companion.fromFieldNameAndDesc(string, ClassMapperLite.mapClass(asString)), false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadExtensionReceiverParameterAnnotations(@g ProtoContainer container, @g MessageLite proto, @g AnnotatedCallableKind kind) {
        List<A> emptyList;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(kind, "kind");
        MemberSignature callableSignature$default = getCallableSignature$default(this, proto, container.getNameResolver(), container.getTypeTable(), kind, false, 16, null);
        if (callableSignature$default != null) {
            return findClassAndLoadMemberAnnotations$default(this, container, MemberSignature.Companion.fromMethodSignatureAndParameterIndex(callableSignature$default, 0), false, false, null, false, 60, null);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadPropertyBackingFieldAnnotations(@g ProtoContainer container, @g ProtoBuf.Property proto) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        return loadPropertyAnnotations(container, proto, PropertyRelatedElement.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadPropertyDelegateFieldAnnotations(@g ProtoContainer container, @g ProtoBuf.Property proto) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        return loadPropertyAnnotations(container, proto, PropertyRelatedElement.DELEGATE_FIELD);
    }

    @g
    protected abstract A loadTypeAnnotation(@g ProtoBuf.Annotation annotation, @g NameResolver nameResolver);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadTypeAnnotations(@g ProtoBuf.Type proto, @g NameResolver nameResolver) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Object extension = proto.getExtension(JvmProtoBuf.typeAnnotation);
        Intrinsics.checkNotNullExpressionValue(extension, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<ProtoBuf.Annotation> iterable = (Iterable) extension;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation it : iterable) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(loadTypeAnnotation(it, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadTypeParameterAnnotations(@g ProtoBuf.TypeParameter proto, @g NameResolver nameResolver) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Object extension = proto.getExtension(JvmProtoBuf.typeParameterAnnotation);
        Intrinsics.checkNotNullExpressionValue(extension, "proto.getExtension(JvmPr….typeParameterAnnotation)");
        Iterable<ProtoBuf.Annotation> iterable = (Iterable) extension;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation it : iterable) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(loadTypeAnnotation(it, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<A> loadValueParameterAnnotations(@g ProtoContainer container, @g MessageLite callableProto, @g AnnotatedCallableKind kind, int i4, @g ProtoBuf.ValueParameter proto) {
        List<A> emptyList;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(callableProto, "callableProto");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(proto, "proto");
        MemberSignature callableSignature$default = getCallableSignature$default(this, callableProto, container.getNameResolver(), container.getTypeTable(), kind, false, 16, null);
        if (callableSignature$default != null) {
            return findClassAndLoadMemberAnnotations$default(this, container, MemberSignature.Companion.fromMethodSignatureAndParameterIndex(callableSignature$default, i4 + computeJvmParameterIndexShift(container, callableProto)), false, false, null, false, 60, null);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }
}
