package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.KotlinMetadataFinder;
import m8.g;
import m8.h;

/* compiled from: KotlinClassFinder.kt */
/* loaded from: classes4.dex */
public interface KotlinClassFinder extends KotlinMetadataFinder {

    /* compiled from: KotlinClassFinder.kt */
    /* loaded from: classes4.dex */
    public static abstract class Result {

        /* compiled from: KotlinClassFinder.kt */
        /* loaded from: classes4.dex */
        public static final class ClassFileContent extends Result {
            @g
            private final byte[] content;

            @g
            public final byte[] getContent() {
                return this.content;
            }
        }

        /* compiled from: KotlinClassFinder.kt */
        /* loaded from: classes4.dex */
        public static final class KotlinClass extends Result {
            @h
            private final byte[] byteContent;
            @g
            private final KotlinJvmBinaryClass kotlinJvmBinaryClass;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public KotlinClass(@g KotlinJvmBinaryClass kotlinJvmBinaryClass, @h byte[] bArr) {
                super(null);
                Intrinsics.checkNotNullParameter(kotlinJvmBinaryClass, "kotlinJvmBinaryClass");
                this.kotlinJvmBinaryClass = kotlinJvmBinaryClass;
                this.byteContent = bArr;
            }

            @g
            public final KotlinJvmBinaryClass getKotlinJvmBinaryClass() {
                return this.kotlinJvmBinaryClass;
            }

            public /* synthetic */ KotlinClass(KotlinJvmBinaryClass kotlinJvmBinaryClass, byte[] bArr, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this(kotlinJvmBinaryClass, (i4 & 2) != 0 ? null : bArr);
            }
        }

        private Result() {
        }

        public /* synthetic */ Result(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @h
        public final KotlinJvmBinaryClass toKotlinJvmBinaryClass() {
            KotlinClass kotlinClass = this instanceof KotlinClass ? (KotlinClass) this : null;
            if (kotlinClass != null) {
                return kotlinClass.getKotlinJvmBinaryClass();
            }
            return null;
        }
    }

    @h
    Result findKotlinClassOrContent(@g JavaClass javaClass);

    @h
    Result findKotlinClassOrContent(@g ClassId classId);
}
