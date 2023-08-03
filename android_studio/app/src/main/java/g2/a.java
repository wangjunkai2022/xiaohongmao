package g2;

import kotlin.Metadata;
import kotlin.text.StringsKt__IndentKt;
import m8.g;
import m8.h;

/* compiled from: Constants.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0010\u0010\u0002\u001a\u00020\u00002\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000¨\u0006\u0003"}, d2 = {"", "analyticsId", "a", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {
    @g
    public static final String a(@h String str) {
        String trimIndent;
        trimIndent = StringsKt__IndentKt.trimIndent("\n            =================================================================\n            ====================== VERIFICATION MODE ========================\n\n            YOUR ANALYTICS ID IS: " + str + "\n\n            1. Go to developers.giphy.com and start the verification process to\n            get your production API key.\n            2. You will be asked to enter a verification code during this process.\n            Copy and paste the code from above into the field provided\n            3. IMPORTANT: Remember to set \"enableVerificationMode = false\" once the\n            verification is done.\n            =================================================================\n            =================================================================\n        ");
        return trimIndent;
    }
}
