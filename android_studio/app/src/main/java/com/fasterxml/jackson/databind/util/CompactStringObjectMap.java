package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class CompactStringObjectMap implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15938d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final CompactStringObjectMap f15939e = new CompactStringObjectMap(1, 0, new Object[4]);

    /* renamed from: a  reason: collision with root package name */
    private final int f15940a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15941b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f15942c;

    private CompactStringObjectMap(int i4, int i10, Object[] objArr) {
        this.f15940a = i4;
        this.f15941b = i10;
        this.f15942c = objArr;
    }

    private final Object a(String str, int i4, Object obj) {
        if (obj == null) {
            return null;
        }
        int i10 = this.f15940a + 1;
        int i11 = ((i4 >> 1) + i10) << 1;
        Object obj2 = this.f15942c[i11];
        if (str.equals(obj2)) {
            return this.f15942c[i11 + 1];
        }
        if (obj2 != null) {
            int i12 = (i10 + (i10 >> 1)) << 1;
            int i13 = this.f15941b + i12;
            while (i12 < i13) {
                Object obj3 = this.f15942c[i12];
                if (obj3 == str || str.equals(obj3)) {
                    return this.f15942c[i12 + 1];
                }
                i12 += 2;
            }
        }
        return null;
    }

    private static final int b(int i4) {
        if (i4 <= 5) {
            return 8;
        }
        if (i4 <= 12) {
            return 16;
        }
        int i10 = 32;
        while (i10 < i4 + (i4 >> 2)) {
            i10 += i10;
        }
        return i10;
    }

    public static <T> CompactStringObjectMap construct(Map<String, T> map) {
        if (map.isEmpty()) {
            return f15939e;
        }
        int b10 = b(map.size());
        int i4 = b10 - 1;
        int i10 = (b10 >> 1) + b10;
        Object[] objArr = new Object[i10 * 2];
        int i11 = 0;
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                int hashCode = key.hashCode() & i4;
                int i12 = hashCode + hashCode;
                if (objArr[i12] != null) {
                    i12 = ((hashCode >> 1) + b10) << 1;
                    if (objArr[i12] != null) {
                        i12 = (i10 << 1) + i11;
                        i11 += 2;
                        if (i12 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i12] = key;
                objArr[i12 + 1] = entry.getValue();
            }
        }
        return new CompactStringObjectMap(i4, i11, objArr);
    }

    public Object find(String str) {
        int hashCode = str.hashCode() & this.f15940a;
        int i4 = hashCode << 1;
        Object obj = this.f15942c[i4];
        if (obj != str && !str.equals(obj)) {
            return a(str, hashCode, obj);
        }
        return this.f15942c[i4 + 1];
    }

    public Object findCaseInsensitive(String str) {
        int length = this.f15942c.length;
        for (int i4 = 0; i4 < length; i4 += 2) {
            Object obj = this.f15942c[i4];
            if (obj != null && ((String) obj).equalsIgnoreCase(str)) {
                return this.f15942c[i4 + 1];
            }
        }
        return null;
    }

    public List<String> keys() {
        int length = this.f15942c.length;
        ArrayList arrayList = new ArrayList(length >> 2);
        for (int i4 = 0; i4 < length; i4 += 2) {
            Object obj = this.f15942c[i4];
            if (obj != null) {
                arrayList.add((String) obj);
            }
        }
        return arrayList;
    }
}
