package com.tangxiaolv.telegramgallery;

import android.graphics.drawable.BitmapDrawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* compiled from: LruCache.java */
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<String, BitmapDrawable> f56760a;

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap<String, ArrayList<String>> f56761b;

    /* renamed from: c  reason: collision with root package name */
    private int f56762c;

    /* renamed from: d  reason: collision with root package name */
    private int f56763d;

    public l(int i4) {
        if (i4 > 0) {
            this.f56763d = i4;
            this.f56760a = new LinkedHashMap<>(0, 0.75f, true);
            this.f56761b = new LinkedHashMap<>();
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int i(String str, BitmapDrawable bitmapDrawable) {
        int k10 = k(str, bitmapDrawable);
        if (k10 >= 0) {
            return k10;
        }
        throw new IllegalStateException("Negative size: " + str + "=" + bitmapDrawable);
    }

    private void l(int i4, String str) {
        ArrayList<String> arrayList;
        synchronized (this) {
            Iterator<Map.Entry<String, BitmapDrawable>> it = this.f56760a.entrySet().iterator();
            while (it.hasNext() && this.f56762c > i4 && !this.f56760a.isEmpty()) {
                Map.Entry<String, BitmapDrawable> next = it.next();
                String key = next.getKey();
                if (str == null || !str.equals(key)) {
                    BitmapDrawable value = next.getValue();
                    this.f56762c -= i(key, value);
                    it.remove();
                    String[] split = key.split("@");
                    if (split.length > 1 && (arrayList = this.f56761b.get(split[0])) != null) {
                        arrayList.remove(split[1]);
                        if (arrayList.isEmpty()) {
                            this.f56761b.remove(split[0]);
                        }
                    }
                    b(true, key, value, null);
                }
            }
        }
    }

    public boolean a(String str) {
        return this.f56760a.containsKey(str);
    }

    protected void b(boolean z9, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
    }

    public final void c() {
        l(-1, null);
    }

    public final BitmapDrawable d(String str) {
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            BitmapDrawable bitmapDrawable = this.f56760a.get(str);
            if (bitmapDrawable != null) {
                return bitmapDrawable;
            }
            return null;
        }
    }

    public ArrayList<String> e(String str) {
        ArrayList<String> arrayList = this.f56761b.get(str);
        if (arrayList != null) {
            return new ArrayList<>(arrayList);
        }
        return null;
    }

    public final synchronized int f() {
        return this.f56763d;
    }

    public BitmapDrawable g(String str, BitmapDrawable bitmapDrawable) {
        BitmapDrawable put;
        if (str != null && bitmapDrawable != null) {
            synchronized (this) {
                this.f56762c += i(str, bitmapDrawable);
                put = this.f56760a.put(str, bitmapDrawable);
                if (put != null) {
                    this.f56762c -= i(str, put);
                }
            }
            String[] split = str.split("@");
            if (split.length > 1) {
                ArrayList<String> arrayList = this.f56761b.get(split[0]);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f56761b.put(split[0], arrayList);
                }
                if (!arrayList.contains(split[1])) {
                    arrayList.add(split[1]);
                }
            }
            if (put != null) {
                b(false, str, put, bitmapDrawable);
            }
            l(this.f56763d, str);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final BitmapDrawable h(String str) {
        BitmapDrawable remove;
        ArrayList<String> arrayList;
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            remove = this.f56760a.remove(str);
            if (remove != null) {
                this.f56762c -= i(str, remove);
            }
        }
        if (remove != null) {
            String[] split = str.split("@");
            if (split.length > 1 && (arrayList = this.f56761b.get(split[0])) != null) {
                arrayList.remove(split[1]);
                if (arrayList.isEmpty()) {
                    this.f56761b.remove(split[0]);
                }
            }
            b(false, str, remove, null);
        }
        return remove;
    }

    public final synchronized int j() {
        return this.f56762c;
    }

    protected int k(String str, BitmapDrawable bitmapDrawable) {
        return 1;
    }
}
