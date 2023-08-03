package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Consumer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public interface l<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13070a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13071b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13072c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13073d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13074e = 8;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13075f = 16;

    /* compiled from: Consumer.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface a {
    }

    void a(Throwable t9);

    void b();

    void c(@r7.h T newResult, int status);

    void d(float progress);
}
