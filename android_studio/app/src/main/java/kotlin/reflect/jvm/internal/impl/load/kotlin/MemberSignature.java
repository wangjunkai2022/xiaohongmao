package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import m8.g;
import m8.h;

/* compiled from: MemberSignature.kt */
/* loaded from: classes4.dex */
public final class MemberSignature {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final String signature;

    /* compiled from: MemberSignature.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final MemberSignature fromFieldNameAndDesc(@g String name, @g String desc) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(desc, "desc");
            return new MemberSignature(name + '#' + desc, null);
        }

        @JvmStatic
        @g
        public final MemberSignature fromJvmMemberSignature(@g JvmMemberSignature signature) {
            Intrinsics.checkNotNullParameter(signature, "signature");
            if (signature instanceof JvmMemberSignature.Method) {
                return fromMethodNameAndDesc(signature.getName(), signature.getDesc());
            }
            if (signature instanceof JvmMemberSignature.Field) {
                return fromFieldNameAndDesc(signature.getName(), signature.getDesc());
            }
            throw new NoWhenBranchMatchedException();
        }

        @JvmStatic
        @g
        public final MemberSignature fromMethod(@g NameResolver nameResolver, @g JvmProtoBuf.JvmMethodSignature signature) {
            Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
            Intrinsics.checkNotNullParameter(signature, "signature");
            return fromMethodNameAndDesc(nameResolver.getString(signature.getName()), nameResolver.getString(signature.getDesc()));
        }

        @JvmStatic
        @g
        public final MemberSignature fromMethodNameAndDesc(@g String name, @g String desc) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(desc, "desc");
            return new MemberSignature(name + desc, null);
        }

        @JvmStatic
        @g
        public final MemberSignature fromMethodSignatureAndParameterIndex(@g MemberSignature signature, int i4) {
            Intrinsics.checkNotNullParameter(signature, "signature");
            return new MemberSignature(signature.getSignature() + '@' + i4, null);
        }
    }

    private MemberSignature(String str) {
        this.signature = str;
    }

    public /* synthetic */ MemberSignature(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MemberSignature) && Intrinsics.areEqual(this.signature, ((MemberSignature) obj).signature);
    }

    @g
    public final String getSignature() {
        return this.signature;
    }

    public int hashCode() {
        return this.signature.hashCode();
    }

    @g
    public String toString() {
        return "MemberSignature(signature=" + this.signature + ')';
    }
}
