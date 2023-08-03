package shaded.org.apache.commons.codec.language;

import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: Caverphone.java */
@Deprecated
/* loaded from: classes5.dex */
public class d implements h9.h {

    /* renamed from: a  reason: collision with root package name */
    private final c f93630a = new c();

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return b((String) obj);
        }
        throw new EncoderException("Parameter supplied to Caverphone encode is not of type java.lang.String");
    }

    public String b(String str) {
        return this.f93630a.c(str);
    }

    @Override // h9.h
    public String c(String str) {
        return b(str);
    }

    public boolean d(String str, String str2) {
        return b(str).equals(b(str2));
    }
}
