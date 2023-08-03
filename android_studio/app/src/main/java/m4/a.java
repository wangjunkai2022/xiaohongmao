package m4;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.a;
import com.im.freechat.domain.CacheFileType;
import com.im.freechat.domain.r;
import java.io.File;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;

/* compiled from: CacheManagerImpl.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\t\u001a\u00020\u0003H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0016J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0016R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lm4/a;", "Lcom/im/freechat/domain/a;", "", "", "c", "d", "filePath", "Lcom/im/freechat/domain/CacheFileType;", "g", "path", "f", "Lcom/im/freechat/domain/r;", "a", "types", "", "b", "Landroid/content/Context;", "context", "Landroid/content/Context;", "e", "()Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a implements com.im.freechat.domain.a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Context f86942a;

    /* renamed from: b  reason: collision with root package name */
    private final String f86943b;

    public a(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f86942a = context;
        this.f86943b = context.getCacheDir().getAbsolutePath();
    }

    private final List<String> c() {
        String cachePath = this.f86943b;
        Intrinsics.checkNotNullExpressionValue(cachePath, "cachePath");
        return f(cachePath);
    }

    private final List<String> d() {
        File[] externalFilesDirs = this.f86942a.getExternalFilesDirs(null);
        if (externalFilesDirs == null) {
            externalFilesDirs = new File[0];
        }
        ArrayList arrayList = new ArrayList();
        for (File file : externalFilesDirs) {
            String path = file.getPath();
            Intrinsics.checkNotNullExpressionValue(path, "it.path");
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, f(path));
        }
        return arrayList;
    }

    private final List<String> f(String str) {
        List<String> listOf;
        List<String> emptyList;
        File file = new File(str);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file2 : listFiles) {
                    String absolutePath = file2.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath, "it.absolutePath");
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList, f(absolutePath));
                }
                return arrayList;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(file.getAbsolutePath());
        return listOf;
    }

    private final CacheFileType g(String str) {
        boolean contains$default;
        boolean startsWith;
        boolean startsWith2;
        boolean startsWith3;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) a.InterfaceC0048a.f8693b, false, 2, (Object) null);
        if (contains$default) {
            return CacheFileType.IMAGE;
        }
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(new File(str).getName());
        if (contentTypeFor != null) {
            CacheFileType cacheFileType = CacheFileType.IMAGE;
            startsWith = StringsKt__StringsJVMKt.startsWith(contentTypeFor, cacheFileType.name(), true);
            if (startsWith) {
                return cacheFileType;
            }
            CacheFileType cacheFileType2 = CacheFileType.VIDEO;
            startsWith2 = StringsKt__StringsJVMKt.startsWith(contentTypeFor, cacheFileType2.name(), true);
            if (startsWith2) {
                return cacheFileType2;
            }
            CacheFileType cacheFileType3 = CacheFileType.AUDIO;
            startsWith3 = StringsKt__StringsJVMKt.startsWith(contentTypeFor, cacheFileType3.name(), true);
            return startsWith3 ? cacheFileType3 : CacheFileType.OTHER;
        }
        return CacheFileType.OTHER;
    }

    @Override // com.im.freechat.domain.a
    @g
    public List<r> a() {
        List plus;
        plus = CollectionsKt___CollectionsKt.plus((Collection) c(), (Iterable) d());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : plus) {
            CacheFileType g4 = g((String) obj);
            Object obj2 = linkedHashMap.get(g4);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(g4, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            CacheFileType cacheFileType = (CacheFileType) entry.getKey();
            long j4 = 0;
            for (String str : (Iterable) entry.getValue()) {
                j4 += new File(str).length();
            }
            arrayList.add(new r(cacheFileType, j4, false, 4, null));
        }
        return arrayList;
    }

    @Override // com.im.freechat.domain.a
    public void b(@g List<? extends CacheFileType> types) {
        List plus;
        Intrinsics.checkNotNullParameter(types, "types");
        plus = CollectionsKt___CollectionsKt.plus((Collection) c(), (Iterable) d());
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : plus) {
            if (types.contains(g((String) obj))) {
                arrayList.add(obj);
            }
        }
        for (String str : arrayList) {
            new File(str).delete();
        }
    }

    @g
    public final Context e() {
        return this.f86942a;
    }
}
