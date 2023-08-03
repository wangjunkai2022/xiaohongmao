package org.aspectj.lang.reflect;

/* loaded from: classes4.dex */
public class NoSuchPointcutException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    private static final long f91036b = 3256444698657634352L;

    /* renamed from: a  reason: collision with root package name */
    private String f91037a;

    public NoSuchPointcutException(String str) {
        this.f91037a = str;
    }

    public String getName() {
        return this.f91037a;
    }
}
