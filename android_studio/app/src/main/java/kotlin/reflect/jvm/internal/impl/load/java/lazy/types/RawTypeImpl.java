package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import m8.g;

/* compiled from: RawType.kt */
/* loaded from: classes4.dex */
public final class RawTypeImpl extends FlexibleType implements RawType {
    private RawTypeImpl(SimpleType simpleType, SimpleType simpleType2, boolean z9) {
        super(simpleType, simpleType2);
        if (z9) {
            return;
        }
        KotlinTypeChecker.DEFAULT.isSubtypeOf(simpleType, simpleType2);
    }

    private static final boolean render$onlyOutDiffers(String str, String str2) {
        String removePrefix;
        removePrefix = StringsKt__StringsKt.removePrefix(str2, (CharSequence) "out ");
        return Intrinsics.areEqual(str, removePrefix) || Intrinsics.areEqual(str2, "*");
    }

    private static final List<String> render$renderArguments(DescriptorRenderer descriptorRenderer, KotlinType kotlinType) {
        int collectionSizeOrDefault;
        List<TypeProjection> arguments = kotlinType.getArguments();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arguments, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeProjection typeProjection : arguments) {
            arrayList.add(descriptorRenderer.renderTypeProjection(typeProjection));
        }
        return arrayList;
    }

    private static final String render$replaceArgs(String str, String str2) {
        boolean contains$default;
        String substringBefore$default;
        String substringAfterLast$default;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (char) Typography.less, false, 2, (Object) null);
        if (contains$default) {
            StringBuilder sb = new StringBuilder();
            substringBefore$default = StringsKt__StringsKt.substringBefore$default(str, (char) Typography.less, (String) null, 2, (Object) null);
            sb.append(substringBefore$default);
            sb.append(Typography.less);
            sb.append(str2);
            sb.append(Typography.greater);
            substringAfterLast$default = StringsKt__StringsKt.substringAfterLast$default(str, (char) Typography.greater, (String) null, 2, (Object) null);
            sb.append(substringAfterLast$default);
            return sb.toString();
        }
        return str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    @g
    public SimpleType getDelegate() {
        return getLowerBound();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public MemberScope getMemberScope() {
        ClassifierDescriptor declarationDescriptor = getConstructor().getDeclarationDescriptor();
        ClassDescriptor classDescriptor = declarationDescriptor instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor : null;
        if (classDescriptor != null) {
            MemberScope memberScope = classDescriptor.getMemberScope(new RawSubstitution(null, 1, null));
            Intrinsics.checkNotNullExpressionValue(memberScope, "classDescriptor.getMemberScope(RawSubstitution())");
            return memberScope;
        }
        throw new IllegalStateException(("Incorrect classifier: " + getConstructor().getDeclarationDescriptor()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    @g
    public String render(@g DescriptorRenderer renderer, @g DescriptorRendererOptions options) {
        String joinToString$default;
        List zip;
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        Intrinsics.checkNotNullParameter(options, "options");
        String renderType = renderer.renderType(getLowerBound());
        String renderType2 = renderer.renderType(getUpperBound());
        if (options.getDebugMode()) {
            return "raw (" + renderType + ".." + renderType2 + ')';
        } else if (getUpperBound().getArguments().isEmpty()) {
            return renderer.renderFlexibleType(renderType, renderType2, TypeUtilsKt.getBuiltIns(this));
        } else {
            List<String> render$renderArguments = render$renderArguments(renderer, getLowerBound());
            List<String> render$renderArguments2 = render$renderArguments(renderer, getUpperBound());
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(render$renderArguments, ", ", null, null, 0, null, RawTypeImpl$render$newArgs$1.INSTANCE, 30, null);
            zip = CollectionsKt___CollectionsKt.zip(render$renderArguments, render$renderArguments2);
            boolean z9 = true;
            if (!(zip instanceof Collection) || !zip.isEmpty()) {
                Iterator it = zip.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Pair pair = (Pair) it.next();
                    if (!render$onlyOutDiffers((String) pair.getFirst(), (String) pair.getSecond())) {
                        z9 = false;
                        break;
                    }
                }
            }
            if (z9) {
                renderType2 = render$replaceArgs(renderType2, joinToString$default);
            }
            String render$replaceArgs = render$replaceArgs(renderType, joinToString$default);
            return Intrinsics.areEqual(render$replaceArgs, renderType2) ? render$replaceArgs : renderer.renderFlexibleType(render$replaceArgs, renderType2, TypeUtilsKt.getBuiltIns(this));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public RawTypeImpl makeNullableAsSpecified(boolean z9) {
        return new RawTypeImpl(getLowerBound().makeNullableAsSpecified(z9), getUpperBound().makeNullableAsSpecified(z9));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public RawTypeImpl replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return new RawTypeImpl(getLowerBound().replaceAttributes(newAttributes), getUpperBound().replaceAttributes(newAttributes));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(@g SimpleType lowerBound, @g SimpleType upperBound) {
        this(lowerBound, upperBound, false);
        Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
        Intrinsics.checkNotNullParameter(upperBound, "upperBound");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public FlexibleType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        KotlinType refineType = kotlinTypeRefiner.refineType((KotlinTypeMarker) getLowerBound());
        Intrinsics.checkNotNull(refineType, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        KotlinType refineType2 = kotlinTypeRefiner.refineType((KotlinTypeMarker) getUpperBound());
        Intrinsics.checkNotNull(refineType2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new RawTypeImpl((SimpleType) refineType, (SimpleType) refineType2, true);
    }
}
