package com.giphy.sdk.ui;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import java.util.List;
import java.util.Random;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* compiled from: Constants.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\u001a\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0006\u0010\u0005\u001a\u00020\u0000\"\u0014\u0010\b\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007\"\u0014\u0010\u000b\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\n\"\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\f8\u0006¢\u0006\f\n\u0004\b\u0002\u0010\r\u001a\u0004\b\u0006\u0010\u000e¨\u0006\u0010"}, d2 = {"", "position", "c", "Landroid/graphics/drawable/Drawable;", "d", "b", "a", "I", "GIF_QUERY_LIMIT", "", "Ljava/lang/String;", "GIPHY_GIF_LINK", "", "Ljava/util/List;", "()Ljava/util/List;", "PLACEHOLDER_COLORS", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f17025a = 25;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final String f17026b = "https://giphy.com/gifs/";
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final List<Integer> f17027c;

    static {
        List<Integer> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf((int) 4293281462L), Integer.valueOf((int) 4288230399L), Integer.valueOf((int) 4278249164L), Integer.valueOf((int) 4278242559L)});
        f17027c = listOf;
    }

    @m8.g
    public static final List<Integer> a() {
        return f17027c;
    }

    public static final int b() {
        List<Integer> list = f17027c;
        return list.get(new Random().nextInt(list.size() - 1)).intValue();
    }

    public static final int c(int i4) {
        List<Integer> list = f17027c;
        return list.get(i4 % list.size()).intValue();
    }

    @m8.g
    public static final Drawable d(int i4) {
        return new ColorDrawable(c(i4));
    }
}
