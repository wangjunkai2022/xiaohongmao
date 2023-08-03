package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SerializedString;

/* loaded from: classes.dex */
public class JsonpCharacterEscapes extends CharacterEscapes {

    /* renamed from: a  reason: collision with root package name */
    private static final long f13734a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f13735b = CharacterEscapes.standardAsciiEscapesForJSON();

    /* renamed from: c  reason: collision with root package name */
    private static final SerializedString f13736c = new SerializedString("\\u2028");

    /* renamed from: d  reason: collision with root package name */
    private static final SerializedString f13737d = new SerializedString("\\u2029");

    /* renamed from: e  reason: collision with root package name */
    private static final JsonpCharacterEscapes f13738e = new JsonpCharacterEscapes();

    public static JsonpCharacterEscapes instance() {
        return f13738e;
    }

    @Override // com.fasterxml.jackson.core.io.CharacterEscapes
    public int[] getEscapeCodesForAscii() {
        return f13735b;
    }

    @Override // com.fasterxml.jackson.core.io.CharacterEscapes
    public j getEscapeSequence(int i4) {
        if (i4 != 8232) {
            if (i4 != 8233) {
                return null;
            }
            return f13737d;
        }
        return f13736c;
    }
}
