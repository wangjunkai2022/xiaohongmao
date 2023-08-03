package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
/* loaded from: classes4.dex */
public abstract class AbstractBinaryClassAnnotationAndConstantLoader<A, C> extends AbstractBinaryClassAnnotationLoader<A, AnnotationsContainerWithConstants<? extends A, ? extends C>> implements AnnotationAndConstantLoader<A, C> {
    @g
    private final MemoizedFunctionToNotNull<KotlinJvmBinaryClass, AnnotationsContainerWithConstants<A, C>> storage;

    /* compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    /* loaded from: classes4.dex */
    public static final class AnnotationsContainerWithConstants<A, C> extends AbstractBinaryClassAnnotationLoader.AnnotationsContainer<A> {
        @g
        private final Map<MemberSignature, C> annotationParametersDefaultValues;
        @g
        private final Map<MemberSignature, List<A>> memberAnnotations;
        @g
        private final Map<MemberSignature, C> propertyConstants;

        /* JADX WARN: Multi-variable type inference failed */
        public AnnotationsContainerWithConstants(@g Map<MemberSignature, ? extends List<? extends A>> memberAnnotations, @g Map<MemberSignature, ? extends C> propertyConstants, @g Map<MemberSignature, ? extends C> annotationParametersDefaultValues) {
            Intrinsics.checkNotNullParameter(memberAnnotations, "memberAnnotations");
            Intrinsics.checkNotNullParameter(propertyConstants, "propertyConstants");
            Intrinsics.checkNotNullParameter(annotationParametersDefaultValues, "annotationParametersDefaultValues");
            this.memberAnnotations = memberAnnotations;
            this.propertyConstants = propertyConstants;
            this.annotationParametersDefaultValues = annotationParametersDefaultValues;
        }

