package com.giphy.sdk.ui;

import android.content.Context;
import android.content.SharedPreferences;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.MediaType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: GiphyRecents.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007R\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0003\u0010\nR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0018¨\u0006\u001e"}, d2 = {"Lcom/giphy/sdk/ui/o;", "", "", "b", "", "id", "e", "Lcom/giphy/sdk/core/models/Media;", "media", "a", "Ljava/lang/String;", "SHARED_PREF_FILE", "RECENT_GIF_IDS", "", "c", "I", "MAX", "Landroid/content/SharedPreferences;", "d", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "()Ljava/util/List;", "ids", "()I", "count", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private final String f17080a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17081b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17082c;

    /* renamed from: d  reason: collision with root package name */
    private final SharedPreferences f17083d;

    public o(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f17080a = "giphy_recents_file";
        this.f17081b = "recent_gif_ids";
        this.f17082c = 10;
        SharedPreferences sharedPreferences = context.getSharedPreferences("giphy_recents_file", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…LE, Context.MODE_PRIVATE)");
        this.f17083d = sharedPreferences;
    }

    public final void a(@m8.g Media media) {
        List mutableList;
        String joinToString$default;
        Object last;
        Intrinsics.checkNotNullParameter(media, "media");
        if (media.getType() == MediaType.emoji) {
            return;
        }
        List<String> d4 = d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : d4) {
            if (!Intrinsics.areEqual((String) obj, media.getId())) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        mutableList.add(0, media.getId());
        if (mutableList.size() > this.f17082c) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableList);
            mutableList.remove(last);
        }
        SharedPreferences.Editor edit = this.f17083d.edit();
        String str = this.f17081b;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(mutableList, "|", null, null, 0, null, null, 62, null);
        edit.putString(str, joinToString$default).apply();
    }

    public final void b() {
        this.f17083d.edit().clear().apply();
    }

    public final int c() {
        return d().size();
    }

    @m8.g
    public final List<String> d() {
        List<String> split$default;
        List<String> emptyList;
        String string = this.f17083d.getString(this.f17081b, null);
        if (string == null) {
            string = "";
        }
        String str = string;
        if (str.length() == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"|"}, false, 0, 6, (Object) null);
        return split$default;
    }

    public final void e(@m8.h String str) {
        List mutableList;
        String joinToString$default;
        List<String> d4 = d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : d4) {
            if (!Intrinsics.areEqual((String) obj, str)) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        SharedPreferences.Editor edit = this.f17083d.edit();
        String str2 = this.f17081b;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(mutableList, "|", null, null, 0, null, null, 62, null);
        edit.putString(str2, joinToString$default).apply();
        if (d().isEmpty()) {
            b();
        }
    }
}
