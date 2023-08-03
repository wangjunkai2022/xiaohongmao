package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: JavaNullabilityAnnotationSettings.kt */
/* loaded from: classes4.dex */
public interface NullabilityAnnotationStates<T> {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: JavaNullabilityAnnotationSettings.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final NullabilityAnnotationStates EMPTY;

        static {
            Map emptyMap;
            emptyMap = MapsKt__MapsKt.emptyMap();
            EMPTY = new NullabilityAnnotationStatesImpl(emptyMap);
        }

        private Companion() {
        }

        @g
        public final NullabilityAnnotationStates getEMPTY() {
            return EMPTY;
        }
    }

    @h
    T get(@g FqName fqName);
}