        @g
        public final Map<MemberSignature, C> getAnnotationParametersDefaultValues() {
            return this.annotationParametersDefaultValues;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader.AnnotationsContainer
        @g
        public Map<MemberSignature, List<A>> getMemberAnnotations() {
            return this.memberAnnotations;
        }

        @g
        public final Map<MemberSignature, C> getPropertyConstants() {
            return this.propertyConstants;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractBinaryClassAnnotationAndConstantLoader(@g StorageManager storageManager, @g KotlinClassFinder kotlinClassFinder) {
        super(kotlinClassFinder);
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "kotlinClassFinder");
        this.storage = storageManager.createMemoizedFunction(new AbstractBinaryClassAnnotationAndConstantLoader$storage$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationsContainerWithConstants<A, C> loadAnnotationsAndInitializers(final KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        final HashMap hashMap = new HashMap();
        final HashMap hashMap2 = new HashMap();
        final HashMap hashMap3 = new HashMap();
        kotlinJvmBinaryClass.visitMembers(new KotlinJvmBinaryClass.MemberVisitor(this) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1
            final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader<A, C> this$0;

            /* compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
            /* loaded from: classes4.dex */
            public final class AnnotationVisitorForMethod extends MemberAnnotationVisitor implements KotlinJvmBinaryClass.MethodAnnotationVisitor {
                final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnnotationVisitorForMethod(@g AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, MemberSignature signature) {
                    super(abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, signature);
                    Intrinsics.checkNotNullParameter(signature, "signature");
                    this.this$0 = abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.MethodAnnotationVisitor
                @h
                public KotlinJvmBinaryClass.AnnotationArgumentVisitor visitParameterAnnotation(int i4, @g ClassId classId, @g SourceElement source) {
                    Intrinsics.checkNotNullParameter(classId, "classId");
                    Intrinsics.checkNotNullParameter(source, "source");
                    MemberSignature fromMethodSignatureAndParameterIndex = MemberSignature.Companion.fromMethodSignatureAndParameterIndex(getSignature(), i4);
                    Collection collection = (List) hashMap.get(fromMethodSignatureAndParameterIndex);
                    if (collection == null) {
                        collection = new ArrayList();
                        hashMap.put(fromMethodSignatureAndParameterIndex, collection);
                    }
                    return this.this$0.this$0.loadAnnotationIfNotSpecial(classId, source, collection);
                }
            }

            /* compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
            /* loaded from: classes4.dex */
            public class MemberAnnotationVisitor implements KotlinJvmBinaryClass.AnnotationVisitor {
                @g
                private final ArrayList<A> result;
                @g
                private final MemberSignature signature;
                final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 this$0;

                public MemberAnnotationVisitor(@g AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, MemberSignature signature) {
                    Intrinsics.checkNotNullParameter(signature, "signature");
                    this.this$0 = abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;
                    this.signature = signature;
                    this.result = new ArrayList<>();
                }

                @g
                protected final MemberSignature getSignature() {
                    return this.signature;
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
                @h
                public KotlinJvmBinaryClass.AnnotationArgumentVisitor visitAnnotation(@g ClassId classId, @g SourceElement source) {
                    Intrinsics.checkNotNullParameter(classId, "classId");
                    Intrinsics.checkNotNullParameter(source, "source");
                    return this.this$0.this$0.loadAnnotationIfNotSpecial(classId, source, this.result);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
                public void visitEnd() {
                    if (!this.result.isEmpty()) {
                        hashMap.put(this.signature, this.result);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.MemberVisitor
            @h
            public KotlinJvmBinaryClass.AnnotationVisitor visitField(@g Name name, @g String desc, @h Object obj) {
                Object loadConstant;
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(desc, "desc");
                MemberSignature.Companion companion = MemberSignature.Companion;
                String asString = name.asString();
                Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
                MemberSignature fromFieldNameAndDesc = companion.fromFieldNameAndDesc(asString, desc);
                if (obj != null && (loadConstant = this.this$0.loadConstant(desc, obj)) != null) {
                    hashMap2.put(fromFieldNameAndDesc, loadConstant);
                }
                return new MemberAnnotationVisitor(this, fromFieldNameAndDesc);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.MemberVisitor
            @h
            public KotlinJvmBinaryClass.MethodAnnotationVisitor visitMethod(@g Name name, @g String desc) {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(desc, "desc");
                MemberSignature.Companion companion = MemberSignature.Companion;
                String asString = name.asString();
                Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
                return new AnnotationVisitorForMethod(this, companion.fromMethodNameAndDesc(asString, desc));
            }
        }, getCachedFileContent(kotlinJvmBinaryClass));
        return new AnnotationsContainerWithConstants<>(hashMap, hashMap2, hashMap3);
    }

    private final C loadConstantFromProperty(ProtoContainer protoContainer, ProtoBuf.Property property, AnnotatedCallableKind annotatedCallableKind, KotlinType kotlinType, Function2<? super AnnotationsContainerWithConstants<? extends A, ? extends C>, ? super MemberSignature, ? extends C> function2) {
        C invoke;
        KotlinJvmBinaryClass findClassWithAnnotationsAndInitializers = findClassWithAnnotationsAndInitializers(protoContainer, getSpecialCaseContainerClass(protoContainer, true, true, Flags.IS_CONST.get(property.getFlags()), JvmProtoBufUtil.isMovedFromInterfaceCompanion(property)));
        if (findClassWithAnnotationsAndInitializers == null) {
            return null;
        }
        MemberSignature callableSignature = getCallableSignature(property, protoContainer.getNameResolver(), protoContainer.getTypeTable(), annotatedCallableKind, findClassWithAnnotationsAndInitializers.getClassHeader().getMetadataVersion().isAtLeast(DeserializedDescriptorResolver.Companion.getKOTLIN_1_3_RC_METADATA_VERSION$descriptors_jvm()));
        if (callableSignature == null || (invoke = function2.invoke(this.storage.invoke(findClassWithAnnotationsAndInitializers), callableSignature)) == null) {
            return null;
        }
        return UnsignedTypes.isUnsignedType(kotlinType) ? transformToUnsignedConstant(invoke) : invoke;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isRepeatableWithImplicitContainer(@g ClassId annotationClassId, @g Map<Name, ? extends ConstantValue<?>> arguments) {
        Intrinsics.checkNotNullParameter(annotationClassId, "annotationClassId");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        if (Intrinsics.areEqual(annotationClassId, SpecialJvmAnnotations.INSTANCE.getJAVA_LANG_ANNOTATION_REPEATABLE())) {
            ConstantValue<?> constantValue = arguments.get(Name.identifier("value"));
            KClassValue kClassValue = constantValue instanceof KClassValue ? (KClassValue) constantValue : null;
            if (kClassValue == null) {
                return false;
            }
            KClassValue.Value value = kClassValue.getValue();
            KClassValue.Value.NormalClass normalClass = value instanceof KClassValue.Value.NormalClass ? (KClassValue.Value.NormalClass) value : null;
            if (normalClass == null) {
                return false;
            }
            return isImplicitRepeatableContainer(normalClass.getClassId());
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    @h
    public C loadAnnotationDefaultValue(@g ProtoContainer container, @g ProtoBuf.Property proto, @g KotlinType expectedType) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(expectedType, "expectedType");
        return loadConstantFromProperty(container, proto, AnnotatedCallableKind.PROPERTY_GETTER, expectedType, AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationDefaultValue$1.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public abstract C loadConstant(@g String str, @g Object obj);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    @h
    public C loadPropertyConstant(@g ProtoContainer container, @g ProtoBuf.Property proto, @g KotlinType expectedType) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(expectedType, "expectedType");
        return loadConstantFromProperty(container, proto, AnnotatedCallableKind.PROPERTY, expectedType, AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1.INSTANCE);
    }

    @h
    protected abstract C transformToUnsignedConstant(@g C c10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader
    @g
    public AnnotationsContainerWithConstants<A, C> getAnnotationsContainer(@g KotlinJvmBinaryClass binaryClass) {
        Intrinsics.checkNotNullParameter(binaryClass, "binaryClass");
        return this.storage.invoke(binaryClass);
    }
}
