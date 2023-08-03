package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: ProtoContainer.kt */
/* loaded from: classes4.dex */
public abstract class ProtoContainer {
    @g
    private final NameResolver nameResolver;
    @h
    private final SourceElement source;
    @g
    private final TypeTable typeTable;

    /* compiled from: ProtoContainer.kt */
    /* loaded from: classes4.dex */
    public static final class Class extends ProtoContainer {
        @g
        private final ClassId classId;
        @g
        private final ProtoBuf.Class classProto;
        private final boolean isInner;
        @g
        private final ProtoBuf.Class.Kind kind;
        @h
        private final Class outerClass;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Class(@g ProtoBuf.Class classProto, @g NameResolver nameResolver, @g TypeTable typeTable, @h SourceElement sourceElement, @h Class r62) {
            super(nameResolver, typeTable, sourceElement, null);
            Intrinsics.checkNotNullParameter(classProto, "classProto");
            Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
            Intrinsics.checkNotNullParameter(typeTable, "typeTable");
            this.classProto = classProto;
            this.outerClass = r62;
            this.classId = NameResolverUtilKt.getClassId(nameResolver, classProto.getFqName());
            ProtoBuf.Class.Kind kind = Flags.CLASS_KIND.get(classProto.getFlags());
            this.kind = kind == null ? ProtoBuf.Class.Kind.CLASS : kind;
            Boolean bool = Flags.IS_INNER.get(classProto.getFlags());
            Intrinsics.checkNotNullExpressionValue(bool, "IS_INNER.get(classProto.flags)");
            this.isInner = bool.booleanValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer
        @g
        public FqName debugFqName() {
            FqName asSingleFqName = this.classId.asSingleFqName();
            Intrinsics.checkNotNullExpressionValue(asSingleFqName, "classId.asSingleFqName()");
            return asSingleFqName;
        }

        @g
        public final ClassId getClassId() {
            return this.classId;
        }

        @g
        public final ProtoBuf.Class getClassProto() {
            return this.classProto;
        }

        @g
        public final ProtoBuf.Class.Kind getKind() {
            return this.kind;
        }

        @h
        public final Class getOuterClass() {
            return this.outerClass;
        }

        public final boolean isInner() {
            return this.isInner;
        }
    }

    /* compiled from: ProtoContainer.kt */
    /* loaded from: classes4.dex */
    public static final class Package extends ProtoContainer {
        @g
        private final FqName fqName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Package(@g FqName fqName, @g NameResolver nameResolver, @g TypeTable typeTable, @h SourceElement sourceElement) {
            super(nameResolver, typeTable, sourceElement, null);
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
            Intrinsics.checkNotNullParameter(typeTable, "typeTable");
            this.fqName = fqName;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer
        @g
        public FqName debugFqName() {
            return this.fqName;
        }
    }

    private ProtoContainer(NameResolver nameResolver, TypeTable typeTable, SourceElement sourceElement) {
        this.nameResolver = nameResolver;
        this.typeTable = typeTable;
        this.source = sourceElement;
    }

    public /* synthetic */ ProtoContainer(NameResolver nameResolver, TypeTable typeTable, SourceElement sourceElement, DefaultConstructorMarker defaultConstructorMarker) {
        this(nameResolver, typeTable, sourceElement);
    }

    @g
    public abstract FqName debugFqName();

    @g
    public final NameResolver getNameResolver() {
        return this.nameResolver;
    }

    @h
    public final SourceElement getSource() {
        return this.source;
    }

    @g
    public final TypeTable getTypeTable() {
        return this.typeTable;
    }

    @g
    public String toString() {
        return getClass().getSimpleName() + ": " + debugFqName();
    }
}
