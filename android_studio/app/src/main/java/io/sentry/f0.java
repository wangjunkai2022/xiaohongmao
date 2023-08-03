package io.sentry;

/* compiled from: HttpStatusCodeRange.java */
/* loaded from: classes4.dex */
public final class f0 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f83192c = 500;

    /* renamed from: d  reason: collision with root package name */
    public static final int f83193d = 599;

    /* renamed from: a  reason: collision with root package name */
    private final int f83194a;

    /* renamed from: b  reason: collision with root package name */
    private final int f83195b;

    public f0(int i4, int i10) {
        this.f83194a = i4;
        this.f83195b = i10;
    }

    public boolean a(int i4) {
        return i4 >= this.f83194a && i4 <= this.f83195b;
    }

    public f0(int i4) {
        this.f83194a = i4;
        this.f83195b = i4;
    }
}
