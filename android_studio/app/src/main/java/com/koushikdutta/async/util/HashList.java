package com.koushikdutta.async.util;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Set;

/* loaded from: classes3.dex */
public class HashList<T> {

    /* renamed from: a  reason: collision with root package name */
    Hashtable<String, TaggedList<T>> f45162a = new Hashtable<>();

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized void a(String str, T t9) {
        ArrayList<T> c10 = c(str);
        if (c10 == null) {
            c10 = new TaggedList<>();
            this.f45162a.put(str, c10);
        }
        c10.add(t9);
    }

    public synchronized boolean b(String str) {
        boolean z9;
        ArrayList<T> c10 = c(str);
        if (c10 != null) {
            z9 = c10.size() > 0;
        }
        return z9;
    }

    public synchronized ArrayList<T> c(String str) {
        return this.f45162a.get(str);
    }

    public Set<String> d() {
        return this.f45162a.keySet();
    }

    public synchronized T e(String str) {
        TaggedList<T> taggedList = this.f45162a.get(str);
        if (taggedList == null) {
            return null;
        }
        if (taggedList.size() == 0) {
            return null;
        }
        return taggedList.remove(taggedList.size() - 1);
    }

    public synchronized ArrayList<T> f(String str) {
        return this.f45162a.remove(str);
    }

    public synchronized boolean g(String str, T t9) {
        TaggedList<T> taggedList = this.f45162a.get(str);
        if (taggedList == null) {
            return false;
        }
        taggedList.remove(t9);
        return taggedList.size() == 0;
    }

    public synchronized int h() {
        return this.f45162a.size();
    }

    public synchronized <V> V i(String str) {
        TaggedList<T> taggedList = this.f45162a.get(str);
        if (taggedList == null) {
            return null;
        }
        return (V) taggedList.tag();
    }

    public synchronized <V> void j(String str, V v9) {
        TaggedList<T> taggedList = this.f45162a.get(str);
        if (taggedList == null) {
            taggedList = new TaggedList<>();
            this.f45162a.put(str, taggedList);
        }
        taggedList.tag(v9);
    }
}
