package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import m8.g;
import m8.h;

/* compiled from: resolvers.kt */
/* loaded from: classes4.dex */
public interface TypeParameterResolver {

    /* compiled from: resolvers.kt */
    /* loaded from: classes4.dex */
    public static final class EMPTY implements TypeParameterResolver {
        @g
        public static final EMPTY INSTANCE = new EMPTY();

        private EMPTY() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver
        @h
        public TypeParameterDescriptor resolveTypeParameter(@g JavaTypeParameter javaTypeParameter) {
            Intrinsics.checkNotNullParameter(javaTypeParameter, "javaTypeParameter");
            return null;
        }
    }

    @h
    TypeParameterDescriptor resolveTypeParameter(@g JavaTypeParameter javaTypeParameter);
}
