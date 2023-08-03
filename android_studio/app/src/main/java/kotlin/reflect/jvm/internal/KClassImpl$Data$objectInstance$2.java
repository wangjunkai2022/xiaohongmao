package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.CompanionObjectMapping;
import kotlin.reflect.jvm.internal.impl.builtins.CompanionObjectMappingUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KClassImpl.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KClassImpl$Data$objectInstance$2 extends Lambda implements Function0<T> {
    final /* synthetic */ KClassImpl<T>.Data this$0;
    final /* synthetic */ KClassImpl<T> this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$objectInstance$2(KClassImpl<T>.Data data, KClassImpl<T> kClassImpl) {
        super(0);
        this.this$0 = data;
        this.this$1 = kClassImpl;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @h
    public final T invoke() {
        Field declaredField;
        ClassDescriptor descriptor = this.this$0.getDescriptor();
        if (descriptor.getKind() != ClassKind.OBJECT) {
            return null;
        }
        if (descriptor.isCompanionObject() && !CompanionObjectMappingUtilsKt.isMappedIntrinsicCompanionObject(CompanionObjectMapping.INSTANCE, descriptor)) {
            declaredField = this.this$1.getJClass().getEnclosingClass().getDeclaredField(descriptor.getName().asString());
        } else {
            declaredField = this.this$1.getJClass().getDeclaredField("INSTANCE");
        }
        ?? r02 = declaredField.get(null);
        Intrinsics.checkNotNull(r02, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.KClassImpl");
        return r02;
    }
}
