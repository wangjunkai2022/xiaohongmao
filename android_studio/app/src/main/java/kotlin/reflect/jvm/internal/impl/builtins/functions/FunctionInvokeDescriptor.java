package kotlin.reflect.jvm.internal.impl.builtins.functions;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.util.OperatorNameConventions;
import m8.g;
import m8.h;

/* compiled from: FunctionInvokeDescriptor.kt */
/* loaded from: classes4.dex */
public final class FunctionInvokeDescriptor extends SimpleFunctionDescriptorImpl {
    @g
    public static final Factory Factory = new Factory(null);

    /* compiled from: FunctionInvokeDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class Factory {
        private Factory() {
        }

        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ValueParameterDescriptor createValueParameter(FunctionInvokeDescriptor functionInvokeDescriptor, int i4, TypeParameterDescriptor typeParameterDescriptor) {
            String lowerCase;
            String asString = typeParameterDescriptor.getName().asString();
            Intrinsics.checkNotNullExpressionValue(asString, "typeParameter.name.asString()");
            if (Intrinsics.areEqual(asString, ExifInterface.GPS_DIRECTION_TRUE)) {
                lowerCase = "instance";
            } else if (Intrinsics.areEqual(asString, ExifInterface.LONGITUDE_EAST)) {
                lowerCase = "receiver";
            } else {
                lowerCase = asString.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            }
            Annotations empty = Annotations.Companion.getEMPTY();
            Name identifier = Name.identifier(lowerCase);
            Intrinsics.checkNotNullExpressionValue(identifier, "identifier(name)");
            SimpleType defaultType = typeParameterDescriptor.getDefaultType();
            Intrinsics.checkNotNullExpressionValue(defaultType, "typeParameter.defaultType");
            SourceElement NO_SOURCE = SourceElement.NO_SOURCE;
            Intrinsics.checkNotNullExpressionValue(NO_SOURCE, "NO_SOURCE");
            return new ValueParameterDescriptorImpl(functionInvokeDescriptor, null, i4, empty, identifier, defaultType, false, false, false, null, NO_SOURCE);
        }

        @g
        public final FunctionInvokeDescriptor create(@g FunctionClassDescriptor functionClass, boolean z9) {
            List<ReceiverParameterDescriptor> emptyList;
            List<? extends TypeParameterDescriptor> emptyList2;
            Iterable<IndexedValue> withIndex;
            int collectionSizeOrDefault;
            Object last;
            Intrinsics.checkNotNullParameter(functionClass, "functionClass");
            List<TypeParameterDescriptor> declaredTypeParameters = functionClass.getDeclaredTypeParameters();
            FunctionInvokeDescriptor functionInvokeDescriptor = new FunctionInvokeDescriptor(functionClass, null, CallableMemberDescriptor.Kind.DECLARATION, z9, null);
            ReceiverParameterDescriptor thisAsReceiverParameter = functionClass.getThisAsReceiverParameter();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : declaredTypeParameters) {
                if (!(((TypeParameterDescriptor) obj).getVariance() == Variance.IN_VARIANCE)) {
                    break;
                }
                arrayList.add(obj);
            }
            withIndex = CollectionsKt___CollectionsKt.withIndex(arrayList);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(withIndex, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (IndexedValue indexedValue : withIndex) {
                arrayList2.add(FunctionInvokeDescriptor.Factory.createValueParameter(functionInvokeDescriptor, indexedValue.getIndex(), (TypeParameterDescriptor) indexedValue.getValue()));
            }
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) declaredTypeParameters);
            functionInvokeDescriptor.initialize((ReceiverParameterDescriptor) null, thisAsReceiverParameter, emptyList, emptyList2, (List<ValueParameterDescriptor>) arrayList2, (KotlinType) ((TypeParameterDescriptor) last).getDefaultType(), Modality.ABSTRACT, DescriptorVisibilities.PUBLIC);
            functionInvokeDescriptor.setHasSynthesizedParameterNames(true);
            return functionInvokeDescriptor;
        }
    }

    private FunctionInvokeDescriptor(DeclarationDescriptor declarationDescriptor, FunctionInvokeDescriptor functionInvokeDescriptor, CallableMemberDescriptor.Kind kind, boolean z9) {
        super(declarationDescriptor, functionInvokeDescriptor, Annotations.Companion.getEMPTY(), OperatorNameConventions.INVOKE, kind, SourceElement.NO_SOURCE);
        setOperator(true);
        setSuspend(z9);
        setHasStableParameterNames(false);
    }

    public /* synthetic */ FunctionInvokeDescriptor(DeclarationDescriptor declarationDescriptor, FunctionInvokeDescriptor functionInvokeDescriptor, CallableMemberDescriptor.Kind kind, boolean z9, DefaultConstructorMarker defaultConstructorMarker) {
        this(declarationDescriptor, functionInvokeDescriptor, kind, z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl$CopyConfiguration] */
    private final FunctionDescriptor replaceParameterNames(List<Name> list) {
        int collectionSizeOrDefault;
        boolean z9;
        Name name;
        List<Pair> zip;
        boolean z10;
        int size = getValueParameters().size() - list.size();
        boolean z11 = true;
        if (size == 0) {
            List<ValueParameterDescriptor> valueParameters = getValueParameters();
            Intrinsics.checkNotNullExpressionValue(valueParameters, "valueParameters");
            zip = CollectionsKt___CollectionsKt.zip(list, valueParameters);
            if (!(zip instanceof Collection) || !zip.isEmpty()) {
                for (Pair pair : zip) {
                    if (!Intrinsics.areEqual((Name) pair.component1(), ((ValueParameterDescriptor) pair.component2()).getName())) {
                        z10 = false;
                        break;
                    }
                }
            }
            z10 = true;
            if (z10) {
                return this;
            }
        }
        List<ValueParameterDescriptor> valueParameters2 = getValueParameters();
        Intrinsics.checkNotNullExpressionValue(valueParameters2, "valueParameters");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(valueParameters2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ValueParameterDescriptor valueParameterDescriptor : valueParameters2) {
            Name name2 = valueParameterDescriptor.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "it.name");
            int index = valueParameterDescriptor.getIndex();
            int i4 = index - size;
            if (i4 >= 0 && (name = list.get(i4)) != null) {
                name2 = name;
            }
            arrayList.add(valueParameterDescriptor.copy(this, name2, index));
        }
        FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = newCopyBuilder(TypeSubstitutor.EMPTY);
        if (!list.isEmpty()) {
            for (Name name3 : list) {
                if (name3 == null) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    break;
                }
            }
        }
        z11 = false;
        ?? original = newCopyBuilder.setHasSynthesizedParameterNames(z11).setValueParameters2((List<ValueParameterDescriptor>) arrayList).setOriginal((CallableMemberDescriptor) getOriginal());
        Intrinsics.checkNotNullExpressionValue(original, "newCopyBuilder(TypeSubst…   .setOriginal(original)");
        FunctionDescriptor doSubstitute = super.doSubstitute(original);
        Intrinsics.checkNotNull(doSubstitute);
        return doSubstitute;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    @g
    protected FunctionDescriptorImpl createSubstitutedCopy(@g DeclarationDescriptor newOwner, @h FunctionDescriptor functionDescriptor, @g CallableMemberDescriptor.Kind kind, @h Name name, @g Annotations annotations, @g SourceElement source) {
        Intrinsics.checkNotNullParameter(newOwner, "newOwner");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(source, "source");
        return new FunctionInvokeDescriptor(newOwner, (FunctionInvokeDescriptor) functionDescriptor, kind, isSuspend());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    @h
    public FunctionDescriptor doSubstitute(@g FunctionDescriptorImpl.CopyConfiguration configuration) {
        boolean z9;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        FunctionInvokeDescriptor functionInvokeDescriptor = (FunctionInvokeDescriptor) super.doSubstitute(configuration);
        if (functionInvokeDescriptor == null) {
            return null;
        }
        List<ValueParameterDescriptor> valueParameters = functionInvokeDescriptor.getValueParameters();
        Intrinsics.checkNotNullExpressionValue(valueParameters, "substituted.valueParameters");
        boolean z10 = false;
        if (!(valueParameters instanceof Collection) || !valueParameters.isEmpty()) {
            for (ValueParameterDescriptor valueParameterDescriptor : valueParameters) {
                KotlinType type = valueParameterDescriptor.getType();
                Intrinsics.checkNotNullExpressionValue(type, "it.type");
                if (FunctionTypesKt.extractParameterNameFromFunctionTypeArgument(type) != null) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    break;
                }
            }
        }
        z10 = true;
        if (z10) {
            return functionInvokeDescriptor;
        }
        List<ValueParameterDescriptor> valueParameters2 = functionInvokeDescriptor.getValueParameters();
        Intrinsics.checkNotNullExpressionValue(valueParameters2, "substituted.valueParameters");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(valueParameters2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ValueParameterDescriptor valueParameterDescriptor2 : valueParameters2) {
            KotlinType type2 = valueParameterDescriptor2.getType();
            Intrinsics.checkNotNullExpressionValue(type2, "it.type");
            arrayList.add(FunctionTypesKt.extractParameterNameFromFunctionTypeArgument(type2));
        }
        return functionInvokeDescriptor.replaceParameterNames(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public boolean isTailrec() {
        return false;
    }
}
