package com.google.thirdparty.publicsuffix;

@h3.b
@h3.a
/* loaded from: classes2.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');
    

    /* renamed from: a  reason: collision with root package name */
    private final char f35968a;

    /* renamed from: b  reason: collision with root package name */
    private final char f35969b;

    PublicSuffixType(char c10, char c11) {
        this.f35968a = c10;
        this.f35969b = c11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PublicSuffixType a(char c10) {
        PublicSuffixType[] values;
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.c() == c10 || publicSuffixType.d() == c10) {
                return publicSuffixType;
            }
        }
        throw new IllegalArgumentException("No enum corresponding to given code: " + c10);
    }

    static PublicSuffixType b(boolean z9) {
        return z9 ? PRIVATE : REGISTRY;
    }

    char c() {
        return this.f35968a;
    }

    char d() {
        return this.f35969b;
    }
}
