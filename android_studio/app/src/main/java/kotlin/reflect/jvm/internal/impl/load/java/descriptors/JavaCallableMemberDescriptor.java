package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface JavaCallableMemberDescriptor extends CallableMemberDescriptor {
    @g
    JavaCallableMemberDescriptor enhance(@h KotlinType kotlinType, @g List<KotlinType> list, @g KotlinType kotlinType2, @h Pair<CallableDescriptor.UserDataKey<?>, ?> pair);
}
