package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import m8.g;

/* compiled from: BuiltInsBinaryVersion.kt */
/* loaded from: classes4.dex */
public final class BuiltInsBinaryVersion extends BinaryVersion {
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final BuiltInsBinaryVersion INSTANCE = new BuiltInsBinaryVersion(1, 0, 7);
    @JvmField
    @g
    public static final BuiltInsBinaryVersion INVALID_VERSION = new BuiltInsBinaryVersion(new int[0]);

    /* compiled from: BuiltInsBinaryVersion.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final BuiltInsBinaryVersion readFrom(@g InputStream stream) {
            int collectionSizeOrDefault;
            int[] intArray;
            Intrinsics.checkNotNullParameter(stream, "stream");
            DataInputStream dataInputStream = new DataInputStream(stream);
            IntRange intRange = new IntRange(1, dataInputStream.readInt());
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<Integer> it = intRange.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                arrayList.add(Integer.valueOf(dataInputStream.readInt()));
            }
            intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
            return new BuiltInsBinaryVersion(Arrays.copyOf(intArray, intArray.length));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuiltInsBinaryVersion(@g int... numbers) {
        super(Arrays.copyOf(numbers, numbers.length));
        Intrinsics.checkNotNullParameter(numbers, "numbers");
    }

    public boolean isCompatible() {
        return isCompatibleTo(INSTANCE);
    }
}
