package shaded.org.apache.commons.codec.language.bm;

/* loaded from: classes5.dex */
public enum RuleType {
    APPROX("approx"),
    EXACT("exact"),
    RULES("rules");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f93564a;

    RuleType(String str) {
        this.f93564a = str;
    }

    public String getName() {
        return this.f93564a;
    }
}
