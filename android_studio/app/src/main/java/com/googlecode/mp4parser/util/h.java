package com.googlecode.mp4parser.util;

import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: JuliLogger.java */
/* loaded from: classes2.dex */
public class h extends j {

    /* renamed from: a  reason: collision with root package name */
    Logger f36984a;

    public h(String str) {
        this.f36984a = Logger.getLogger(str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void b(String str) {
        this.f36984a.log(Level.FINE, str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void c(String str) {
        this.f36984a.log(Level.SEVERE, str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void d(String str) {
        this.f36984a.log(Level.WARNING, str);
    }
}
