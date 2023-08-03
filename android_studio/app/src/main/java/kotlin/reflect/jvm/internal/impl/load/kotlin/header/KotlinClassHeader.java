package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import m8.g;
import m8.h;

/* compiled from: KotlinClassHeader.kt */
/* loaded from: classes4.dex */
public final class KotlinClassHeader {
    @h
    private final String[] data;
    private final int extraInt;
    @h
    private final String extraString;
    @h
    private final String[] incompatibleData;
    @g
    private final Kind kind;
    @g
    private final JvmMetadataVersion metadataVersion;
    @h
    private final String packageName;
    @h
    private final byte[] serializedIr;
    @h
    private final String[] strings;

    /* compiled from: KotlinClassHeader.kt */
    /* loaded from: classes4.dex */
    public enum Kind {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);
        
        @g
        public static final Companion Companion = new Companion(null);
        @g
        private static final Map<Integer, Kind> entryById;
        private final int id;

        /* compiled from: KotlinClassHeader.kt */
        /* loaded from: classes4.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @g
            public final Kind getById(int i4) {
                Kind kind = (Kind) Kind.entryById.get(Integer.valueOf(i4));
                return kind == null ? Kind.UNKNOWN : kind;
            }
        }

        static {
            int mapCapacity;
            int coerceAtLeast;
            Kind[] values = values();
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Kind kind : values) {
                linkedHashMap.put(Integer.valueOf(kind.id), kind);
            }
            entryById = linkedHashMap;
        }

        Kind(int i4) {
            this.id = i4;
        }

        @JvmStatic
        @g
        public static final Kind getById(int i4) {
            return Companion.getById(i4);
        }
    }

    public KotlinClassHeader(@g Kind kind, @g JvmMetadataVersion metadataVersion, @h String[] strArr, @h String[] strArr2, @h String[] strArr3, @h String str, int i4, @h String str2, @h byte[] bArr) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        this.kind = kind;
        this.metadataVersion = metadataVersion;
        this.data = strArr;
        this.incompatibleData = strArr2;
        this.strings = strArr3;
        this.extraString = str;
        this.extraInt = i4;
        this.packageName = str2;
        this.serializedIr = bArr;
    }

    private final boolean has(int i4, int i10) {
        return (i4 & i10) != 0;
    }

    @h
    public final String[] getData() {
        return this.data;
    }

    @h
    public final String[] getIncompatibleData() {
        return this.incompatibleData;
    }

    @g
    public final Kind getKind() {
        return this.kind;
    }

    @g
    public final JvmMetadataVersion getMetadataVersion() {
        return this.metadataVersion;
    }

    @h
    public final String getMultifileClassName() {
        String str = this.extraString;
        if (this.kind == Kind.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    @g
    public final List<String> getMultifilePartNames() {
        List<String> emptyList;
        String[] strArr = this.data;
        if (!(this.kind == Kind.MULTIFILE_CLASS)) {
            strArr = null;
        }
        List<String> asList = strArr != null ? ArraysKt___ArraysJvmKt.asList(strArr) : null;
        if (asList == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return asList;
    }

    @h
    public final String[] getStrings() {
        return this.strings;
    }

    public final boolean isPreRelease() {
        return has(this.extraInt, 2);
    }

    public final boolean isUnstableFirBinary() {
        return has(this.extraInt, 64) && !has(this.extraInt, 32);
    }

    public final boolean isUnstableJvmIrBinary() {
        return has(this.extraInt, 16) && !has(this.extraInt, 32);
    }

    @g
    public String toString() {
        return this.kind + " version=" + this.metadataVersion;
    }
}
