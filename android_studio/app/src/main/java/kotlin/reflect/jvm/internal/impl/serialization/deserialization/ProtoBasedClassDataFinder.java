package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: ProtoBasedClassDataFinder.kt */
/* loaded from: classes4.dex */
public final class ProtoBasedClassDataFinder implements ClassDataFinder {
    @g
    private final Map<ClassId, ProtoBuf.Class> classIdToProto;
    @g
    private final Function1<ClassId, SourceElement> classSource;
    @g
    private final BinaryVersion metadataVersion;
    @g
    private final NameResolver nameResolver;

    /* JADX WARN: Multi-variable type inference failed */
    public ProtoBasedClassDataFinder(@g ProtoBuf.PackageFragment proto, @g NameResolver nameResolver, @g BinaryVersion metadataVersion, @g Function1<? super ClassId, ? extends SourceElement> classSource) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        Intrinsics.checkNotNullParameter(classSource, "classSource");
        this.nameResolver = nameResolver;
        this.metadataVersion = metadataVersion;
        this.classSource = classSource;
        List<ProtoBuf.Class> class_List = proto.getClass_List();
        Intrinsics.checkNotNullExpressionValue(class_List, "proto.class_List");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(class_List, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : class_List) {
            linkedHashMap.put(NameResolverUtilKt.getClassId(this.nameResolver, ((ProtoBuf.Class) obj).getFqName()), obj);
        }
        this.classIdToProto = linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    @h
    public ClassData findClassData(@g ClassId classId) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        ProtoBuf.Class r02 = this.classIdToProto.get(classId);
        if (r02 == null) {
            return null;
        }
        return new ClassData(this.nameResolver, r02, this.metadataVersion, this.classSource.invoke(classId));
    }

    @g
    public final Collection<ClassId> getAllClassIds() {
        return this.classIdToProto.keySet();
    }
}
