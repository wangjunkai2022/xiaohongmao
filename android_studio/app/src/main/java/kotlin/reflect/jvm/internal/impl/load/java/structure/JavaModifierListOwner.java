package kotlin.reflect.jvm.internal.impl.load.java.structure;

import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import m8.g;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaModifierListOwner extends JavaElement {
    @g
    Visibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isStatic();
}
