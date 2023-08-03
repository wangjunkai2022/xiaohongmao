package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NewCapturedType.kt */
/* loaded from: classes4.dex */
public final class NewCapturedTypeConstructor$refine$1$1 extends Lambda implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ KotlinTypeRefiner $kotlinTypeRefiner;
    final /* synthetic */ NewCapturedTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor$refine$1$1(NewCapturedTypeConstructor newCapturedTypeConstructor, KotlinTypeRefiner kotlinTypeRefiner) {
        super(0);
        this.this$0 = newCapturedTypeConstructor;
        this.$kotlinTypeRefiner = kotlinTypeRefiner;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends UnwrappedType> invoke() {
        int collectionSizeOrDefault;
        List<UnwrappedType> mo1364getSupertypes = this.this$0.mo1364getSupertypes();
        KotlinTypeRefiner kotlinTypeRefiner = this.$kotlinTypeRefiner;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mo1364getSupertypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (UnwrappedType unwrappedType : mo1364getSupertypes) {
            arrayList.add(unwrappedType.refine(kotlinTypeRefiner));
        }
        return arrayList;
    }
}
