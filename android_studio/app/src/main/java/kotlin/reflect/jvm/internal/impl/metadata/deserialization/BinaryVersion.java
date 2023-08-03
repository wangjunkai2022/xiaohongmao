package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: BinaryVersion.kt */
/* loaded from: classes4.dex */
public abstract class BinaryVersion {
    @g
    public static final Companion Companion = new Companion(null);
    private final int major;
    private final int minor;
    @g
    private final int[] numbers;
    private final int patch;
    @g
    private final List<Integer> rest;

    /* compiled from: BinaryVersion.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BinaryVersion(@g int... numbers) {
        Integer orNull;
        Integer orNull2;
        Integer orNull3;
        List<Integer> emptyList;
        List asList;
        Intrinsics.checkNotNullParameter(numbers, "numbers");
        this.numbers = numbers;
        orNull = ArraysKt___ArraysKt.getOrNull(numbers, 0);
        this.major = orNull != null ? orNull.intValue() : -1;
        orNull2 = ArraysKt___ArraysKt.getOrNull(numbers, 1);
        this.minor = orNull2 != null ? orNull2.intValue() : -1;
        orNull3 = ArraysKt___ArraysKt.getOrNull(numbers, 2);
        this.patch = orNull3 != null ? orNull3.intValue() : -1;
        if (numbers.length > 3) {
            if (numbers.length <= 1024) {
                asList = ArraysKt___ArraysJvmKt.asList(numbers);
                emptyList = CollectionsKt___CollectionsKt.toList(asList.subList(3, numbers.length));
            } else {
                throw new IllegalArgumentException("BinaryVersion with length more than 1024 are not supported. Provided length " + numbers.length + '.');
            }
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        this.rest = emptyList;
    }

    public boolean equals(@h Object obj) {
        if (obj != null && Intrinsics.areEqual(getClass(), obj.getClass())) {
            BinaryVersion binaryVersion = (BinaryVersion) obj;
            if (this.major == binaryVersion.major && this.minor == binaryVersion.minor && this.patch == binaryVersion.patch && Intrinsics.areEqual(this.rest, binaryVersion.rest)) {
                return true;
            }
        }
        return false;
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public int hashCode() {
        int i4 = this.major;
        int i10 = i4 + (i4 * 31) + this.minor;
        int i11 = i10 + (i10 * 31) + this.patch;
        return i11 + (i11 * 31) + this.rest.hashCode();
    }

    public final boolean isAtLeast(@g BinaryVersion version) {
        Intrinsics.checkNotNullParameter(version, "version");
        return isAtLeast(version.major, version.minor, version.patch);
    }

    public final boolean isAtMost(int i4, int i10, int i11) {
        int i12 = this.major;
        if (i12 < i4) {
            return true;
        }
        if (i12 > i4) {
            return false;
        }
        int i13 = this.minor;
        if (i13 < i10) {
            return true;
        }
        return i13 <= i10 && this.patch <= i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isCompatibleTo(@g BinaryVersion ourVersion) {
        Intrinsics.checkNotNullParameter(ourVersion, "ourVersion");
        int i4 = this.major;
        if (i4 == 0) {
            if (ourVersion.major == 0 && this.minor == ourVersion.minor) {
                return true;
            }
        } else if (i4 == ourVersion.major && this.minor <= ourVersion.minor) {
            return true;
        }
        return false;
    }

    @g
    public final int[] toArray() {
        return this.numbers;
    }

    @g
    public String toString() {
        String joinToString$default;
        int[] array = toArray();
        ArrayList arrayList = new ArrayList();
        int length = array.length;
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = array[i4];
            if (!(i10 != -1)) {
                break;
            }
            arrayList.add(Integer.valueOf(i10));
        }
        if (arrayList.isEmpty()) {
            return "unknown";
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ".", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    public final boolean isAtLeast(int i4, int i10, int i11) {
        int i12 = this.major;
        if (i12 > i4) {
            return true;
        }
        if (i12 < i4) {
            return false;
        }
        int i13 = this.minor;
        if (i13 > i10) {
            return true;
        }
        return i13 >= i10 && this.patch >= i11;
    }
}
