package com.fasterxml.jackson.core.util;

import java.io.Serializable;

/* loaded from: classes.dex */
public class Separators implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f14255d = 1;

    /* renamed from: a  reason: collision with root package name */
    private final char f14256a;

    /* renamed from: b  reason: collision with root package name */
    private final char f14257b;

    /* renamed from: c  reason: collision with root package name */
    private final char f14258c;

    public Separators() {
        this(':', ',', ',');
    }

    public static Separators createDefaultInstance() {
        return new Separators();
    }

    public char getArrayValueSeparator() {
        return this.f14258c;
    }

    public char getObjectEntrySeparator() {
        return this.f14257b;
    }

    public char getObjectFieldValueSeparator() {
        return this.f14256a;
    }

    public Separators withArrayValueSeparator(char c10) {
        return this.f14258c == c10 ? this : new Separators(this.f14256a, this.f14257b, c10);
    }

    public Separators withObjectEntrySeparator(char c10) {
        return this.f14257b == c10 ? this : new Separators(this.f14256a, c10, this.f14258c);
    }

    public Separators withObjectFieldValueSeparator(char c10) {
        return this.f14256a == c10 ? this : new Separators(c10, this.f14257b, this.f14258c);
    }

    public Separators(char c10, char c11, char c12) {
        this.f14256a = c10;
        this.f14257b = c11;
        this.f14258c = c12;
    }
}
