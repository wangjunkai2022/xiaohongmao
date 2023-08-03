package com.auth0.jwt;

import com.auth0.jwt.exceptions.JWTDecodeException;

/* compiled from: TokenUtils.java */
/* loaded from: classes.dex */
abstract class h {
    h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] a(String str) throws JWTDecodeException {
        String[] split = str.split("\\.");
        if (split.length == 2 && str.endsWith(".")) {
            split = new String[]{split[0], split[1], ""};
        }
        if (split.length == 3) {
            return split;
        }
        throw new JWTDecodeException(String.format("The token was expected to have 3 parts, but got %s.", Integer.valueOf(split.length)));
    }
}
