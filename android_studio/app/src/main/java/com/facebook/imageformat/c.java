package com.facebook.imageformat;

import com.facebook.infer.annotation.Nullsafe;
import r7.g;
import r7.h;

/* compiled from: ImageFormat.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    public static final c f11810c = new c("UNKNOWN", null);
    @h

    /* renamed from: a  reason: collision with root package name */
    private final String f11811a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11812b;

    /* compiled from: ImageFormat.java */
    /* loaded from: classes.dex */
    public interface a {
        @h
        c a(@g byte[] headerBytes, int headerSize);

        int b();
    }

    public c(String name, @h String fileExtension) {
        this.f11812b = name;
        this.f11811a = fileExtension;
    }

    @h
    public String a() {
        return this.f11811a;
    }

    public String b() {
        return this.f11812b;
    }

    public String toString() {
        return b();
    }
}
