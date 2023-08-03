package com.facebook.imagepipeline.common;

import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: RotationOptions.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    public static final int f12203c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f12204d = 90;

    /* renamed from: e  reason: collision with root package name */
    public static final int f12205e = 180;

    /* renamed from: f  reason: collision with root package name */
    public static final int f12206f = 270;

    /* renamed from: g  reason: collision with root package name */
    private static final int f12207g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f12208h = -2;

    /* renamed from: i  reason: collision with root package name */
    private static final e f12209i = new e(-1, false);

    /* renamed from: j  reason: collision with root package name */
    private static final e f12210j = new e(-2, false);

    /* renamed from: k  reason: collision with root package name */
    private static final e f12211k = new e(-1, true);

    /* renamed from: a  reason: collision with root package name */
    private final int f12212a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12213b;

    /* compiled from: RotationOptions.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface a {
    }

    private e(int rotation, boolean canDeferUntilRendered) {
        this.f12212a = rotation;
        this.f12213b = canDeferUntilRendered;
    }

    public static e a() {
        return f12209i;
    }

    public static e b() {
        return f12211k;
    }

    public static e d() {
        return f12210j;
    }

    public static e e(int angle) {
        return new e(angle, false);
    }

    public boolean c() {
        return this.f12213b;
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof e) {
            e eVar = (e) other;
            return this.f12212a == eVar.f12212a && this.f12213b == eVar.f12213b;
        }
        return false;
    }

    public int f() {
        if (!h()) {
            return this.f12212a;
        }
        throw new IllegalStateException("Rotation is set to use EXIF");
    }

    public boolean g() {
        return this.f12212a != -2;
    }

    public boolean h() {
        return this.f12212a == -1;
    }

    public int hashCode() {
        return com.facebook.common.util.b.h(Integer.valueOf(this.f12212a), Boolean.valueOf(this.f12213b));
    }

    public String toString() {
        return String.format(null, "%d defer:%b", Integer.valueOf(this.f12212a), Boolean.valueOf(this.f12213b));
    }
}
