package shaded.org.apache.commons.codec.language.bm;

/* loaded from: classes5.dex */
public enum NameType {
    ASHKENAZI("ash"),
    GENERIC("gen"),
    SEPHARDIC("sep");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f93562a;

    NameType(String str) {
        this.f93562a = str;
    }

    public String getName() {
        return this.f93562a;
    }
}
