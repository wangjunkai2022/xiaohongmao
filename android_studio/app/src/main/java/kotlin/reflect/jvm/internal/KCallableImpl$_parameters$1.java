package kotlin.reflect.jvm.internal;

import java.util.ArrayList;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KCallableImpl.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b\u0000\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/util/ArrayList;", "Lkotlin/reflect/KParameter;", "kotlin.jvm.PlatformType", "R", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KCallableImpl$_parameters$1 extends Lambda implements Function0<ArrayList<KParameter>> {
    final /* synthetic */ KCallableImpl<R> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KCallableImpl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function0<ParameterDescriptor> {
        final /* synthetic */ ReceiverParameterDescriptor $instanceReceiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ReceiverParameterDescriptor receiverParameterDescriptor) {
            super(0);
            this.$instanceReceiver = receiverParameterDescriptor;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final ParameterDescriptor invoke() {
            return this.$instanceReceiver;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KCallableImpl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass2 extends Lambda implements Function0<ParameterDescriptor> {
        final /* synthetic */ ReceiverParameterDescriptor $extensionReceiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ReceiverParameterDescriptor receiverParameterDescriptor) {
            super(0);
            this.$extensionReceiver = receiverParameterDescriptor;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final ParameterDescriptor invoke() {
            return this.$extensionReceiver;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KCallableImpl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass3 extends Lambda implements Function0<ParameterDescriptor> {
        final /* synthetic */ CallableMemberDescriptor $descriptor;
        final /* synthetic */ int $i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(CallableMemberDescriptor callableMemberDescriptor, int i4) {
            super(0);
            this.$descriptor = callableMemberDescriptor;
            this.$i = i4;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final ParameterDescriptor invoke() {
            ValueParameterDescriptor valueParameterDescriptor = this.$descriptor.getValueParameters().get(this.$i);
            Intrinsics.checkNotNullExpressionValue(valueParameterDescriptor, "descriptor.valueParameters[i]");
            return valueParameterDescriptor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KCallableImpl$_parameters$1(KCallableImpl<? extends R> kCallableImpl) {
        super(0);
        this.this$0 = kCallableImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ArrayList<KParameter> invoke() {
        int i4;
        CallableMemberDescriptor descriptor = this.this$0.getDescriptor();
        ArrayList<KParameter> arrayList = new ArrayList<>();
        int i10 = 0;
        if (this.this$0.isBound()) {
            i4 = 0;
        } else {
            ReceiverParameterDescriptor instanceReceiverParameter = UtilKt.getInstanceReceiverParameter(descriptor);
            if (instanceReceiverParameter != null) {
                arrayList.add(new KParameterImpl(this.this$0, 0, KParameter.Kind.INSTANCE, new AnonymousClass1(instanceReceiverParameter)));
                i4 = 1;
            } else {
                i4 = 0;
            }
            ReceiverParameterDescriptor extensionReceiverParameter = descriptor.getExtensionReceiverParameter();
            if (extensionReceiverParameter != null) {
                arrayList.add(new KParameterImpl(this.this$0, i4, KParameter.Kind.EXTENSION_RECEIVER, new AnonymousClass2(extensionReceiverParameter)));
                i4++;
            }
        }
        int size = descriptor.getValueParameters().size();
        while (i10 < size) {
            arrayList.add(new KParameterImpl(this.this$0, i4, KParameter.Kind.VALUE, new AnonymousClass3(descriptor, i10)));
            i10++;
            i4++;
        }
        if (this.this$0.isAnnotationConstructor() && (descriptor instanceof JavaCallableMemberDescriptor) && arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1$invoke$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t9, T t10) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(((KParameter) t9).getName(), ((KParameter) t10).getName());
                    return compareValues;
                }
            });
        }
        arrayList.trimToSize();
        return arrayList;
    }
}
