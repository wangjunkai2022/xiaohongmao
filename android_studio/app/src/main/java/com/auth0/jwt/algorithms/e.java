package com.auth0.jwt.algorithms;

import com.auth0.jwt.exceptions.SignatureGenerationException;
import com.auth0.jwt.exceptions.SignatureVerificationException;

/* compiled from: NoneAlgorithm.java */
/* loaded from: classes.dex */
class e extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        super("none", "none");
    }

    @Override // com.auth0.jwt.algorithms.a
    @Deprecated
    public byte[] E(byte[] bArr) throws SignatureGenerationException {
        return new byte[0];
    }

    @Override // com.auth0.jwt.algorithms.a
    public byte[] F(byte[] bArr, byte[] bArr2) throws SignatureGenerationException {
        return new byte[0];
    }

    @Override // com.auth0.jwt.algorithms.a
    public void G(com.auth0.jwt.interfaces.c cVar) throws SignatureVerificationException {
        if (shaded.org.apache.commons.codec.binary.d.x(cVar.getSignature()).length > 0) {
            throw new SignatureVerificationException(this);
        }
    }
}
