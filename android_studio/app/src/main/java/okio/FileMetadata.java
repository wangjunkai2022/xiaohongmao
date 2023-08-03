package okio;

import androidx.exifinterface.media.ExifInterface;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.e3;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClasses;
import m8.g;
import m8.h;

/* compiled from: FileMetadata.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001Bo\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u0018\b\u0002\u0010\f\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\u0010\u000fJu\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0018\b\u0002\u0010\f\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\u0010\u001cJ'\u0010\u001d\u001a\u0004\u0018\u0001H\u001e\"\b\b\u0000\u0010\u001e*\u00020\u00012\u000e\u0010\u001f\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u001e0\u000e¢\u0006\u0002\u0010 J\b\u0010!\u001a\u00020\"H\u0016R\u0015\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R!\u0010\f\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0015R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0016\u0010\u0011R\u0015\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0017\u0010\u0011R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0018\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006#"}, d2 = {"Lokio/FileMetadata;", "", "isRegularFile", "", "isDirectory", "symlinkTarget", "Lokio/Path;", f.f47745b, "", "createdAtMillis", "lastModifiedAtMillis", "lastAccessedAtMillis", "extras", "", "Lkotlin/reflect/KClass;", "(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V", "getCreatedAtMillis", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getExtras", "()Ljava/util/Map;", "()Z", "getLastAccessedAtMillis", "getLastModifiedAtMillis", "getSize", "getSymlinkTarget", "()Lokio/Path;", "copy", "(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Lokio/FileMetadata;", e3.b.f83159n, ExifInterface.GPS_DIRECTION_TRUE, "type", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "toString", "", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FileMetadata {
    @h
    private final Long createdAtMillis;
    @g
    private final Map<KClass<?>, Object> extras;
    private final boolean isDirectory;
    private final boolean isRegularFile;
    @h
    private final Long lastAccessedAtMillis;
    @h
    private final Long lastModifiedAtMillis;
    @h
    private final Long size;
    @h
    private final Path symlinkTarget;

    public FileMetadata() {
        this(false, false, null, null, null, null, null, null, 255, null);
    }

    public FileMetadata(boolean z9, boolean z10, @h Path path, @h Long l10, @h Long l11, @h Long l12, @h Long l13, @g Map<KClass<?>, ? extends Object> extras) {
        Map<KClass<?>, Object> map;
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.isRegularFile = z9;
        this.isDirectory = z10;
        this.symlinkTarget = path;
        this.size = l10;
        this.createdAtMillis = l11;
        this.lastModifiedAtMillis = l12;
        this.lastAccessedAtMillis = l13;
        map = MapsKt__MapsKt.toMap(extras);
        this.extras = map;
    }

    @g
    public final FileMetadata copy(boolean z9, boolean z10, @h Path path, @h Long l10, @h Long l11, @h Long l12, @h Long l13, @g Map<KClass<?>, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        return new FileMetadata(z9, z10, path, l10, l11, l12, l13, extras);
    }

    @h
    public final <T> T extra(@g KClass<? extends T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        Object obj = this.extras.get(type);
        if (obj == null) {
            return null;
        }
        return (T) KClasses.cast(type, obj);
    }

    @h
    public final Long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    @g
    public final Map<KClass<?>, Object> getExtras() {
        return this.extras;
    }

    @h
    public final Long getLastAccessedAtMillis() {
        return this.lastAccessedAtMillis;
    }

    @h
    public final Long getLastModifiedAtMillis() {
        return this.lastModifiedAtMillis;
    }

    @h
    public final Long getSize() {
        return this.size;
    }

    @h
    public final Path getSymlinkTarget() {
        return this.symlinkTarget;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    public final boolean isRegularFile() {
        return this.isRegularFile;
    }

    @g
    public String toString() {
        String joinToString$default;
        ArrayList arrayList = new ArrayList();
        if (this.isRegularFile) {
            arrayList.add("isRegularFile");
        }
        if (this.isDirectory) {
            arrayList.add("isDirectory");
        }
        Long l10 = this.size;
        if (l10 != null) {
            arrayList.add(Intrinsics.stringPlus("byteCount=", l10));
        }
        Long l11 = this.createdAtMillis;
        if (l11 != null) {
            arrayList.add(Intrinsics.stringPlus("createdAt=", l11));
        }
        Long l12 = this.lastModifiedAtMillis;
        if (l12 != null) {
            arrayList.add(Intrinsics.stringPlus("lastModifiedAt=", l12));
        }
        Long l13 = this.lastAccessedAtMillis;
        if (l13 != null) {
            arrayList.add(Intrinsics.stringPlus("lastAccessedAt=", l13));
        }
        if (!this.extras.isEmpty()) {
            arrayList.add(Intrinsics.stringPlus("extras=", this.extras));
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
        return joinToString$default;
    }

    public /* synthetic */ FileMetadata(boolean z9, boolean z10, Path path, Long l10, Long l11, Long l12, Long l13, Map map, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? false : z9, (i4 & 2) == 0 ? z10 : false, (i4 & 4) != 0 ? null : path, (i4 & 8) != 0 ? null : l10, (i4 & 16) != 0 ? null : l11, (i4 & 32) != 0 ? null : l12, (i4 & 64) == 0 ? l13 : null, (i4 & 128) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }
}
