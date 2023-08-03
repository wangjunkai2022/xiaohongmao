package org.bouncycastle.i18n.filter;

/* loaded from: classes4.dex */
public class SQLFilter implements Filter {
    @Override // org.bouncycastle.i18n.filter.Filter
    public String doFilter(String str) {
        int i4;
        String str2;
        StringBuffer stringBuffer = new StringBuffer(str);
        int i10 = 0;
        while (i10 < stringBuffer.length()) {
            char charAt = stringBuffer.charAt(i10);
            if (charAt == '\n') {
                i4 = i10 + 1;
                str2 = "\\n";
            } else if (charAt == '\r') {
                i4 = i10 + 1;
                str2 = "\\r";
            } else if (charAt == '\"') {
                i4 = i10 + 1;
                str2 = "\\\"";
            } else if (charAt == '\'') {
                i4 = i10 + 1;
                str2 = "\\'";
            } else if (charAt == '-') {
                i4 = i10 + 1;
                str2 = "\\-";
            } else if (charAt == '/') {
                i4 = i10 + 1;
                str2 = "\\/";
            } else if (charAt == ';') {
                i4 = i10 + 1;
                str2 = "\\;";
            } else if (charAt == '=') {
                i4 = i10 + 1;
                str2 = "\\=";
            } else if (charAt != '\\') {
                i10++;
            } else {
                i4 = i10 + 1;
                str2 = "\\\\";
            }
            stringBuffer.replace(i10, i4, str2);
            i10 = i4;
            i10++;
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.i18n.filter.Filter
    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
