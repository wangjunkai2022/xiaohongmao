package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public enum TriState {
    YES,
    NO,
    UNSET;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11041a;

        static {
            int[] iArr = new int[TriState.values().length];
            f11041a = iArr;
            try {
                iArr[TriState.YES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11041a[TriState.NO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11041a[TriState.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @v1.e
    public static TriState fromDbValue(int value) {
        if (value != 1) {
            if (value != 2) {
                return UNSET;
            }
            return NO;
        }
        return YES;
    }

    @v1.e
    public boolean asBoolean() {
        int i4 = a.f11041a[ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    throw new IllegalStateException("Unrecognized TriState value: " + this);
                }
                throw new IllegalStateException("No boolean equivalent for UNSET");
            }
            return false;
        }
        return true;
    }

    @v1.e
    @h
    public Boolean asBooleanObject() {
        int i4 = a.f11041a[ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return null;
                }
                throw new IllegalStateException("Unrecognized TriState value: " + this);
            }
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    @v1.e
    public int getDbValue() {
        int i4 = a.f11041a[ordinal()];
        int i10 = 1;
        if (i4 != 1) {
            i10 = 2;
            if (i4 != 2) {
                return 3;
            }
        }
        return i10;
    }

    @v1.e
    public boolean isSet() {
        return this != UNSET;
    }

    @v1.e
    public static TriState valueOf(boolean bool) {
        return bool ? YES : NO;
    }

    @v1.e
    public static TriState valueOf(@h Boolean bool) {
        return bool != null ? valueOf(bool.booleanValue()) : UNSET;
    }

    @v1.e
    public boolean asBoolean(boolean defaultValue) {
        int i4 = a.f11041a[ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return defaultValue;
                }
                throw new IllegalStateException("Unrecognized TriState value: " + this);
            }
            return false;
        }
        return true;
    }
}
