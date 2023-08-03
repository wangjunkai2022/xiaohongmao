package com.google.common.io;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: PatternFilenameFilter.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class z implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f34522a;

    public z(String str) {
        this(Pattern.compile(str));
    }

    @Override // java.io.FilenameFilter
    public boolean accept(@NullableDecl File file, String str) {
        return this.f34522a.matcher(str).matches();
    }

    public z(Pattern pattern) {
        this.f34522a = (Pattern) com.google.common.base.a0.E(pattern);
    }
}
