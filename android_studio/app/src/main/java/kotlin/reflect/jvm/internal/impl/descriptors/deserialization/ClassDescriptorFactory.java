package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ClassDescriptorFactory.kt */
/* loaded from: classes4.dex */
public interface ClassDescriptorFactory {
    @h
    ClassDescriptor createClass(@g ClassId classId);

    @g
    Collection<ClassDescriptor> getAllContributedClassesIfPossible(@g FqName fqName);

    boolean shouldCreateClass(@g FqName fqName, @g Name name);
}
