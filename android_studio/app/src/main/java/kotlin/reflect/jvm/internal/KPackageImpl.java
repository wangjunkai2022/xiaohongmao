package kotlin.reflect.jvm.internal;

import com.google.android.exoplayer2.text.ttml.d;
import com.im.freechat.ui.create.choosemember.h;
import com.ksyun.media.player.e.b;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import m8.g;

/* compiled from: KPackageImpl.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001,B\u001d\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\b2\u0006\u0010#\u001a\u00020$H\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020&0\b2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020\u0005H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0018\u0012\u0014\u0012\u0012 \u000f*\b\u0018\u00010\u000eR\u00020\u00000\u000eR\u00020\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0018\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00038TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "jClass", "Ljava/lang/Class;", "usageModuleName", "", "(Ljava/lang/Class;Ljava/lang/String;)V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "kotlin.jvm.PlatformType", "getJClass", "()Ljava/lang/Class;", h.f43540d, "Lkotlin/reflect/KCallable;", "getMembers", "methodOwner", "getMethodOwner", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "getUsageModuleName", "()Ljava/lang/String;", "equals", "", "other", "", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "name", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "toString", b.f45488a, "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KPackageImpl extends KDeclarationContainerImpl {
    @g
    private final ReflectProperties.LazyVal<Data> data;
    @g
    private final Class<?> jClass;
    @m8.h
    private final String usageModuleName;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: KPackageImpl.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R%\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\t\u001a\u0004\b\r\u0010\u000eR/\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R!\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\t\u001a\u0004\b \u0010!¨\u0006#"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V", "kotlinClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;", "getKotlinClass", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;", "kotlinClass$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", h.f43540d, "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getMembers", "()Ljava/util/Collection;", "members$delegate", d.f25744y, "Lkotlin/Triple;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;", "getMetadata", "()Lkotlin/Triple;", "metadata$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "multifileFacade", "Ljava/lang/Class;", "getMultifileFacade", "()Ljava/lang/Class;", "multifileFacade$delegate", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "scope$delegate", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class Data extends KDeclarationContainerImpl.Data {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Data.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Data.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Data.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Data.class), d.f25744y, "getMetadata()Lkotlin/Triple;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Data.class), h.f43540d, "getMembers()Ljava/util/Collection;"))};
        @g
        private final ReflectProperties.LazySoftVal kotlinClass$delegate;
        @g
        private final ReflectProperties.LazySoftVal members$delegate;
        @g
        private final ReflectProperties.LazyVal metadata$delegate;
        @g
        private final ReflectProperties.LazyVal multifileFacade$delegate;
        @g
        private final ReflectProperties.LazySoftVal scope$delegate;

        public Data() {
            super();
            this.kotlinClass$delegate = ReflectProperties.lazySoft(new KPackageImpl$Data$kotlinClass$2(KPackageImpl.this));
            this.scope$delegate = ReflectProperties.lazySoft(new KPackageImpl$Data$scope$2(this));
            this.multifileFacade$delegate = ReflectProperties.lazy(new KPackageImpl$Data$multifileFacade$2(this, KPackageImpl.this));
            this.metadata$delegate = ReflectProperties.lazy(new KPackageImpl$Data$metadata$2(this));
            this.members$delegate = ReflectProperties.lazySoft(new KPackageImpl$Data$members$2(KPackageImpl.this, this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ReflectKotlinClass getKotlinClass() {
            return (ReflectKotlinClass) this.kotlinClass$delegate.getValue(this, $$delegatedProperties[0]);
        }

        @g
        public final Collection<KCallableImpl<?>> getMembers() {
            T value = this.members$delegate.getValue(this, $$delegatedProperties[4]);
            Intrinsics.checkNotNullExpressionValue(value, "<get-members>(...)");
            return (Collection) value;
        }

        @m8.h
        public final Triple<JvmNameResolver, ProtoBuf.Package, JvmMetadataVersion> getMetadata() {
            return (Triple) this.metadata$delegate.getValue(this, $$delegatedProperties[3]);
        }

        @m8.h
        public final Class<?> getMultifileFacade() {
            return (Class) this.multifileFacade$delegate.getValue(this, $$delegatedProperties[2]);
        }

        @g
        public final MemberScope getScope() {
            T value = this.scope$delegate.getValue(this, $$delegatedProperties[1]);
            Intrinsics.checkNotNullExpressionValue(value, "<get-scope>(...)");
            return (MemberScope) value;
        }
    }

    public /* synthetic */ KPackageImpl(Class cls, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, (i4 & 2) != 0 ? null : str);
    }

    private final MemberScope getScope() {
        return this.data.invoke().getScope();
    }

    public boolean equals(@m8.h Object obj) {
        return (obj instanceof KPackageImpl) && Intrinsics.areEqual(getJClass(), ((KPackageImpl) obj).getJClass());
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    @g
    public Collection<ConstructorDescriptor> getConstructorDescriptors() {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    @g
    public Collection<FunctionDescriptor> getFunctions(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getScope().getContributedFunctions(name, NoLookupLocation.FROM_REFLECTION);
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    @g
    public Class<?> getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    @m8.h
    public PropertyDescriptor getLocalProperty(int i4) {
        Triple<JvmNameResolver, ProtoBuf.Package, JvmMetadataVersion> metadata = this.data.invoke().getMetadata();
        if (metadata != null) {
            JvmNameResolver component1 = metadata.component1();
            ProtoBuf.Package component2 = metadata.component2();
            JvmMetadataVersion component3 = metadata.component3();
            GeneratedMessageLite.GeneratedExtension<ProtoBuf.Package, List<ProtoBuf.Property>> packageLocalVariable = JvmProtoBuf.packageLocalVariable;
            Intrinsics.checkNotNullExpressionValue(packageLocalVariable, "packageLocalVariable");
            ProtoBuf.Property property = (ProtoBuf.Property) ProtoBufUtilKt.getExtensionOrNull(component2, packageLocalVariable, i4);
            if (property != null) {
                Class<?> jClass = getJClass();
                ProtoBuf.TypeTable typeTable = component2.getTypeTable();
                Intrinsics.checkNotNullExpressionValue(typeTable, "packageProto.typeTable");
                return (PropertyDescriptor) UtilKt.deserializeToDescriptor(jClass, property, component1, new TypeTable(typeTable), component3, KPackageImpl$getLocalProperty$1$1$1.INSTANCE);
            }
            return null;
        }
        return null;
    }

    @Override // kotlin.reflect.KDeclarationContainer
    @g
    public Collection<KCallable<?>> getMembers() {
        return this.data.invoke().getMembers();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    @g
    protected Class<?> getMethodOwner() {
        Class<?> multifileFacade = this.data.invoke().getMultifileFacade();
        return multifileFacade == null ? getJClass() : multifileFacade;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    @g
    public Collection<PropertyDescriptor> getProperties(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getScope().getContributedVariables(name, NoLookupLocation.FROM_REFLECTION);
    }

    public int hashCode() {
        return getJClass().hashCode();
    }

    @g
    public String toString() {
        return "file class " + ReflectClassUtilKt.getClassId(getJClass()).asSingleFqName();
    }

    public KPackageImpl(@g Class<?> jClass, @m8.h String str) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        this.jClass = jClass;
        this.usageModuleName = str;
        ReflectProperties.LazyVal<Data> lazy = ReflectProperties.lazy(new KPackageImpl$data$1(this));
        Intrinsics.checkNotNullExpressionValue(lazy, "lazy { Data() }");
        this.data = lazy;
    }
}
