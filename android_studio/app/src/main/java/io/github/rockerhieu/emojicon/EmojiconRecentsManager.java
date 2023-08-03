package io.github.rockerhieu.emojicon;

import android.content.Context;
import android.content.SharedPreferences;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import java.util.ArrayList;
import java.util.StringTokenizer;

/* loaded from: classes3.dex */
public class EmojiconRecentsManager extends ArrayList<Emojicon> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f69849b = ",";

    /* renamed from: c  reason: collision with root package name */
    private static final String f69850c = "emojicon";

    /* renamed from: d  reason: collision with root package name */
    private static final String f69851d = "recent_emojis";

    /* renamed from: e  reason: collision with root package name */
    private static final String f69852e = "recent_page";

    /* renamed from: f  reason: collision with root package name */
    private static final Object f69853f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static EmojiconRecentsManager f69854g = null;

    /* renamed from: h  reason: collision with root package name */
    private static int f69855h = 40;

    /* renamed from: a  reason: collision with root package name */
    private Context f69856a;

    private EmojiconRecentsManager(Context context) {
        this.f69856a = context.getApplicationContext();
        b();
    }

    private SharedPreferences a() {
        return this.f69856a.getSharedPreferences(f69850c, 0);
    }

    private void b() {
        StringTokenizer stringTokenizer = new StringTokenizer(a().getString(f69851d, ""), f69849b);
        while (stringTokenizer.hasMoreTokens()) {
            add(Emojicon.fromChars(stringTokenizer.nextToken()));
        }
    }

    private void c() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            sb.append(get(i4).getEmoji());
            if (i4 < size - 1) {
                sb.append(f69849b);
            }
        }
        a().edit().putString(f69851d, sb.toString()).commit();
    }

    public static EmojiconRecentsManager getInstance(Context context) {
        if (f69854g == null) {
            synchronized (f69853f) {
                if (f69854g == null) {
                    f69854g = new EmojiconRecentsManager(context);
                }
            }
        }
        return f69854g;
    }

    public static void setMaximumSize(int i4) {
        f69855h = i4;
    }

    public int getRecentPage() {
        return a().getInt(f69852e, 0);
    }

    public void push(Emojicon emojicon) {
        if (contains(emojicon)) {
            super.remove(emojicon);
        }
        add(0, emojicon);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        boolean remove = super.remove(obj);
        c();
        return remove;
    }

    public void setRecentPage(int i4) {
        a().edit().putInt(f69852e, i4).commit();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Emojicon emojicon) {
        boolean add = super.add((EmojiconRecentsManager) emojicon);
        while (size() > f69855h) {
            super.remove(0);
        }
        c();
        return add;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i4, Emojicon emojicon) {
        super.add(i4, (int) emojicon);
        if (i4 == 0) {
            while (true) {
                int size = size();
                int i10 = f69855h;
                if (size <= i10) {
                    break;
                }
                super.remove(i10);
            }
        } else {
            while (size() > f69855h) {
                super.remove(0);
            }
        }
        c();
    }
}
