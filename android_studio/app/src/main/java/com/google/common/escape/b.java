package com.google.common.escape;

import com.google.common.base.a0;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;

/* compiled from: ArrayBasedEscaperMap.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final char[][] f34013b = (char[][]) Array.newInstance(char.class, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final char[][] f34014a;

    private b(char[][] cArr) {
        this.f34014a = cArr;
    }

    public static b a(Map<Character, String> map) {
        return new b(b(map));
    }

    @h3.d
    static char[][] b(Map<Character, String> map) {
        a0.E(map);
        if (map.isEmpty()) {
            return f34013b;
        }
        char[][] cArr = new char[((Character) Collections.max(map.keySet())).charValue() + 1];
        for (Character ch : map.keySet()) {
            char charValue = ch.charValue();
            cArr[charValue] = map.get(Character.valueOf(charValue)).toCharArray();
        }
        return cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char[][] c() {
        return this.f34014a;
    }
}
