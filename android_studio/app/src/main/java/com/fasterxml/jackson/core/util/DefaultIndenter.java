package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.IOException;

/* loaded from: classes.dex */
public class DefaultIndenter extends DefaultPrettyPrinter.NopIndenter {
    public static final DefaultIndenter SYSTEM_LINEFEED_INSTANCE;
    public static final String SYS_LF;

    /* renamed from: d  reason: collision with root package name */
    private static final long f14232d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f14233e = 16;

    /* renamed from: a  reason: collision with root package name */
    private final char[] f14234a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14235b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14236c;

    static {
        String str;
        try {
            str = System.getProperty("line.separator");
        } catch (Throwable unused) {
            str = "\n";
        }
        SYS_LF = str;
        SYSTEM_LINEFEED_INSTANCE = new DefaultIndenter("  ", str);
    }

    public DefaultIndenter() {
        this("  ", SYS_LF);
    }

    public String getEol() {
        return this.f14236c;
    }

    public String getIndent() {
        return new String(this.f14234a, 0, this.f14235b);
    }

    @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter, com.fasterxml.jackson.core.util.DefaultPrettyPrinter.a
    public boolean isInline() {
        return false;
    }

    public DefaultIndenter withIndent(String str) {
        return str.equals(getIndent()) ? this : new DefaultIndenter(str, this.f14236c);
    }

    public DefaultIndenter withLinefeed(String str) {
        return str.equals(this.f14236c) ? this : new DefaultIndenter(getIndent(), str);
    }

    @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter, com.fasterxml.jackson.core.util.DefaultPrettyPrinter.a
    public void writeIndentation(JsonGenerator jsonGenerator, int i4) throws IOException {
        jsonGenerator.y1(this.f14236c);
        if (i4 <= 0) {
            return;
        }
        int i10 = i4 * this.f14235b;
        while (true) {
            char[] cArr = this.f14234a;
            if (i10 > cArr.length) {
                jsonGenerator.A1(cArr, 0, cArr.length);
                i10 -= this.f14234a.length;
            } else {
                jsonGenerator.A1(cArr, 0, i10);
                return;
            }
        }
    }

    public DefaultIndenter(String str, String str2) {
        this.f14235b = str.length();
        this.f14234a = new char[str.length() * 16];
        int i4 = 0;
        for (int i10 = 0; i10 < 16; i10++) {
            str.getChars(0, str.length(), this.f14234a, i4);
            i4 += str.length();
        }
        this.f14236c = str2;
    }
}
