package org.bouncycastle.i18n.filter;

/* loaded from: classes4.dex */
public class HTMLFilter implements Filter {
    @Override // org.bouncycastle.i18n.filter.Filter
    public String doFilter(String str) {
        int i4;
        String str2;
        StringBuffer stringBuffer = new StringBuffer(str);
        int i10 = 0;
        while (i10 < stringBuffer.length()) {
            char charAt = stringBuffer.charAt(i10);
            if (charAt == '\"') {
                i4 = i10 + 1;
                str2 = "&#34";
            } else if (charAt == '#') {
                i4 = i10 + 1;
                str2 = "&#35";
            } else if (charAt == '+') {
                i4 = i10 + 1;
                str2 = "&#43";
            } else if (charAt == '-') {
                i4 = i10 + 1;
                str2 = "&#45";
            } else if (charAt == '>') {
                i4 = i10 + 1;
                str2 = "&#62";
            } else if (charAt == ';') {
                i4 = i10 + 1;
                str2 = "&#59";
            } else if (charAt != '<') {
                switch (charAt) {
                    case '%':
                        i4 = i10 + 1;
                        str2 = "&#37";
                        break;
                    case '&':
                        i4 = i10 + 1;
                        str2 = "&#38";
                        break;
                    case '\'':
                        i4 = i10 + 1;
                        str2 = "&#39";
                        break;
                    case '(':
                        i4 = i10 + 1;
                        str2 = "&#40";
                        break;
                    case ')':
                        i4 = i10 + 1;
                        str2 = "&#41";
                        break;
                    default:
                        i10 -= 3;
                        continue;
                        i10 += 4;
                }
            } else {
                i4 = i10 + 1;
                str2 = "&#60";
            }
            stringBuffer.replace(i10, i4, str2);
            i10 += 4;
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.i18n.filter.Filter
    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
