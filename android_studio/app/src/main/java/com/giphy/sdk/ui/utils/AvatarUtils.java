package com.giphy.sdk.ui.utils;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: AvatarUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/giphy/sdk/ui/utils/AvatarUtils;", "", "", "url", "Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;", com.qennnsad.aknkaksd.data.repository.f.f47745b, "a", "<init>", "()V", "Dimension", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class AvatarUtils {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final AvatarUtils f18910a = new AvatarUtils();

    /* compiled from: AvatarUtils.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;", "", "", "a", "Ljava/lang/String;", "getSize", "()Ljava/lang/String;", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Small", "Medium", "Big", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public enum Dimension {
        Small("36h"),
        Medium("80h"),
        Big("200h");
        
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f18912a;

        Dimension(String str) {
            this.f18912a = str;
        }

        @m8.g
        public final String getSize() {
            return this.f18912a;
        }
    }

    private AvatarUtils() {
    }

    @m8.h
    public final String a(@m8.h String str, @m8.g Dimension size) {
        int lastIndexOf$default;
        String str2;
        Intrinsics.checkNotNullParameter(size, "size");
        if (str == null || str.length() == 0) {
            return null;
        }
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, ".", 0, false, 6, (Object) null);
        if (lastIndexOf$default >= 0) {
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            str2 = str.substring(lastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(str2, "(this as java.lang.String).substring(startIndex)");
        } else {
            str2 = "";
        }
        StringBuilder sb = new StringBuilder();
        if (lastIndexOf$default < 0) {
            lastIndexOf$default = str.length();
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(substring);
        sb.append("/");
        sb.append(size.getSize());
        sb.append(str2);
        return sb.toString();
    }
}
