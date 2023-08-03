package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import m8.g;
import m8.h;

/* compiled from: protoTypeTableUtil.kt */
/* loaded from: classes4.dex */
public final class ProtoTypeTableUtilKt {
    @h
    public static final ProtoBuf.Type abbreviatedType(@g ProtoBuf.Type type, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (type.hasAbbreviatedType()) {
            return type.getAbbreviatedType();
        }
        if (type.hasAbbreviatedTypeId()) {
            return typeTable.get(type.getAbbreviatedTypeId());
        }
        return null;
    }

    @g
    public static final ProtoBuf.Type expandedType(@g ProtoBuf.TypeAlias typeAlias, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(typeAlias, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (typeAlias.hasExpandedType()) {
            ProtoBuf.Type expandedType = typeAlias.getExpandedType();
            Intrinsics.checkNotNullExpressionValue(expandedType, "expandedType");
            return expandedType;
        } else if (typeAlias.hasExpandedTypeId()) {
            return typeTable.get(typeAlias.getExpandedTypeId());
        } else {
            throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
        }
    }

    @h
    public static final ProtoBuf.Type flexibleUpperBound(@g ProtoBuf.Type type, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (type.hasFlexibleUpperBound()) {
            return type.getFlexibleUpperBound();
        }
        if (type.hasFlexibleUpperBoundId()) {
            return typeTable.get(type.getFlexibleUpperBoundId());
        }
        return null;
    }

    public static final boolean hasReceiver(@g ProtoBuf.Function function) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        return function.hasReceiverType() || function.hasReceiverTypeId();
    }

    @h
    public static final ProtoBuf.Type inlineClassUnderlyingType(@g ProtoBuf.Class r12, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(r12, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (r12.hasInlineClassUnderlyingType()) {
            return r12.getInlineClassUnderlyingType();
        }
        if (r12.hasInlineClassUnderlyingTypeId()) {
            return typeTable.get(r12.getInlineClassUnderlyingTypeId());
        }
        return null;
    }

    @h
    public static final ProtoBuf.Type outerType(@g ProtoBuf.Type type, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (type.hasOuterType()) {
            return type.getOuterType();
        }
        if (type.hasOuterTypeId()) {
            return typeTable.get(type.getOuterTypeId());
        }
        return null;
    }

    @h
    public static final ProtoBuf.Type receiverType(@g ProtoBuf.Function function, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (function.hasReceiverType()) {
            return function.getReceiverType();
        }
        if (function.hasReceiverTypeId()) {
            return typeTable.get(function.getReceiverTypeId());
        }
        return null;
    }

    @g
    public static final ProtoBuf.Type returnType(@g ProtoBuf.Function function, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (function.hasReturnType()) {
            ProtoBuf.Type returnType = function.getReturnType();
            Intrinsics.checkNotNullExpressionValue(returnType, "returnType");
            return returnType;
        } else if (function.hasReturnTypeId()) {
            return typeTable.get(function.getReturnTypeId());
        } else {
            throw new IllegalStateException("No returnType in ProtoBuf.Function".toString());
        }
    }

    @g
    public static final List<ProtoBuf.Type> supertypes(@g ProtoBuf.Class r32, @g TypeTable typeTable) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(r32, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        List<ProtoBuf.Type> supertypeList = r32.getSupertypeList();
        if (!(!supertypeList.isEmpty())) {
            supertypeList = null;
        }
        if (supertypeList == null) {
            List<Integer> supertypeIdList = r32.getSupertypeIdList();
            Intrinsics.checkNotNullExpressionValue(supertypeIdList, "supertypeIdList");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supertypeIdList, 10);
            supertypeList = new ArrayList<>(collectionSizeOrDefault);
            for (Integer it : supertypeIdList) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                supertypeList.add(typeTable.get(it.intValue()));
            }
        }
        return supertypeList;
    }

    @h
    public static final ProtoBuf.Type type(@g ProtoBuf.Type.Argument argument, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(argument, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (argument.hasType()) {
            return argument.getType();
        }
        if (argument.hasTypeId()) {
            return typeTable.get(argument.getTypeId());
        }
        return null;
    }

    @g
    public static final ProtoBuf.Type underlyingType(@g ProtoBuf.TypeAlias typeAlias, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(typeAlias, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (typeAlias.hasUnderlyingType()) {
            ProtoBuf.Type underlyingType = typeAlias.getUnderlyingType();
            Intrinsics.checkNotNullExpressionValue(underlyingType, "underlyingType");
            return underlyingType;
        } else if (typeAlias.hasUnderlyingTypeId()) {
            return typeTable.get(typeAlias.getUnderlyingTypeId());
        } else {
            throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
        }
    }

    @g
    public static final List<ProtoBuf.Type> upperBounds(@g ProtoBuf.TypeParameter typeParameter, @g TypeTable typeTable) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(typeParameter, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        List<ProtoBuf.Type> upperBoundList = typeParameter.getUpperBoundList();
        if (!(!upperBoundList.isEmpty())) {
            upperBoundList = null;
        }
        if (upperBoundList == null) {
            List<Integer> upperBoundIdList = typeParameter.getUpperBoundIdList();
            Intrinsics.checkNotNullExpressionValue(upperBoundIdList, "upperBoundIdList");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(upperBoundIdList, 10);
            upperBoundList = new ArrayList<>(collectionSizeOrDefault);
            for (Integer it : upperBoundIdList) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                upperBoundList.add(typeTable.get(it.intValue()));
            }
        }
        return upperBoundList;
    }

    @h
    public static final ProtoBuf.Type varargElementType(@g ProtoBuf.ValueParameter valueParameter, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(valueParameter, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (valueParameter.hasVarargElementType()) {
            return valueParameter.getVarargElementType();
        }
        if (valueParameter.hasVarargElementTypeId()) {
            return typeTable.get(valueParameter.getVarargElementTypeId());
        }
        return null;
    }

    public static final boolean hasReceiver(@g ProtoBuf.Property property) {
        Intrinsics.checkNotNullParameter(property, "<this>");
        return property.hasReceiverType() || property.hasReceiverTypeId();
    }

    @h
    public static final ProtoBuf.Type receiverType(@g ProtoBuf.Property property, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(property, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (property.hasReceiverType()) {
            return property.getReceiverType();
        }
        if (property.hasReceiverTypeId()) {
            return typeTable.get(property.getReceiverTypeId());
        }
        return null;
    }

    @g
    public static final ProtoBuf.Type type(@g ProtoBuf.ValueParameter valueParameter, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(valueParameter, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (valueParameter.hasType()) {
            ProtoBuf.Type type = valueParameter.getType();
            Intrinsics.checkNotNullExpressionValue(type, "type");
            return type;
        } else if (valueParameter.hasTypeId()) {
            return typeTable.get(valueParameter.getTypeId());
        } else {
            throw new IllegalStateException("No type in ProtoBuf.ValueParameter".toString());
        }
    }

    @g
    public static final ProtoBuf.Type returnType(@g ProtoBuf.Property property, @g TypeTable typeTable) {
        Intrinsics.checkNotNullParameter(property, "<this>");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        if (property.hasReturnType()) {
            ProtoBuf.Type returnType = property.getReturnType();
            Intrinsics.checkNotNullExpressionValue(returnType, "returnType");
            return returnType;
        } else if (property.hasReturnTypeId()) {
            return typeTable.get(property.getReturnTypeId());
        } else {
            throw new IllegalStateException("No returnType in ProtoBuf.Property".toString());
        }
    }
}
