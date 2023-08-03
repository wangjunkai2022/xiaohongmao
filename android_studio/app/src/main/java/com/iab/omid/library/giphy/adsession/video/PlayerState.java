package com.iab.omid.library.giphy.adsession.video;

import io.sentry.m2;

/* loaded from: classes2.dex */
public enum PlayerState {
    MINIMIZED("minimized"),
    COLLAPSED("collapsed"),
    NORMAL(m2.D),
    EXPANDED("expanded"),
    FULLSCREEN("fullscreen");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f39363a;

    PlayerState(String str) {
        this.f39363a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f39363a;
    }
}
