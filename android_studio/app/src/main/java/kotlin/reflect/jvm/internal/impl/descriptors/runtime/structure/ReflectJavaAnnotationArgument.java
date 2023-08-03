package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaAnnotationArguments.kt */
/* loaded from: classes4.dex */
public abstract class ReflectJavaAnnotationArgument implements JavaAnnotationArgument {
    @g
    public static final Factory Factory = new Factory(null);
    @h
    private final Name name;

    /* compiled from: ReflectJavaAnnotationArguments.kt */
    /* loaded from: classes4.dex */
    public static final class Factory {
        private Factory() {
        }

        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final ReflectJavaAnnotationArgument create(@g Object value, @h Name name) {
            Intrinsics.checkNotNullParameter(value, "value");
            return ReflectClassUtilKt.isEnumClassOrSpecializedEnumEntryClass(value.getClass()) ? new ReflectJavaEnumValueAnnotationArgument(name, (Enum) value) : value instanceof Annotation ? new ReflectJavaAnnotationAsAnnotationArgument(name, (Annotation) value) : value instanceof Object[] ? new ReflectJavaArrayAnnotationArgument(name, (Object[]) value) : value instanceof Class ? new ReflectJavaClassObjectAnnotationArgument(name, (Class) value) : new ReflectJavaLiteralAnnotationArgument(name, value);
        }
    }

    private ReflectJavaAnnotationArgument(Name name) {
        this.name = name;
    }

    public /* synthetic */ ReflectJavaAnnotationArgument(Name name, DefaultConstructorMarker defaultConstructorMarker) {
        this(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument
    @h
    public Name getName() {
        return this.name;
    }
}
