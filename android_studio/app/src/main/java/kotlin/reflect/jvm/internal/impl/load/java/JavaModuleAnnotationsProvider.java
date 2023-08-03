package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: JavaModuleAnnotationsProvider.kt */
/* loaded from: classes4.dex */
public interface JavaModuleAnnotationsProvider {
    @h
    List<JavaAnnotation> getAnnotationsForModuleOwnerOfClass(@g ClassId classId);
}
