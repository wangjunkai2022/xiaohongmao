package org.aspectj.lang.reflect;

/* loaded from: classes4.dex */
public class NoSuchAdviceException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    private static final long f91034b = 3256444698657634352L;

    /* renamed from: a  reason: collision with root package name */
    private String f91035a;

    public NoSuchAdviceException(String str) {
        this.f91035a = str;
    }

    public String getName() {
        return this.f91035a;
    }
}
