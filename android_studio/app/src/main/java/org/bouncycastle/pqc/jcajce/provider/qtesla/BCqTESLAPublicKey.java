package org.bouncycastle.pqc.jcajce.provider.qtesla;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.qtesla.QTESLAPublicKeyParameters;
import org.bouncycastle.pqc.crypto.qtesla.QTESLASecurityCategory;
import org.bouncycastle.pqc.crypto.util.PublicKeyFactory;
import org.bouncycastle.pqc.crypto.util.SubjectPublicKeyInfoFactory;
import org.bouncycastle.pqc.jcajce.interfaces.QTESLAKey;
import org.bouncycastle.pqc.jcajce.spec.QTESLAParameterSpec;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class BCqTESLAPublicKey implements PublicKey, QTESLAKey {
    private static final long serialVersionUID = 1;
    private transient QTESLAPublicKeyParameters keyParams;

    public BCqTESLAPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        init(subjectPublicKeyInfo);
    }

    public BCqTESLAPublicKey(QTESLAPublicKeyParameters qTESLAPublicKeyParameters) {
        this.keyParams = qTESLAPublicKeyParameters;
    }

    private void init(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        this.keyParams = (QTESLAPublicKeyParameters) PublicKeyFactory.createKey(subjectPublicKeyInfo);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(SubjectPublicKeyInfo.getInstance((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCqTESLAPublicKey) {
            BCqTESLAPublicKey bCqTESLAPublicKey = (BCqTESLAPublicKey) obj;
            return this.keyParams.getSecurityCategory() == bCqTESLAPublicKey.keyParams.getSecurityCategory() && Arrays.areEqual(this.keyParams.getPublicData(), bCqTESLAPublicKey.keyParams.getPublicData());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return QTESLASecurityCategory.getName(this.keyParams.getSecurityCategory());
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return SubjectPublicKeyInfoFactory.createSubjectPublicKeyInfo(this.keyParams).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CipherParameters getKeyParams() {
        return this.keyParams;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.QTESLAKey
    public QTESLAParameterSpec getParams() {
        return new QTESLAParameterSpec(getAlgorithm());
    }

    public int hashCode() {
        return this.keyParams.getSecurityCategory() + (Arrays.hashCode(this.keyParams.getPublicData()) * 37);
    }
}
