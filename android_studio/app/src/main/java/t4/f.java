package t4;

import com.opensource.svgaplayer.entities.SVGAVideoShapeEntity;
import com.opensource.svgaplayer.proto.FrameEntity;
import com.opensource.svgaplayer.proto.SpriteEntity;
import io.sentry.protocol.s;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.h;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: SVGAVideoSpriteEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0013¢\u0006\u0004\b\u0011\u0010\u0014R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lt4/f;", "", "", "imageKey", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "matteKey", "c", "", "Lt4/g;", s.b.f83844a, "Ljava/util/List;", "a", "()Ljava/util/List;", "Lorg/json/JSONObject;", "obj", "<init>", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/SpriteEntity;", "(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class f {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final String f93845a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final String f93846b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final List<g> f93847c;

    public f(@m8.g JSONObject jSONObject) {
        List<g> list;
        Object first;
        Object last;
        this.f93845a = jSONObject.optString("imageKey");
        this.f93846b = jSONObject.optString("matteKey");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray(s.b.f83844a);
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            for (int i4 = 0; i4 < length; i4++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i4);
                if (optJSONObject != null) {
                    g gVar = new g(optJSONObject);
                    if (!gVar.d().isEmpty()) {
                        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) gVar.d());
                        if (((SVGAVideoShapeEntity) first).k() && arrayList.size() > 0) {
                            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
                            gVar.i(((g) last).d());
                        }
                    }
                    arrayList.add(gVar);
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        this.f93847c = list;
    }

    @m8.g
    public final List<g> a() {
        return this.f93847c;
    }

    @h
    public final String b() {
        return this.f93845a;
    }

    @h
    public final String c() {
        return this.f93846b;
    }

    public f(@m8.g SpriteEntity spriteEntity) {
        List<g> emptyList;
        int collectionSizeOrDefault;
        Object first;
        this.f93845a = spriteEntity.imageKey;
        this.f93846b = spriteEntity.matteKey;
        List<FrameEntity> list = spriteEntity.frames;
        if (list != null) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            emptyList = new ArrayList<>(collectionSizeOrDefault);
            g gVar = null;
            for (FrameEntity it : list) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                g gVar2 = new g(it);
                if (!gVar2.d().isEmpty()) {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) gVar2.d());
                    if (((SVGAVideoShapeEntity) first).k() && gVar != null) {
                        gVar2.i(gVar.d());
                    }
                }
                emptyList.add(gVar2);
                gVar = gVar2;
            }
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        this.f93847c = emptyList;
    }
}
