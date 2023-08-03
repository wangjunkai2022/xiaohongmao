package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import m8.g;

/* compiled from: predefinedEnhancementInfo.kt */
/* loaded from: classes4.dex */
final class SignatureEnhancementBuilder {
    @g
    private final Map<String, PredefinedFunctionEnhancementInfo> signatures = new LinkedHashMap();

    @g
    public final Map<String, PredefinedFunctionEnhancementInfo> build() {
        return this.signatures;
    }

    /* compiled from: predefinedEnhancementInfo.kt */
    /* loaded from: classes4.dex */
    public final class ClassEnhancementBuilder {
        @g
        private final String className;
        final /* synthetic */ SignatureEnhancementBuilder this$0;

        public ClassEnhancementBuilder(@g SignatureEnhancementBuilder signatureEnhancementBuilder, String className) {
            Intrinsics.checkNotNullParameter(className, "className");
            this.this$0 = signatureEnhancementBuilder;
            this.className = className;
        }

        public final void function(@g String name, @g Function1<? super FunctionEnhancementBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(block, "block");
            Map map = this.this$0.signatures;
            FunctionEnhancementBuilder functionEnhancementBuilder = new FunctionEnhancementBuilder(this, name);
            block.invoke(functionEnhancementBuilder);
            Pair<String, PredefinedFunctionEnhancementInfo> build = functionEnhancementBuilder.build();
            map.put(build.getFirst(), build.getSecond());
        }

        @g
        public final String getClassName() {
            return this.className;
        }

        /* compiled from: predefinedEnhancementInfo.kt */
        /* loaded from: classes4.dex */
        public final class FunctionEnhancementBuilder {
            @g
            private final String functionName;
            @g
            private final List<Pair<String, TypeEnhancementInfo>> parameters;
            @g
            private Pair<String, TypeEnhancementInfo> returnType;
            final /* synthetic */ ClassEnhancementBuilder this$0;

            public FunctionEnhancementBuilder(@g ClassEnhancementBuilder classEnhancementBuilder, String functionName) {
                Intrinsics.checkNotNullParameter(functionName, "functionName");
                this.this$0 = classEnhancementBuilder;
                this.functionName = functionName;
                this.parameters = new ArrayList();
                this.returnType = TuplesKt.to(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, null);
            }

            @g
            public final Pair<String, PredefinedFunctionEnhancementInfo> build() {
                int collectionSizeOrDefault;
                int collectionSizeOrDefault2;
                SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.INSTANCE;
                String className = this.this$0.getClassName();
                String str = this.functionName;
                List<Pair<String, TypeEnhancementInfo>> list = this.parameters;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Pair) it.next()).getFirst());
                }
                String signature = signatureBuildingComponents.signature(className, signatureBuildingComponents.jvmDescriptor(str, arrayList, this.returnType.getFirst()));
                TypeEnhancementInfo second = this.returnType.getSecond();
                List<Pair<String, TypeEnhancementInfo>> list2 = this.parameters;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((TypeEnhancementInfo) ((Pair) it2.next()).getSecond());
                }
                return TuplesKt.to(signature, new PredefinedFunctionEnhancementInfo(second, arrayList2));
            }

            public final void parameter(@g String type, @g JavaTypeQualifiers... qualifiers) {
                Iterable<IndexedValue> withIndex;
                int collectionSizeOrDefault;
                int mapCapacity;
                int coerceAtLeast;
                TypeEnhancementInfo typeEnhancementInfo;
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(qualifiers, "qualifiers");
                List<Pair<String, TypeEnhancementInfo>> list = this.parameters;
                if (qualifiers.length == 0) {
                    typeEnhancementInfo = null;
                } else {
                    withIndex = ArraysKt___ArraysKt.withIndex(qualifiers);
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(withIndex, 10);
                    mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                    coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                    for (IndexedValue indexedValue : withIndex) {
                        linkedHashMap.put(Integer.valueOf(indexedValue.getIndex()), (JavaTypeQualifiers) indexedValue.getValue());
                    }
                    typeEnhancementInfo = new TypeEnhancementInfo(linkedHashMap);
                }
                list.add(TuplesKt.to(type, typeEnhancementInfo));
            }

            public final void returns(@g String type, @g JavaTypeQualifiers... qualifiers) {
                Iterable<IndexedValue> withIndex;
                int collectionSizeOrDefault;
                int mapCapacity;
                int coerceAtLeast;
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(qualifiers, "qualifiers");
                withIndex = ArraysKt___ArraysKt.withIndex(qualifiers);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(withIndex, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (IndexedValue indexedValue : withIndex) {
                    linkedHashMap.put(Integer.valueOf(indexedValue.getIndex()), (JavaTypeQualifiers) indexedValue.getValue());
                }
                this.returnType = TuplesKt.to(type, new TypeEnhancementInfo(linkedHashMap));
            }

            public final void returns(@g JvmPrimitiveType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                String desc = type.getDesc();
                Intrinsics.checkNotNullExpressionValue(desc, "type.desc");
                this.returnType = TuplesKt.to(desc, null);
            }
        }
    }
}
