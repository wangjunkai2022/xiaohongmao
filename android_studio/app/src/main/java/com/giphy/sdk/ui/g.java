package com.giphy.sdk.ui;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GiphyRecents.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\t\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0003\u0010\bR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00138@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/giphy/sdk/ui/g;", "", "", "b", "", "term", "e", "a", "Ljava/lang/String;", "SHARED_PREF_FILE", "RECENT_SEARCHES", "", "c", "I", "MAX", "Landroid/content/SharedPreferences;", "d", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "()Ljava/util/List;", "terms", "()I", "count", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f17052a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17053b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17054c;

    /* renamed from: d  reason: collision with root package name */
    private final SharedPreferences f17055d;

    public g(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f17052a = "giphy_searches_file";
        this.f17053b = "recent_searches";
        this.f17054c = 10;
        SharedPreferences sharedPreferences = context.getSharedPreferences("giphy_searches_file", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…LE, Context.MODE_PRIVATE)");
        this.f17055d = sharedPreferences;
    }

    public final void a(@m8.g String term) {
        List mutableList;
        String joinToString$default;
        Object last;
        Intrinsics.checkNotNullParameter(term, "term");
        if (term.length() == 0) {
            return;
        }
        List<String> d4 = d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : d4) {
            if (!Intrinsics.areEqual((String) obj, term)) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        mutableList.add(0, term);
        if (mutableList.size() > this.f17054c) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableList);
            mutableList.remove(last);
        }
        SharedPreferences.Editor edit = this.f17055d.edit();
        String str = this.f17053b;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(mutableList, "|", null, null, 0, null, null, 62, null);
        edit.putString(str, joinToString$default).apply();
    }

    public final void b() {
        this.f17055d.edit().clear().apply();
    }

    public final int c() {
        return d().size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        r0 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r3, new java.lang.String[]{"|"}, false, 0, 6, (java.lang.Object) null);
     */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<java.lang.String> d() {
        /*
            r9 = this;
            android.content.SharedPreferences r0 = r9.f17055d
            java.lang.String r1 = r9.f17053b
            r2 = 0
            java.lang.String r3 = r0.getString(r1, r2)
            if (r3 == 0) goto L1c
            java.lang.String r0 = "|"
            java.lang.String[] r4 = new java.lang.String[]{r0}
            r5 = 0
            r6 = 0
            r7 = 6
            r8 = 0
            java.util.List r0 = kotlin.text.StringsKt.split$default(r3, r4, r5, r6, r7, r8)
            if (r0 == 0) goto L1c
            goto L20
        L1c:
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
        L20:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.g.d():java.util.List");
    }

    public final void e(@m8.g String term) {
        List mutableList;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(term, "term");
        List<String> d4 = d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : d4) {
            if (!Intrinsics.areEqual((String) obj, term)) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        SharedPreferences.Editor edit = this.f17055d.edit();
        String str = this.f17053b;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(mutableList, "|", null, null, 0, null, null, 62, null);
        edit.putString(str, joinToString$default).apply();
    }
}
