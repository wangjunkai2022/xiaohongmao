package org.minidns.dnslabel;

/* compiled from: LeadingOrTrailingHyphenLabel.java */
/* loaded from: classes5.dex */
public final class d extends e {
    /* JADX INFO: Access modifiers changed from: protected */
    public d(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean k(String str) {
        if (str.isEmpty()) {
            return false;
        }
        return str.charAt(0) == '-' || str.charAt(str.length() - 1) == '-';
    }
}
