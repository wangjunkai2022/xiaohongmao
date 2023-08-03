package h5;

import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import kotlin.Metadata;
import m8.h;

/* compiled from: CaptchaToken.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u000e\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0000¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b {

    /* compiled from: CaptchaToken.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CaptchaType.values().length];
            iArr[CaptchaType.Re.ordinal()] = 1;
            iArr[CaptchaType.H.ordinal()] = 2;
            iArr[CaptchaType.Graph.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @h
    public static final String a(@h CaptchaType captchaType) {
        int i4 = captchaType == null ? -1 : a.$EnumSwitchMapping$0[captchaType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    return null;
                }
                return "vC";
            }
            return "hC";
        }
        return "gC";
    }
}
