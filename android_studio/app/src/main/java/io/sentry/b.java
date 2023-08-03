package io.sentry;

import java.io.File;

/* compiled from: Attachment.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: h  reason: collision with root package name */
    private static final String f83022h = "event.attachment";

    /* renamed from: i  reason: collision with root package name */
    private static final String f83023i = "event.view_hierarchy";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private byte[] f83024a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final m1 f83025b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83026c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final String f83027d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final String f83028e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f83029f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String f83030g;

    public b(@m8.g byte[] bArr, @m8.g String str) {
        this(bArr, str, (String) null);
    }

    @m8.g
    public static b a(byte[] bArr) {
        return new b(bArr, "screenshot.png", "image/png", false);
    }

    @m8.g
    public static b b(io.sentry.protocol.x xVar) {
        return new b((m1) xVar, "view-hierarchy.json", "application/json", f83023i, false);
    }

    @m8.h
    public String c() {
        return this.f83030g;
    }

    @m8.h
    public byte[] d() {
        return this.f83024a;
    }

    @m8.h
    public String e() {
        return this.f83028e;
    }

    @m8.g
    public String f() {
        return this.f83027d;
    }

    @m8.h
    public String g() {
        return this.f83026c;
    }

    @m8.h
    public m1 h() {
        return this.f83025b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f83029f;
    }

    public b(@m8.g byte[] bArr, @m8.g String str, @m8.h String str2) {
        this(bArr, str, str2, false);
    }

    public b(@m8.g byte[] bArr, @m8.g String str, @m8.h String str2, boolean z9) {
        this(bArr, str, str2, f83022h, z9);
    }

    public b(@m8.g byte[] bArr, @m8.g String str, @m8.h String str2, @m8.h String str3, boolean z9) {
        this.f83024a = bArr;
        this.f83025b = null;
        this.f83027d = str;
        this.f83028e = str2;
        this.f83030g = str3;
        this.f83029f = z9;
    }

    public b(@m8.g m1 m1Var, @m8.g String str, @m8.h String str2, @m8.h String str3, boolean z9) {
        this.f83024a = null;
        this.f83025b = m1Var;
        this.f83027d = str;
        this.f83028e = str2;
        this.f83030g = str3;
        this.f83029f = z9;
    }

    public b(@m8.g String str) {
        this(str, new File(str).getName());
    }

    public b(@m8.g String str, @m8.g String str2) {
        this(str, str2, (String) null);
    }

    public b(@m8.g String str, @m8.g String str2, @m8.h String str3) {
        this(str, str2, str3, f83022h, false);
    }

    public b(@m8.g String str, @m8.g String str2, @m8.h String str3, @m8.h String str4, boolean z9) {
        this.f83026c = str;
        this.f83027d = str2;
        this.f83025b = null;
        this.f83028e = str3;
        this.f83030g = str4;
        this.f83029f = z9;
    }

    public b(@m8.g String str, @m8.g String str2, @m8.h String str3, boolean z9) {
        this.f83030g = f83022h;
        this.f83026c = str;
        this.f83027d = str2;
        this.f83025b = null;
        this.f83028e = str3;
        this.f83029f = z9;
    }

    public b(@m8.g String str, @m8.g String str2, @m8.h String str3, boolean z9, @m8.h String str4) {
        this.f83026c = str;
        this.f83027d = str2;
        this.f83025b = null;
        this.f83028e = str3;
        this.f83029f = z9;
        this.f83030g = str4;
    }
}
