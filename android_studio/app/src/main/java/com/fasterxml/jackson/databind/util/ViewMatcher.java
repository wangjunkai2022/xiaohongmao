package com.fasterxml.jackson.databind.util;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class ViewMatcher implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f15989a = 1;

    /* renamed from: b  reason: collision with root package name */
    protected static final ViewMatcher f15990b = new ViewMatcher();

    /* loaded from: classes2.dex */
    private static final class a extends ViewMatcher implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f15991d = 1;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?>[] f15992c;

        public a(Class<?>[] clsArr) {
            this.f15992c = clsArr;
        }

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            int length = this.f15992c.length;
            for (int i4 = 0; i4 < length; i4++) {
                Class<?> cls2 = this.f15992c[i4];
                if (cls == cls2 || cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    private static final class b extends ViewMatcher {

        /* renamed from: d  reason: collision with root package name */
        private static final long f15993d = 1;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?> f15994c;

        public b(Class<?> cls) {
            this.f15994c = cls;
        }

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            Class<?> cls2 = this.f15994c;
            return cls == cls2 || cls2.isAssignableFrom(cls);
        }
    }

    public static ViewMatcher construct(Class<?>[] clsArr) {
        if (clsArr == null) {
            return f15990b;
        }
        int length = clsArr.length;
        if (length != 0) {
            if (length != 1) {
                return new a(clsArr);
            }
            return new b(clsArr[0]);
        }
        return f15990b;
    }

    public boolean isVisibleForView(Class<?> cls) {
        return false;
    }
}
