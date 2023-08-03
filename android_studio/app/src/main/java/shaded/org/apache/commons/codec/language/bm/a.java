package shaded.org.apache.commons.codec.language.bm;

import h9.h;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: BeiderMorseEncoder.java */
/* loaded from: classes5.dex */
public class a implements h {

    /* renamed from: a  reason: collision with root package name */
    private d f93565a = new d(NameType.GENERIC, RuleType.APPROX, true);

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("BeiderMorseEncoder encode parameter is not of type String");
    }

    public NameType b() {
        return this.f93565a.f();
    }

    @Override // h9.h
    public String c(String str) throws EncoderException {
        if (str == null) {
            return null;
        }
        return this.f93565a.b(str);
    }

    public RuleType d() {
        return this.f93565a.g();
    }

    public boolean f() {
        return this.f93565a.h();
    }

    public void g(boolean z9) {
        this.f93565a = new d(this.f93565a.f(), this.f93565a.g(), z9, this.f93565a.e());
    }

    public void h(int i4) {
        this.f93565a = new d(this.f93565a.f(), this.f93565a.g(), this.f93565a.h(), i4);
    }

    public void i(NameType nameType) {
        this.f93565a = new d(nameType, this.f93565a.g(), this.f93565a.h(), this.f93565a.e());
    }

    public void j(RuleType ruleType) {
        this.f93565a = new d(this.f93565a.f(), ruleType, this.f93565a.h(), this.f93565a.e());
    }
}
