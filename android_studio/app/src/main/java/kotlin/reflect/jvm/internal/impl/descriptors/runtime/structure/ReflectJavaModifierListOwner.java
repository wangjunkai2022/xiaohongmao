package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Modifier;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner;
import m8.g;

/* compiled from: ReflectJavaModifierListOwner.kt */
/* loaded from: classes4.dex */
public interface ReflectJavaModifierListOwner extends JavaModifierListOwner {

    /* compiled from: ReflectJavaModifierListOwner.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @g
        public static Visibility getVisibility(@g ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            int modifiers = reflectJavaModifierListOwner.getModifiers();
            if (Modifier.isPublic(modifiers)) {
                return Visibilities.Public.INSTANCE;
            }
            if (Modifier.isPrivate(modifiers)) {
                return Visibilities.Private.INSTANCE;
            }
            if (Modifier.isProtected(modifiers)) {
                return Modifier.isStatic(modifiers) ? JavaVisibilities.ProtectedStaticVisibility.INSTANCE : JavaVisibilities.ProtectedAndPackage.INSTANCE;
            }
            return JavaVisibilities.PackageVisibility.INSTANCE;
        }

        public static boolean isAbstract(@g ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            return Modifier.isAbstract(reflectJavaModifierListOwner.getModifiers());
        }

        public static boolean isFinal(@g ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            return Modifier.isFinal(reflectJavaModifierListOwner.getModifiers());
        }

        public static boolean isStatic(@g ReflectJavaModifierListOwner reflectJavaModifierListOwner) {
            return Modifier.isStatic(reflectJavaModifierListOwner.getModifiers());
        }
    }

    int getModifiers();
}
