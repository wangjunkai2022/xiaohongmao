package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public class IgnorePropertiesUtil {

    /* loaded from: classes2.dex */
    public static final class Checker implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f15956c = 1;

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f15957a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<String> f15958b;

        private Checker(Set<String> set, Set<String> set2) {
            this.f15957a = set == null ? Collections.emptySet() : set;
            this.f15958b = set2;
        }

        public static Checker construct(Set<String> set, Set<String> set2) {
            return new Checker(set, set2);
        }

        public boolean shouldIgnore(Object obj) {
            Set<String> set = this.f15958b;
            return !(set == null || set.contains(obj)) || this.f15957a.contains(obj);
        }
    }

    public static Checker a(Set<String> set, Set<String> set2) {
        if (set2 == null && (set == null || set.isEmpty())) {
            return null;
        }
        return Checker.construct(set, set2);
    }

    public static Set<String> b(Set<String> set, Set<String> set2) {
        if (set == null) {
            return set2;
        }
        if (set2 == null) {
            return set;
        }
        HashSet hashSet = new HashSet();
        for (String str : set2) {
            if (set.contains(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    public static boolean c(Object obj, Collection<String> collection, Collection<String> collection2) {
        if (collection == null && collection2 == null) {
            return false;
        }
        if (collection2 == null) {
            return collection.contains(obj);
        }
        if (collection == null) {
            return !collection2.contains(obj);
        }
        return !collection2.contains(obj) || collection.contains(obj);
    }
}
