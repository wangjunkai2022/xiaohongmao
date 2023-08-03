package com.ta.utdid2.core.persistent;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import kotlin.text.Typography;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: FastXmlSerializer.java */
/* loaded from: classes3.dex */
class a implements XmlSerializer {

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f55848h = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null};

    /* renamed from: b  reason: collision with root package name */
    private int f55850b;

    /* renamed from: c  reason: collision with root package name */
    private Writer f55851c;

    /* renamed from: d  reason: collision with root package name */
    private OutputStream f55852d;

    /* renamed from: e  reason: collision with root package name */
    private CharsetEncoder f55853e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55855g;

    /* renamed from: a  reason: collision with root package name */
    private final char[] f55849a = new char[8192];

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f55854f = ByteBuffer.allocate(8192);

    private void a(char c10) throws IOException {
        int i4 = this.f55850b;
        if (i4 >= 8191) {
            flush();
            i4 = this.f55850b;
        }
        this.f55849a[i4] = c10;
        this.f55850b = i4 + 1;
    }

    private void b(String str) throws IOException {
        c(str, 0, str.length());
    }

    private void c(String str, int i4, int i10) throws IOException {
        if (i10 > 8192) {
            int i11 = i10 + i4;
            while (i4 < i11) {
                int i12 = i4 + 8192;
                c(str, i4, i12 < i11 ? 8192 : i11 - i4);
                i4 = i12;
            }
            return;
        }
        int i13 = this.f55850b;
        if (i13 + i10 > 8192) {
            flush();
            i13 = this.f55850b;
        }
        str.getChars(i4, i4 + i10, this.f55849a, i13);
        this.f55850b = i13 + i10;
    }

    private void d(char[] cArr, int i4, int i10) throws IOException {
        if (i10 > 8192) {
            int i11 = i10 + i4;
            while (i4 < i11) {
                int i12 = i4 + 8192;
                d(cArr, i4, i12 < i11 ? 8192 : i11 - i4);
                i4 = i12;
            }
            return;
        }
        int i13 = this.f55850b;
        if (i13 + i10 > 8192) {
            flush();
            i13 = this.f55850b;
        }
        System.arraycopy(cArr, i4, this.f55849a, i13, i10);
        this.f55850b = i13 + i10;
    }

    private void e(String str) throws IOException {
        String str2;
        int length = str.length();
        String[] strArr = f55848h;
        char length2 = (char) strArr.length;
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            char charAt = str.charAt(i4);
            if (charAt < length2 && (str2 = strArr[charAt]) != null) {
                if (i10 < i4) {
                    c(str, i10, i4 - i10);
                }
                i10 = i4 + 1;
                b(str2);
            }
            i4++;
        }
        if (i10 < i4) {
            c(str, i10, i4 - i10);
        }
    }

    private void f(char[] cArr, int i4, int i10) throws IOException {
        String str;
        String[] strArr = f55848h;
        char length = (char) strArr.length;
        int i11 = i10 + i4;
        int i12 = i4;
        while (i4 < i11) {
            char c10 = cArr[i4];
            if (c10 < length && (str = strArr[c10]) != null) {
                if (i12 < i4) {
                    d(cArr, i12, i4 - i12);
                }
                i12 = i4 + 1;
                b(str);
            }
            i4++;
        }
        if (i12 < i4) {
            d(cArr, i12, i4 - i12);
        }
    }

    private void g() throws IOException {
        int position = this.f55854f.position();
        if (position > 0) {
            this.f55854f.flip();
            this.f55852d.write(this.f55854f.array(), 0, position);
            this.f55854f.clear();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String str, String str2, String str3) throws IOException, IllegalArgumentException, IllegalStateException {
        a(' ');
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        b("=\"");
        e(str3);
        a('\"');
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IOException, IllegalArgumentException, IllegalStateException {
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f55855g) {
            b(" />\n");
        } else {
            b("</");
            if (str != null) {
                b(str);
                a(':');
            }
            b(str2);
            b(">\n");
        }
        this.f55855g = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() throws IOException {
        int i4 = this.f55850b;
        if (i4 > 0) {
            if (this.f55852d != null) {
                CharBuffer wrap = CharBuffer.wrap(this.f55849a, 0, i4);
                CoderResult encode = this.f55853e.encode(wrap, this.f55854f, true);
                while (!encode.isError()) {
                    if (encode.isOverflow()) {
                        g();
                        encode = this.f55853e.encode(wrap, this.f55854f, true);
                    } else {
                        g();
                        this.f55852d.flush();
                    }
                }
                throw new IOException(encode.toString());
            }
            this.f55851c.write(this.f55849a, 0, i4);
            this.f55851c.flush();
            this.f55850b = 0;
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public int getDepth() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public boolean getFeature(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getName() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getNamespace() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getPrefix(String str, boolean z9) throws IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public Object getProperty(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void ignorableWhitespace(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void processingInstruction(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setFeature(String str, boolean z9) throws IllegalArgumentException, IllegalStateException {
        if (!str.equals("http://xmlpull.org/v1/doc/features.html#indent-output")) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream outputStream, String str) throws IOException, IllegalArgumentException, IllegalStateException {
        if (outputStream != null) {
            try {
                this.f55853e = Charset.forName(str).newEncoder();
                this.f55852d = outputStream;
                return;
            } catch (IllegalCharsetNameException e4) {
                throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e4));
            } catch (UnsupportedCharsetException e10) {
                throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e10));
            }
        }
        throw new IllegalArgumentException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setPrefix(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setProperty(String str, Object obj) throws IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void startDocument(String str, Boolean bool) throws IOException, IllegalArgumentException, IllegalStateException {
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version='1.0' encoding='utf-8' standalone='");
        sb.append(bool.booleanValue() ? "yes" : "no");
        sb.append("' ?>\n");
        b(sb.toString());
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f55855g) {
            b(">\n");
        }
        a(Typography.less);
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        this.f55855g = true;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] cArr, int i4, int i10) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f55855g) {
            b(">");
            this.f55855g = false;
        }
        f(cArr, i4, i10);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f55855g) {
            b(">");
            this.f55855g = false;
        }
        e(str);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) throws IOException, IllegalArgumentException, IllegalStateException {
        this.f55851c = writer;
    }
}
