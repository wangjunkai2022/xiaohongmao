package shaded.org.apache.commons.codec.digest;

/* loaded from: classes5.dex */
public enum HmacAlgorithms {
    HMAC_MD5("HmacMD5"),
    HMAC_SHA_1(com.alipay.security.mobile.module.commonutils.crypto.c.f7003a),
    HMAC_SHA_224("HmacSHA224"),
    HMAC_SHA_256("HmacSHA256"),
    HMAC_SHA_384("HmacSHA384"),
    HMAC_SHA_512("HmacSHA512");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f93499a;

    HmacAlgorithms(String str) {
        this.f93499a = str;
    }

    public String getName() {
        return this.f93499a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f93499a;
    }
}
