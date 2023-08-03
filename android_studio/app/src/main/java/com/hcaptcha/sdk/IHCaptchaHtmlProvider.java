package com.hcaptcha.sdk;

import java.io.Serializable;
import lombok.NonNull;

/* loaded from: classes2.dex */
public interface IHCaptchaHtmlProvider extends Serializable {
    @NonNull
    String getHtml();
}
