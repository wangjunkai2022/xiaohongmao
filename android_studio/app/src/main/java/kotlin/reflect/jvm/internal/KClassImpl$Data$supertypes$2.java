package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KClassImpl.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KClassImpl$Data$supertypes$2 extends Lambda implements Function0<List<? extends KTypeImpl>> {
    final /* synthetic */ KClassImpl<T>.Data this$0;
    final /* synthetic */ KClassImpl<T> this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KClassImpl.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass3 extends Lambda implements Function0<Type> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        AnonymousClass3() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final Type invoke() {
            return Object.class;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$supertypes$2(KClassImpl<T>.Data data, KClassImpl<T> kClassImpl) {
        super(0);
        this.this$0 = data;
        this.this$1 = kClassImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends KTypeImpl> invoke() {
        boolean z9;
        Collection<KotlinType> mo1364getSupertypes = this.this$0.getDescriptor().getTypeConstructor().mo1364getSupertypes();
        Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "descriptor.typeConstructor.supertypes");
        ArrayList<KTypeImpl> arrayList = new ArrayList(mo1364getSupertypes.size());
        KClassImpl<T>.Data data = this.this$0;
        KClassImpl<T> kClassImpl = this.this$1;
        for (KotlinType kotlinType : mo1364getSupertypes) {
            Intrinsics.checkNotNullExpressionValue(kotlinType, "kotlinType");
            arrayList.add(new KTypeImpl(kotlinType, new KClassImpl$Data$supertypes$2$1$1(kotlinType, data, kClassImpl)));
        }
        if (!KotlinBuiltIns.isSpecialClassWithNoSupertypes(this.this$0.getDescriptor())) {
            boolean z10 = false;
            if (!arrayList.isEmpty()) {
                for (KTypeImpl kTypeImpl : arrayList) {
                    ClassKind kind = DescriptorUtils.getClassDescriptorForType(kTypeImpl.getType()).getKind();
                    Intrinsics.checkNotNullExpressionValue(kind, "getClassDescriptorForType(it.type).kind");
                    if (kind == ClassKind.INTERFACE || kind == ClassKind.ANNOTATION_CLASS) {
                        z9 = true;
                        continue;
                    } else {
                        z9 = false;
                        continue;
                    }
                    if (!z9) {
                        break;
                    }
                }
            }
            z10 = true;
            if (z10) {
                SimpleType anyType = DescriptorUtilsKt.getBuiltIns(this.this$0.getDescriptor()).getAnyType();
                Intrinsics.checkNotNullExpressionValue(anyType, "descriptor.builtIns.anyType");
                arrayList.add(new KTypeImpl(anyType, AnonymousClass3.INSTANCE));
            }
        }
        return CollectionsKt.compact(arrayList);
    }
}
