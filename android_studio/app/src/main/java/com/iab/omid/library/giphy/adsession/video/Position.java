package com.iab.omid.library.giphy.adsession.video;

import com.im.freechat.ui.contacts.k;

/* loaded from: classes2.dex */
public enum Position {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE(k.f43455b);
    

    /* renamed from: a  reason: collision with root package name */
    private final String f39365a;

    Position(String str) {
        this.f39365a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f39365a;
    }
}
