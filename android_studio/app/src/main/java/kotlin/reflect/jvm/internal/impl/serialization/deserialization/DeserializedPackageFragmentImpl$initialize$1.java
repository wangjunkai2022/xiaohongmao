package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: DeserializedPackageFragmentImpl.kt */
/* loaded from: classes4.dex */
final class DeserializedPackageFragmentImpl$initialize$1 extends Lambda implements Function0<Collection<? extends Name>> {
    final /* synthetic */ DeserializedPackageFragmentImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragmentImpl$initialize$1(DeserializedPackageFragmentImpl deserializedPackageFragmentImpl) {
        super(0);
        this.this$0 = deserializedPackageFragmentImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Collection<? extends Name> invoke() {
        int collectionSizeOrDefault;
        Collection<ClassId> allClassIds = this.this$0.getClassDataFinder().getAllClassIds();
        ArrayList<ClassId> arrayList = new ArrayList();
        for (Object obj : allClassIds) {
            ClassId classId = (ClassId) obj;
            if ((classId.isNestedClass() || ClassDeserializer.Companion.getBLACK_LIST().contains(classId)) ? false : true) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (ClassId classId2 : arrayList) {
            arrayList2.add(classId2.getShortClassName());
        }
        return arrayList2;
    }
}
