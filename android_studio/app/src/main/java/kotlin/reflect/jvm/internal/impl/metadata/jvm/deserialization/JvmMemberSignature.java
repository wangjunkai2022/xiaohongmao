package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: JvmMemberSignature.kt */
/* loaded from: classes4.dex */
public abstract class JvmMemberSignature {

    /* compiled from: JvmMemberSignature.kt */
    /* loaded from: classes4.dex */
    public static final class Field extends JvmMemberSignature {
        @g
        private final String desc;
        @g
        private final String name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Field(@g String name, @g String desc) {
            super(null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(desc, "desc");
            this.name = name;
            this.desc = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        @g
        public String asString() {
            return getName() + ':' + getDesc();
        }

        @g
        public final String component1() {
            return getName();
        }

        @g
        public final String component2() {
            return getDesc();
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Field) {
                Field field = (Field) obj;
                return Intrinsics.areEqual(getName(), field.getName()) && Intrinsics.areEqual(getDesc(), field.getDesc());
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        @g
        public String getDesc() {
            return this.desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        @g
        public String getName() {
            return this.name;
        }

        public int hashCode() {
            return (getName().hashCode() * 31) + getDesc().hashCode();
        }
    }

    /* compiled from: JvmMemberSignature.kt */
    /* loaded from: classes4.dex */
    public static final class Method extends JvmMemberSignature {
        @g
        private final String desc;
        @g
        private final String name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Method(@g String name, @g String desc) {
            super(null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(desc, "desc");
            this.name = name;
            this.desc = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        @g
        public String asString() {
            return getName() + getDesc();
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Method) {
                Method method = (Method) obj;
                return Intrinsics.areEqual(getName(), method.getName()) && Intrinsics.areEqual(getDesc(), method.getDesc());
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        @g
        public String getDesc() {
            return this.desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        @g
        public String getName() {
            return this.name;
        }

        public int hashCode() {
            return (getName().hashCode() * 31) + getDesc().hashCode();
        }
    }

    private JvmMemberSignature() {
    }

    public /* synthetic */ JvmMemberSignature(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @g
    public abstract String asString();

    @g
    public abstract String getDesc();

    @g
    public abstract String getName();

    @g
    public final String toString() {
        return asString();
    }
}
