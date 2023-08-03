package shaded.org.apache.commons.codec.language;

import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: AbstractCaverphone.java */
/* loaded from: classes5.dex */
public abstract class a implements h9.h {
    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("Parameter supplied to Caverphone encode is not of type java.lang.String");
    }

    public boolean b(String str, String str2) throws EncoderException {
        return c(str).equals(c(str2));
    }
}
