package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public class JavaDescriptorVisibilities {
    @g
    public static final DescriptorVisibility PACKAGE_VISIBILITY;
    @g
    public static final DescriptorVisibility PROTECTED_AND_PACKAGE;
    @g
    public static final DescriptorVisibility PROTECTED_STATIC_VISIBILITY;
    @g
    private static final Map<Visibility, DescriptorVisibility> visibilitiesMapping;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 5 || i4 == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 5 || i4 == 6) ? 2 : 3];
        switch (i4) {
            case 1:
                objArr[0] = TypedValues.Transition.S_FROM;
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = "second";
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (i4 == 5 || i4 == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (i4 == 2 || i4 == 3) {
            objArr[2] = "areInSamePackage";
        } else if (i4 == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (i4 != 5 && i4 != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String format = String.format(str, objArr);
        if (i4 != 5 && i4 != 6) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    static {
        DelegatedDescriptorVisibility delegatedDescriptorVisibility = new DelegatedDescriptorVisibility(JavaVisibilities.PackageVisibility.INSTANCE) { // from class: kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities.1
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                Object[] objArr = new Object[3];
                if (i4 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = TypedValues.Transition.S_FROM;
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
            public boolean isVisible(@h ReceiverValue receiverValue, @g DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, @g DeclarationDescriptor declarationDescriptor, boolean z9) {
                if (declarationDescriptorWithVisibility == null) {
                    $$$reportNull$$$0(0);
                }
                if (declarationDescriptor == null) {
                    $$$reportNull$$$0(1);
                }
                return JavaDescriptorVisibilities.areInSamePackage(declarationDescriptorWithVisibility, declarationDescriptor);
            }
        };
        PACKAGE_VISIBILITY = delegatedDescriptorVisibility;
        DelegatedDescriptorVisibility delegatedDescriptorVisibility2 = new DelegatedDescriptorVisibility(JavaVisibilities.ProtectedStaticVisibility.INSTANCE) { // from class: kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities.2
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                Object[] objArr = new Object[3];
                if (i4 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = TypedValues.Transition.S_FROM;
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
            public boolean isVisible(@h ReceiverValue receiverValue, @g DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, @g DeclarationDescriptor declarationDescriptor, boolean z9) {
                if (declarationDescriptorWithVisibility == null) {
                    $$$reportNull$$$0(0);
                }
                if (declarationDescriptor == null) {
                    $$$reportNull$$$0(1);
                }
                return JavaDescriptorVisibilities.isVisibleForProtectedAndPackage(receiverValue, declarationDescriptorWithVisibility, declarationDescriptor);
            }
        };
        PROTECTED_STATIC_VISIBILITY = delegatedDescriptorVisibility2;
        DelegatedDescriptorVisibility delegatedDescriptorVisibility3 = new DelegatedDescriptorVisibility(JavaVisibilities.ProtectedAndPackage.INSTANCE) { // from class: kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities.3
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                Object[] objArr = new Object[3];
                if (i4 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = TypedValues.Transition.S_FROM;
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
            public boolean isVisible(@h ReceiverValue receiverValue, @g DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, @g DeclarationDescriptor declarationDescriptor, boolean z9) {
                if (declarationDescriptorWithVisibility == null) {
                    $$$reportNull$$$0(0);
                }
                if (declarationDescriptor == null) {
                    $$$reportNull$$$0(1);
                }
                return JavaDescriptorVisibilities.isVisibleForProtectedAndPackage(receiverValue, declarationDescriptorWithVisibility, declarationDescriptor);
            }
        };
        PROTECTED_AND_PACKAGE = delegatedDescriptorVisibility3;
        visibilitiesMapping = new HashMap();
        recordVisibilityMapping(delegatedDescriptorVisibility);
        recordVisibilityMapping(delegatedDescriptorVisibility2);
        recordVisibilityMapping(delegatedDescriptorVisibility3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean areInSamePackage(@g DeclarationDescriptor declarationDescriptor, @g DeclarationDescriptor declarationDescriptor2) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(2);
        }
        if (declarationDescriptor2 == null) {
            $$$reportNull$$$0(3);
        }
        PackageFragmentDescriptor packageFragmentDescriptor = (PackageFragmentDescriptor) DescriptorUtils.getParentOfType(declarationDescriptor, PackageFragmentDescriptor.class, false);
        PackageFragmentDescriptor packageFragmentDescriptor2 = (PackageFragmentDescriptor) DescriptorUtils.getParentOfType(declarationDescriptor2, PackageFragmentDescriptor.class, false);
        return (packageFragmentDescriptor2 == null || packageFragmentDescriptor == null || !packageFragmentDescriptor.getFqName().equals(packageFragmentDescriptor2.getFqName())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isVisibleForProtectedAndPackage(@h ReceiverValue receiverValue, @g DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, @g DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptorWithVisibility == null) {
            $$$reportNull$$$0(0);
        }
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(1);
        }
        if (areInSamePackage(DescriptorUtils.unwrapFakeOverrideToAnyDeclaration(declarationDescriptorWithVisibility), declarationDescriptor)) {
            return true;
        }
        return DescriptorVisibilities.PROTECTED.isVisible(receiverValue, declarationDescriptorWithVisibility, declarationDescriptor, false);
    }

    private static void recordVisibilityMapping(DescriptorVisibility descriptorVisibility) {
        visibilitiesMapping.put(descriptorVisibility.getDelegate(), descriptorVisibility);
    }

    @g
    public static DescriptorVisibility toDescriptorVisibility(@g Visibility visibility) {
        if (visibility == null) {
            $$$reportNull$$$0(4);
        }
        DescriptorVisibility descriptorVisibility = visibilitiesMapping.get(visibility);
        if (descriptorVisibility == null) {
            DescriptorVisibility descriptorVisibility2 = DescriptorVisibilities.toDescriptorVisibility(visibility);
            if (descriptorVisibility2 == null) {
                $$$reportNull$$$0(5);
            }
            return descriptorVisibility2;
        }
        return descriptorVisibility;
    }
}
