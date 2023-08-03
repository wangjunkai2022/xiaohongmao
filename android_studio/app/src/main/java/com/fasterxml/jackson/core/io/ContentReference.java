package com.fasterxml.jackson.core.io;

import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public class ContentReference implements Serializable {
    public static final int DEFAULT_MAX_CONTENT_SNIPPET = 500;

    /* renamed from: e  reason: collision with root package name */
    private static final long f13894e = 1;

    /* renamed from: f  reason: collision with root package name */
    protected static final ContentReference f13895f = new ContentReference(false, null);

    /* renamed from: a  reason: collision with root package name */
    protected final transient Object f13896a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f13897b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f13898c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f13899d;

    protected ContentReference(boolean z9, Object obj) {
        this(z9, obj, -1, -1);
    }

    public static ContentReference construct(boolean z9, Object obj) {
        return new ContentReference(z9, obj);
    }

    private void j(ObjectInputStream objectInputStream) throws IOException {
    }

    private void l(ObjectOutputStream objectOutputStream) throws IOException {
    }

    public static ContentReference rawReference(boolean z9, Object obj) {
        if (obj instanceof ContentReference) {
            return (ContentReference) obj;
        }
        return new ContentReference(z9, obj);
    }

    public static ContentReference unknown() {
        return f13895f;
    }

    protected int a(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if (!Character.isISOControl(charAt) || !b(sb, charAt)) {
                sb.append(charAt);
            }
        }
        sb.append('\"');
        return str.length();
    }

    public StringBuilder appendSourceDescription(StringBuilder sb) {
        String str;
        Object rawContent = getRawContent();
        if (rawContent == null) {
            sb.append("UNKNOWN");
            return sb;
        }
        Class<?> cls = rawContent instanceof Class ? (Class) rawContent : rawContent.getClass();
        String name = cls.getName();
        if (name.startsWith("java.")) {
            name = cls.getSimpleName();
        } else if (rawContent instanceof byte[]) {
            name = "byte[]";
        } else if (rawContent instanceof char[]) {
            name = "char[]";
        }
        sb.append('(');
        sb.append(name);
        sb.append(')');
        if (hasTextualContent()) {
            int i4 = i();
            int[] iArr = {contentOffset(), contentLength()};
            String str2 = " chars";
            if (rawContent instanceof CharSequence) {
                str = c((CharSequence) rawContent, iArr, i4);
            } else if (rawContent instanceof char[]) {
                str = e((char[]) rawContent, iArr, i4);
            } else if (rawContent instanceof byte[]) {
                str = d((byte[]) rawContent, iArr, i4);
                str2 = " bytes";
            } else {
                str = null;
            }
            if (str != null) {
                a(sb, str);
                if (iArr[1] > i4) {
                    sb.append("[truncated ");
                    sb.append(iArr[1] - i4);
                    sb.append(str2);
                    sb.append(']');
                }
            }
        } else if (rawContent instanceof byte[]) {
            int contentLength = contentLength();
            if (contentLength < 0) {
                contentLength = ((byte[]) rawContent).length;
            }
            sb.append('[');
            sb.append(contentLength);
            sb.append(" bytes]");
        }
        return sb;
    }

    protected boolean b(StringBuilder sb, int i4) {
        if (i4 == 13 || i4 == 10) {
            return false;
        }
        sb.append('\\');
        sb.append('u');
        sb.append(b.m((i4 >> 12) & 15));
        sb.append(b.m((i4 >> 8) & 15));
        sb.append(b.m((i4 >> 4) & 15));
        sb.append(b.m(i4 & 15));
        return true;
    }

    public String buildSourceDescription() {
        return appendSourceDescription(new StringBuilder(200)).toString();
    }

    protected String c(CharSequence charSequence, int[] iArr, int i4) {
        h(iArr, charSequence.length());
        int i10 = iArr[0];
        return charSequence.subSequence(i10, Math.min(iArr[1], i4) + i10).toString();
    }

    public int contentLength() {
        return this.f13898c;
    }

    public int contentOffset() {
        return this.f13897b;
    }

    protected String d(byte[] bArr, int[] iArr, int i4) {
        h(iArr, bArr.length);
        return new String(bArr, iArr[0], Math.min(iArr[1], i4), Charset.forName("UTF-8"));
    }

    protected String e(char[] cArr, int[] iArr, int i4) {
        h(iArr, cArr.length);
        return new String(cArr, iArr[0], Math.min(iArr[1], i4));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ContentReference)) {
            ContentReference contentReference = (ContentReference) obj;
            if (this.f13897b == contentReference.f13897b && this.f13898c == contentReference.f13898c) {
                Object obj2 = contentReference.f13896a;
                Object obj3 = this.f13896a;
                if (obj3 == null) {
                    return obj2 == null;
                } else if (obj2 == null) {
                    return false;
                } else {
                    if ((obj3 instanceof File) || (obj3 instanceof URL) || (obj3 instanceof URI)) {
                        return obj3.equals(obj2);
                    }
                    return obj3 == obj2;
                }
            }
            return false;
        }
        return false;
    }

    public Object getRawContent() {
        return this.f13896a;
    }

    protected void h(int[] iArr, int i4) {
        int i10 = iArr[0];
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 >= i4) {
            i10 = i4;
        }
        iArr[0] = i10;
        int i11 = iArr[1];
        int i12 = i4 - i10;
        if (i11 < 0 || i11 > i12) {
            iArr[1] = i12;
        }
    }

    public boolean hasTextualContent() {
        return this.f13899d;
    }

    public int hashCode() {
        return Objects.hashCode(this.f13896a);
    }

    protected int i() {
        return 500;
    }

    protected Object k() {
        return f13895f;
    }

    protected ContentReference(boolean z9, Object obj, int i4, int i10) {
        this.f13899d = z9;
        this.f13896a = obj;
        this.f13897b = i4;
        this.f13898c = i10;
    }

    public static ContentReference construct(boolean z9, Object obj, int i4, int i10) {
        return new ContentReference(z9, obj, i4, i10);
    }

    public static ContentReference rawReference(Object obj) {
        return rawReference(false, obj);
    }
}
