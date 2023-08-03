package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.ModalityUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.DynamicType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.NotNullTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SimpleTypeWithEnhancement;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DynamicTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RawTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContextKt;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemInferenceExtensionContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariableTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: ClassicTypeSystemContext.kt */
/* loaded from: classes4.dex */
public interface ClassicTypeSystemContext extends TypeSystemCommonBackendContext, TypeSystemInferenceExtensionContext {

    /* compiled from: ClassicTypeSystemContext.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static boolean areEqualTypeConstructors(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker c12, @g TypeConstructorMarker c22) {
            Intrinsics.checkNotNullParameter(c12, "c1");
            Intrinsics.checkNotNullParameter(c22, "c2");
            if (c12 instanceof TypeConstructor) {
                if (c22 instanceof TypeConstructor) {
                    return Intrinsics.areEqual(c12, c22);
                }
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c22 + ", " + Reflection.getOrCreateKotlinClass(c22.getClass())).toString());
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c12 + ", " + Reflection.getOrCreateKotlinClass(c12.getClass())).toString());
        }

        public static int argumentsCount(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeArgumentListMarker asArgumentList(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                return (TypeArgumentListMarker) receiver;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static CapturedTypeMarker asCapturedType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                if (receiver instanceof SimpleTypeWithEnhancement) {
                    return classicTypeSystemContext.asCapturedType(((SimpleTypeWithEnhancement) receiver).getOrigin());
                }
                if (receiver instanceof NewCapturedType) {
                    return (NewCapturedType) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static DefinitelyNotNullTypeMarker asDefinitelyNotNullType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                if (receiver instanceof DefinitelyNotNullType) {
                    return (DefinitelyNotNullType) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static DynamicTypeMarker asDynamicType(@g ClassicTypeSystemContext classicTypeSystemContext, @g FlexibleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof FlexibleType) {
                if (receiver instanceof DynamicType) {
                    return (DynamicType) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static FlexibleTypeMarker asFlexibleType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                UnwrappedType unwrap = ((KotlinType) receiver).unwrap();
                if (unwrap instanceof FlexibleType) {
                    return (FlexibleType) unwrap;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static RawTypeMarker asRawType(@g ClassicTypeSystemContext classicTypeSystemContext, @g FlexibleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof FlexibleType) {
                if (receiver instanceof RawType) {
                    return (RawType) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static SimpleTypeMarker asSimpleType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                UnwrappedType unwrap = ((KotlinType) receiver).unwrap();
                if (unwrap instanceof SimpleType) {
                    return (SimpleType) unwrap;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeArgumentMarker asTypeArgument(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return TypeUtilsKt.asTypeProjection((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static SimpleTypeMarker captureFromArguments(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker type, @g CaptureStatus status) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            if (type instanceof SimpleType) {
                return NewCapturedTypeKt.captureFromArguments((SimpleType) type, status);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + type + ", " + Reflection.getOrCreateKotlinClass(type.getClass())).toString());
        }

        @g
        public static CaptureStatus captureStatus(@g ClassicTypeSystemContext classicTypeSystemContext, @g CapturedTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).getCaptureStatus();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker createFlexibleType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker lowerBound, @g SimpleTypeMarker upperBound) {
            Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
            Intrinsics.checkNotNullParameter(upperBound, "upperBound");
            if (lowerBound instanceof SimpleType) {
                if (upperBound instanceof SimpleType) {
                    return KotlinTypeFactory.flexibleType((SimpleType) lowerBound, (SimpleType) upperBound);
                }
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + classicTypeSystemContext + ", " + Reflection.getOrCreateKotlinClass(classicTypeSystemContext.getClass())).toString());
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + classicTypeSystemContext + ", " + Reflection.getOrCreateKotlinClass(classicTypeSystemContext.getClass())).toString());
        }

        @h
        public static List<SimpleTypeMarker> fastCorrespondingSupertypes(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver, @g TypeConstructorMarker constructor) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(constructor, "constructor");
            return TypeSystemInferenceExtensionContext.DefaultImpls.fastCorrespondingSupertypes(classicTypeSystemContext, receiver, constructor);
        }

        @g
        public static TypeArgumentMarker get(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeArgumentListMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.get(classicTypeSystemContext, receiver, i4);
        }

        @g
        public static TypeArgumentMarker getArgument(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments().get(i4);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static TypeArgumentMarker getArgumentOrNull(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.getArgumentOrNull(classicTypeSystemContext, receiver, i4);
        }

        @g
        public static List<TypeArgumentMarker> getArguments(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static FqNameUnsafe getClassFqNameUnsafe(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Intrinsics.checkNotNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return DescriptorUtilsKt.getFqNameUnsafe((ClassDescriptor) declarationDescriptor);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeParameterMarker getParameter(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                TypeParameterDescriptor typeParameterDescriptor = ((TypeConstructor) receiver).getParameters().get(i4);
                Intrinsics.checkNotNullExpressionValue(typeParameterDescriptor, "this.parameters[index]");
                return typeParameterDescriptor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static List<TypeParameterMarker> getParameters(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                List<TypeParameterDescriptor> parameters = ((TypeConstructor) receiver).getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters, "this.parameters");
                return parameters;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static PrimitiveType getPrimitiveArrayType(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Intrinsics.checkNotNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return KotlinBuiltIns.getPrimitiveArrayType((ClassDescriptor) declarationDescriptor);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static PrimitiveType getPrimitiveType(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Intrinsics.checkNotNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return KotlinBuiltIns.getPrimitiveType((ClassDescriptor) declarationDescriptor);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker getRepresentativeUpperBound(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeParameterMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                return TypeUtilsKt.getRepresentativeUpperBound((TypeParameterDescriptor) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker getType(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeArgumentMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeProjection) {
                return ((TypeProjection) receiver).getType().unwrap();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static TypeParameterMarker getTypeParameter(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeVariableTypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof NewTypeVariableConstructor) {
                return ((NewTypeVariableConstructor) receiver).getOriginalTypeParameter();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static TypeParameterMarker getTypeParameterClassifier(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                if (declarationDescriptor instanceof TypeParameterDescriptor) {
                    return (TypeParameterDescriptor) declarationDescriptor;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static KotlinTypeMarker getUnsubstitutedUnderlyingType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return InlineClassesUtilsKt.unsubstitutedUnderlyingType((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static List<KotlinTypeMarker> getUpperBounds(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeParameterMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                List<KotlinType> upperBounds = ((TypeParameterDescriptor) receiver).getUpperBounds();
                Intrinsics.checkNotNullExpressionValue(upperBounds, "this.upperBounds");
                return upperBounds;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeVariance getVariance(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeArgumentMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeProjection) {
                Variance projectionKind = ((TypeProjection) receiver).getProjectionKind();
                Intrinsics.checkNotNullExpressionValue(projectionKind, "this.projectionKind");
                return TypeSystemContextKt.convertVariance(projectionKind);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean hasAnnotation(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver, @g FqName fqName) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getAnnotations().hasAnnotation(fqName);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean hasFlexibleNullability(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.hasFlexibleNullability(classicTypeSystemContext, receiver);
        }

        public static boolean hasRecursiveBounds(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeParameterMarker receiver, @h TypeConstructorMarker typeConstructorMarker) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                if (typeConstructorMarker == null ? true : typeConstructorMarker instanceof TypeConstructor) {
                    return TypeUtilsKt.hasTypeParameterRecursiveBounds$default((TypeParameterDescriptor) receiver, (TypeConstructor) typeConstructorMarker, null, 4, null);
                }
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean identicalArguments(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker a10, @g SimpleTypeMarker b10) {
            Intrinsics.checkNotNullParameter(a10, "a");
            Intrinsics.checkNotNullParameter(b10, "b");
            if (a10 instanceof SimpleType) {
                if (b10 instanceof SimpleType) {
                    return ((SimpleType) a10).getArguments() == ((SimpleType) b10).getArguments();
                }
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + b10 + ", " + Reflection.getOrCreateKotlinClass(b10.getClass())).toString());
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + a10 + ", " + Reflection.getOrCreateKotlinClass(a10.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker intersectTypes(@g ClassicTypeSystemContext classicTypeSystemContext, @g List<? extends KotlinTypeMarker> types) {
            Intrinsics.checkNotNullParameter(types, "types");
            return IntersectionTypeKt.intersectTypes(types);
        }

        public static boolean isAnyConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return KotlinBuiltIns.isTypeConstructorForGivenClass((TypeConstructor) receiver, StandardNames.FqNames.any);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isCapturedType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isCapturedType(classicTypeSystemContext, receiver);
        }

        public static boolean isClassType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isClassType(classicTypeSystemContext, receiver);
        }

        public static boolean isClassTypeConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).getDeclarationDescriptor() instanceof ClassDescriptor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isCommonFinalClassConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                ClassDescriptor classDescriptor = declarationDescriptor instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor : null;
                return (classDescriptor == null || !ModalityUtilsKt.isFinalClass(classDescriptor) || classDescriptor.getKind() == ClassKind.ENUM_ENTRY || classDescriptor.getKind() == ClassKind.ANNOTATION_CLASS) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isDefinitelyNotNullType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isDefinitelyNotNullType(classicTypeSystemContext, receiver);
        }

        public static boolean isDenotable(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).isDenotable();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isDynamic(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isDynamic(classicTypeSystemContext, receiver);
        }

        public static boolean isError(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return KotlinTypeKt.isError((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isInlineClass(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                ClassDescriptor classDescriptor = declarationDescriptor instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor : null;
                return (classDescriptor != null ? classDescriptor.getValueClassRepresentation() : null) instanceof InlineClassRepresentation;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isIntegerLiteralType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isIntegerLiteralType(classicTypeSystemContext, receiver);
        }

        public static boolean isIntegerLiteralTypeConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return receiver instanceof IntegerLiteralTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isIntersection(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return receiver instanceof IntersectionTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isMarkedNullable(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isMarkedNullable(classicTypeSystemContext, receiver);
        }

        public static boolean isNotNullTypeParameter(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return receiver instanceof NotNullTypeParameter;
        }

        public static boolean isNothing(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isNothing(classicTypeSystemContext, receiver);
        }

        public static boolean isNothingConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return KotlinBuiltIns.isTypeConstructorForGivenClass((TypeConstructor) receiver, StandardNames.FqNames.nothing);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isNullableType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return TypeUtils.isNullableType((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isOldCapturedType(@g ClassicTypeSystemContext classicTypeSystemContext, @g CapturedTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return receiver instanceof CapturedType;
        }

        public static boolean isPrimitiveType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof KotlinType) {
                return KotlinBuiltIns.isPrimitiveType((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isProjectionNotNull(@g ClassicTypeSystemContext classicTypeSystemContext, @g CapturedTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).isProjectionNotNull();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isSingleClassifierType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                if (!KotlinTypeKt.isError((KotlinType) receiver)) {
                    SimpleType simpleType = (SimpleType) receiver;
                    if (!(simpleType.getConstructor().getDeclarationDescriptor() instanceof TypeAliasDescriptor) && (simpleType.getConstructor().getDeclarationDescriptor() != null || (receiver instanceof CapturedType) || (receiver instanceof NewCapturedType) || (receiver instanceof DefinitelyNotNullType) || (simpleType.getConstructor() instanceof IntegerLiteralTypeConstructor) || isSingleClassifierTypeWithEnhancement(classicTypeSystemContext, receiver))) {
                        return true;
                    }
                }
                return false;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        private static boolean isSingleClassifierTypeWithEnhancement(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker) {
            return (simpleTypeMarker instanceof SimpleTypeWithEnhancement) && classicTypeSystemContext.isSingleClassifierType(((SimpleTypeWithEnhancement) simpleTypeMarker).getOrigin());
        }

        public static boolean isStarProjection(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeArgumentMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeProjection) {
                return ((TypeProjection) receiver).isStarProjection();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isStubType(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                return TypeUtilsKt.isStubType((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isStubTypeForBuilderInference(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                return TypeUtilsKt.isStubTypeForBuilderInference((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isTypeVariableType(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return (receiver instanceof UnwrappedType) && (((UnwrappedType) receiver).getConstructor() instanceof NewTypeVariableConstructor);
        }

        public static boolean isUnderKotlinPackage(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                return declarationDescriptor != null && KotlinBuiltIns.isUnderKotlinPackage(declarationDescriptor);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static SimpleTypeMarker lowerBound(@g ClassicTypeSystemContext classicTypeSystemContext, @g FlexibleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof FlexibleType) {
                return ((FlexibleType) receiver).getLowerBound();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static SimpleTypeMarker lowerBoundIfFlexible(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.lowerBoundIfFlexible(classicTypeSystemContext, receiver);
        }

        @h
        public static KotlinTypeMarker lowerType(@g ClassicTypeSystemContext classicTypeSystemContext, @g CapturedTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).getLowerType();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker makeDefinitelyNotNullOrNotNull(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            UnwrappedType makeDefinitelyNotNullOrNotNullInternal;
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof UnwrappedType) {
                makeDefinitelyNotNullOrNotNullInternal = ClassicTypeSystemContextKt.makeDefinitelyNotNullOrNotNullInternal((UnwrappedType) receiver);
                return makeDefinitelyNotNullOrNotNullInternal;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker makeNullable(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemCommonBackendContext.DefaultImpls.makeNullable(classicTypeSystemContext, receiver);
        }

        @g
        public static TypeCheckerState newTypeCheckerState(@g ClassicTypeSystemContext classicTypeSystemContext, boolean z9, boolean z10) {
            return ClassicTypeCheckerStateKt.createClassicTypeCheckerState$default(z9, z10, classicTypeSystemContext, null, null, 24, null);
        }

        @g
        public static SimpleTypeMarker original(@g ClassicTypeSystemContext classicTypeSystemContext, @g DefinitelyNotNullTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof DefinitelyNotNullType) {
                return ((DefinitelyNotNullType) receiver).getOriginal();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static int parametersCount(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static Collection<KotlinTypeMarker> possibleIntegerTypes(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            TypeConstructorMarker typeConstructor = classicTypeSystemContext.typeConstructor(receiver);
            if (typeConstructor instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) typeConstructor).getPossibleTypes();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeArgumentMarker projection(@g ClassicTypeSystemContext classicTypeSystemContext, @g CapturedTypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof NewCapturedTypeConstructor) {
                return ((NewCapturedTypeConstructor) receiver).getProjection();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static int size(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeArgumentListMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.size(classicTypeSystemContext, receiver);
        }

        @g
        public static TypeCheckerState.SupertypesPolicy substitutionSupertypePolicy(@g final ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker type) {
            Intrinsics.checkNotNullParameter(type, "type");
            if (type instanceof SimpleType) {
                final TypeSubstitutor buildSubstitutor = TypeConstructorSubstitution.Companion.create((KotlinType) type).buildSubstitutor();
                return new TypeCheckerState.SupertypesPolicy.DoCustomTransform() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext$substitutionSupertypePolicy$2
                    @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
                    @g
                    public SimpleTypeMarker transformType(@g TypeCheckerState state, @g KotlinTypeMarker type2) {
                        Intrinsics.checkNotNullParameter(state, "state");
                        Intrinsics.checkNotNullParameter(type2, "type");
                        ClassicTypeSystemContext classicTypeSystemContext2 = ClassicTypeSystemContext.this;
                        TypeSubstitutor typeSubstitutor = buildSubstitutor;
                        SimpleTypeMarker lowerBoundIfFlexible = classicTypeSystemContext2.lowerBoundIfFlexible(type2);
                        Intrinsics.checkNotNull(lowerBoundIfFlexible, "null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType");
                        KotlinType safeSubstitute = typeSubstitutor.safeSubstitute((KotlinType) lowerBoundIfFlexible, Variance.INVARIANT);
                        Intrinsics.checkNotNullExpressionValue(safeSubstitute, "substitutor.safeSubstitu…VARIANT\n                )");
                        SimpleTypeMarker asSimpleType = classicTypeSystemContext2.asSimpleType(safeSubstitute);
                        Intrinsics.checkNotNull(asSimpleType);
                        return asSimpleType;
                    }
                };
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + type + ", " + Reflection.getOrCreateKotlinClass(type.getClass())).toString());
        }

        @g
        public static Collection<KotlinTypeMarker> supertypes(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeConstructorMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeConstructor) {
                Collection<KotlinType> mo1364getSupertypes = ((TypeConstructor) receiver).mo1364getSupertypes();
                Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "this.supertypes");
                return mo1364getSupertypes;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeConstructorMarker typeConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.typeConstructor(classicTypeSystemContext, receiver);
        }

        @g
        public static SimpleTypeMarker upperBound(@g ClassicTypeSystemContext classicTypeSystemContext, @g FlexibleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof FlexibleType) {
                return ((FlexibleType) receiver).getUpperBound();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static SimpleTypeMarker upperBoundIfFlexible(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemInferenceExtensionContext.DefaultImpls.upperBoundIfFlexible(classicTypeSystemContext, receiver);
        }

        @g
        public static SimpleTypeMarker withNullability(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver, boolean z9) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).makeNullableAsSpecified(z9);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        public static boolean isMarkedNullable(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).isMarkedNullable();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeConstructorMarker typeConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).getConstructor();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeVariance getVariance(@g ClassicTypeSystemContext classicTypeSystemContext, @g TypeParameterMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                Variance variance = ((TypeParameterDescriptor) receiver).getVariance();
                Intrinsics.checkNotNullExpressionValue(variance, "this.variance");
                return TypeSystemContextKt.convertVariance(variance);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static KotlinTypeMarker withNullability(@g ClassicTypeSystemContext classicTypeSystemContext, @g KotlinTypeMarker receiver, boolean z9) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return classicTypeSystemContext.withNullability((SimpleTypeMarker) receiver, z9);
            }
            if (receiver instanceof FlexibleTypeMarker) {
                FlexibleTypeMarker flexibleTypeMarker = (FlexibleTypeMarker) receiver;
                return classicTypeSystemContext.createFlexibleType(classicTypeSystemContext.withNullability(classicTypeSystemContext.lowerBound(flexibleTypeMarker), z9), classicTypeSystemContext.withNullability(classicTypeSystemContext.upperBound(flexibleTypeMarker), z9));
            }
            throw new IllegalStateException("sealed".toString());
        }

        @g
        public static CapturedTypeConstructorMarker typeConstructor(@g ClassicTypeSystemContext classicTypeSystemContext, @g CapturedTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).getConstructor();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    @h
    CapturedTypeMarker asCapturedType(@g SimpleTypeMarker simpleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    @h
    SimpleTypeMarker asSimpleType(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    KotlinTypeMarker createFlexibleType(@g SimpleTypeMarker simpleTypeMarker, @g SimpleTypeMarker simpleTypeMarker2);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    boolean isSingleClassifierType(@g SimpleTypeMarker simpleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    @g
    SimpleTypeMarker lowerBound(@g FlexibleTypeMarker flexibleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    @g
    TypeConstructorMarker typeConstructor(@g SimpleTypeMarker simpleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    @g
    SimpleTypeMarker upperBound(@g FlexibleTypeMarker flexibleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    @g
    SimpleTypeMarker withNullability(@g SimpleTypeMarker simpleTypeMarker, boolean z9);
}
