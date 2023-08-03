package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f31171a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31172b;
    @d3.e

    /* renamed from: c  reason: collision with root package name */
    private final int f31173c;
    @d3.d

    /* renamed from: d  reason: collision with root package name */
    private final int f31174d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Integer f31175e;

    /* renamed from: f  reason: collision with root package name */
    private final int f31176f;

    /* renamed from: g  reason: collision with root package name */
    private final long f31177g;

    /* renamed from: h  reason: collision with root package name */
    private final long f31178h;

    /* renamed from: i  reason: collision with root package name */
    private final long f31179i;

    /* renamed from: j  reason: collision with root package name */
    private final long f31180j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final PendingIntent f31181k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final PendingIntent f31182l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final PendingIntent f31183m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final PendingIntent f31184n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f31185o = false;

    private a(@NonNull String str, int i4, @d3.e int i10, @d3.d int i11, @Nullable Integer num, int i12, long j4, long j10, long j11, long j12, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable PendingIntent pendingIntent3, @Nullable PendingIntent pendingIntent4) {
        this.f31171a = str;
        this.f31172b = i4;
        this.f31173c = i10;
        this.f31174d = i11;
        this.f31175e = num;
        this.f31176f = i12;
        this.f31177g = j4;
        this.f31178h = j10;
        this.f31179i = j11;
        this.f31180j = j12;
        this.f31181k = pendingIntent;
        this.f31182l = pendingIntent2;
        this.f31183m = pendingIntent3;
        this.f31184n = pendingIntent4;
    }

    public static a l(@NonNull String str, int i4, @d3.e int i10, @d3.d int i11, @Nullable Integer num, int i12, long j4, long j10, long j11, long j12, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable PendingIntent pendingIntent3, @Nullable PendingIntent pendingIntent4) {
        return new a(str, i4, i10, i11, num, i12, j4, j10, j11, j12, pendingIntent, pendingIntent2, pendingIntent3, pendingIntent4);
    }

    private final boolean o(d dVar) {
        return dVar.a() && this.f31179i <= this.f31180j;
    }

    public int a() {
        return this.f31172b;
    }

    public long b() {
        return this.f31177g;
    }

    @Nullable
    public Integer c() {
        return this.f31175e;
    }

    @d3.d
    public int d() {
        return this.f31174d;
    }

    public boolean e(@d3.b int i4) {
        return k(d.c(i4)) != null;
    }

    public boolean f(@NonNull d dVar) {
        return k(dVar) != null;
    }

    @NonNull
    public String g() {
        return this.f31171a;
    }

    public long h() {
        return this.f31178h;
    }

    @d3.e
    public int i() {
        return this.f31173c;
    }

    public int j() {
        return this.f31176f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final PendingIntent k(d dVar) {
        if (dVar.b() == 0) {
            PendingIntent pendingIntent = this.f31182l;
            if (pendingIntent != null) {
                return pendingIntent;
            }
            if (o(dVar)) {
                return this.f31184n;
            }
            return null;
        }
        if (dVar.b() == 1) {
            PendingIntent pendingIntent2 = this.f31181k;
            if (pendingIntent2 != null) {
                return pendingIntent2;
            }
            if (o(dVar)) {
                return this.f31183m;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m() {
        this.f31185o = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n() {
        return this.f31185o;
    }
}
