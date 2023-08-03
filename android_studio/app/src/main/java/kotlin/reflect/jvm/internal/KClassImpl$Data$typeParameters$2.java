package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KClassImpl.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "kotlin.jvm.PlatformType", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KClassImpl$Data$typeParameters$2 extends Lambda implements Function0<List<? extends KTypeParameterImpl>> {
    final /* synthetic */ KClassImpl<T>.Data this$0;
    final /* synthetic */ KClassImpl<T> this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$typeParameters$2(KClassImpl<T>.Data data, KClassImpl<T> kClassImpl) {
        super(0);
        this.this$0 = data;
        this.this$1 = kClassImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends KTypeParameterImpl> invoke() {
        int collectionSizeOrDefault;
        List<TypeParameterDescriptor> declaredTypeParameters = this.this$0.getDescriptor().getDeclaredTypeParameters();
        Intrinsics.checkNotNullExpressionValue(declaredTypeParameters, "descriptor.declaredTypeParameters");
        KTypeParameterOwnerImpl kTypeParameterOwnerImpl = this.this$1;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(declaredTypeParameters, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeParameterDescriptor descriptor : declaredTypeParameters) {
            Intrinsics.checkNotNullExpressionValue(descriptor, "descriptor");
            arrayList.add(new KTypeParameterImpl(kTypeParameterOwnerImpl, descriptor));
        }
        return arrayList;
    }
}
