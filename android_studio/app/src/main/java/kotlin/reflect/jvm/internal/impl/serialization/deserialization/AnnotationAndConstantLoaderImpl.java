package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.serialization.SerializerExtensionProtocol;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: AnnotationAndConstantLoaderImpl.kt */
/* loaded from: classes4.dex */
public final class AnnotationAndConstantLoaderImpl implements AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> {
    @g
    private final AnnotationDeserializer deserializer;
    @g
    private final SerializerExtensionProtocol protocol;

    /* compiled from: AnnotationAndConstantLoaderImpl.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 1;
            iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 2;
            iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AnnotationAndConstantLoaderImpl(@g ModuleDescriptor module, @g NotFoundClasses notFoundClasses, @g SerializerExtensionProtocol protocol) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        this.protocol = protocol;
        this.deserializer = new AnnotationDeserializer(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    @h
    public ConstantValue<?> loadAnnotationDefaultValue(@g ProtoContainer container, @g ProtoBuf.Property proto, @g KotlinType expectedType) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(expectedType, "expectedType");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadCallableAnnotations(@g ProtoContainer container, @g MessageLite proto, @g AnnotatedCallableKind kind) {
        List<ProtoBuf.Annotation> list;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(kind, "kind");
        if (proto instanceof ProtoBuf.Constructor) {
            list = (List) ((ProtoBuf.Constructor) proto).getExtension(this.protocol.getConstructorAnnotation());
        } else if (proto instanceof ProtoBuf.Function) {
            list = (List) ((ProtoBuf.Function) proto).getExtension(this.protocol.getFunctionAnnotation());
        } else if (!(proto instanceof ProtoBuf.Property)) {
            throw new IllegalStateException(("Unknown message: " + proto).toString());
        } else {
            int i4 = WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
            if (i4 == 1) {
                list = (List) ((ProtoBuf.Property) proto).getExtension(this.protocol.getPropertyAnnotation());
            } else if (i4 == 2) {
                list = (List) ((ProtoBuf.Property) proto).getExtension(this.protocol.getPropertyGetterAnnotation());
            } else if (i4 == 3) {
                list = (List) ((ProtoBuf.Property) proto).getExtension(this.protocol.getPropertySetterAnnotation());
            } else {
                throw new IllegalStateException("Unsupported callable kind with property proto".toString());
            }
        }
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation annotation : list) {
            arrayList.add(this.deserializer.deserializeAnnotation(annotation, container.getNameResolver()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadClassAnnotations(@g ProtoContainer.Class container) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(container, "container");
        List<ProtoBuf.Annotation> list = (List) container.getClassProto().getExtension(this.protocol.getClassAnnotation());
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation annotation : list) {
            arrayList.add(this.deserializer.deserializeAnnotation(annotation, container.getNameResolver()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadEnumEntryAnnotations(@g ProtoContainer container, @g ProtoBuf.EnumEntry proto) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        List<ProtoBuf.Annotation> list = (List) proto.getExtension(this.protocol.getEnumEntryAnnotation());
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation annotation : list) {
            arrayList.add(this.deserializer.deserializeAnnotation(annotation, container.getNameResolver()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadExtensionReceiverParameterAnnotations(@g ProtoContainer container, @g MessageLite proto, @g AnnotatedCallableKind kind) {
        List<AnnotationDescriptor> emptyList;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(kind, "kind");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadPropertyBackingFieldAnnotations(@g ProtoContainer container, @g ProtoBuf.Property proto) {
        List<AnnotationDescriptor> emptyList;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadPropertyDelegateFieldAnnotations(@g ProtoContainer container, @g ProtoBuf.Property proto) {
        List<AnnotationDescriptor> emptyList;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadTypeAnnotations(@g ProtoBuf.Type proto, @g NameResolver nameResolver) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        List<ProtoBuf.Annotation> list = (List) proto.getExtension(this.protocol.getTypeAnnotation());
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation annotation : list) {
            arrayList.add(this.deserializer.deserializeAnnotation(annotation, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadTypeParameterAnnotations(@g ProtoBuf.TypeParameter proto, @g NameResolver nameResolver) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        List<ProtoBuf.Annotation> list = (List) proto.getExtension(this.protocol.getTypeParameterAnnotation());
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation annotation : list) {
            arrayList.add(this.deserializer.deserializeAnnotation(annotation, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    @g
    public List<AnnotationDescriptor> loadValueParameterAnnotations(@g ProtoContainer container, @g MessageLite callableProto, @g AnnotatedCallableKind kind, int i4, @g ProtoBuf.ValueParameter proto) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(callableProto, "callableProto");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(proto, "proto");
        List<ProtoBuf.Annotation> list = (List) proto.getExtension(this.protocol.getParameterAnnotation());
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Annotation annotation : list) {
            arrayList.add(this.deserializer.deserializeAnnotation(annotation, container.getNameResolver()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    @h
    public ConstantValue<?> loadPropertyConstant(@g ProtoContainer container, @g ProtoBuf.Property proto, @g KotlinType expectedType) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(expectedType, "expectedType");
        ProtoBuf.Annotation.Argument.Value value = (ProtoBuf.Annotation.Argument.Value) ProtoBufUtilKt.getExtensionOrNull(proto, this.protocol.getCompileTimeValue());
        if (value == null) {
            return null;
        }
        return this.deserializer.resolveValue(expectedType, value, container.getNameResolver());
    }
}
