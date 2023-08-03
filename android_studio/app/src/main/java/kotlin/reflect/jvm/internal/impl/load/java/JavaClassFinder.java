package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Arrays;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: JavaClassFinder.kt */
/* loaded from: classes4.dex */
public interface JavaClassFinder {

    /* compiled from: JavaClassFinder.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ JavaPackage findPackage$default(JavaClassFinder javaClassFinder, FqName fqName, boolean z9, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 2) != 0) {
                    z9 = true;
                }
                return javaClassFinder.findPackage(fqName, z9);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findPackage");
        }
    }

    @h
    JavaClass findClass(@g Request request);

    @h
    JavaPackage findPackage(@g FqName fqName, boolean z9);

    @h
    Set<String> knownClassNamesInPackage(@g FqName fqName);

    /* compiled from: JavaClassFinder.kt */
    /* loaded from: classes4.dex */
    public static final class Request {
        @g
        private final ClassId classId;
        @h
        private final JavaClass outerClass;
        @h
        private final byte[] previouslyFoundClassFileContent;

        public Request(@g ClassId classId, @h byte[] bArr, @h JavaClass javaClass) {
            Intrinsics.checkNotNullParameter(classId, "classId");
            this.classId = classId;
            this.previouslyFoundClassFileContent = bArr;
            this.outerClass = javaClass;
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Request) {
                Request request = (Request) obj;
                return Intrinsics.areEqual(this.classId, request.classId) && Intrinsics.areEqual(this.previouslyFoundClassFileContent, request.previouslyFoundClassFileContent) && Intrinsics.areEqual(this.outerClass, request.outerClass);
            }
            return false;
        }

        @g
        public final ClassId getClassId() {
            return this.classId;
        }

        public int hashCode() {
            int hashCode = this.classId.hashCode() * 31;
            byte[] bArr = this.previouslyFoundClassFileContent;
            int hashCode2 = (hashCode + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31;
            JavaClass javaClass = this.outerClass;
            return hashCode2 + (javaClass != null ? javaClass.hashCode() : 0);
        }

        @g
        public String toString() {
            return "Request(classId=" + this.classId + ", previouslyFoundClassFileContent=" + Arrays.toString(this.previouslyFoundClassFileContent) + ", outerClass=" + this.outerClass + ')';
        }

        public /* synthetic */ Request(ClassId classId, byte[] bArr, JavaClass javaClass, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(classId, (i4 & 2) != 0 ? null : bArr, (i4 & 4) != 0 ? null : javaClass);
        }
    }
}
