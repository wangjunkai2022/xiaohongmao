package com.fasterxml.jackson.core.io;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class CharacterEscapes implements Serializable {
    public static final int ESCAPE_CUSTOM = -2;
    public static final int ESCAPE_NONE = 0;
    public static final int ESCAPE_STANDARD = -1;

    public static int[] standardAsciiEscapesForJSON() {
        int[] e4 = b.e();
        return Arrays.copyOf(e4, e4.length);
    }

    public abstract int[] getEscapeCodesForAscii();

    public abstract com.fasterxml.jackson.core.j getEscapeSequence(int i4);
}
