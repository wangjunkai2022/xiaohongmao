package com.hcaptcha.sdk;

import android.os.Handler;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import lombok.Generated;

/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final String f38403a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f38404b;

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public l(String str, Handler handler) {
        this.f38403a = str;
        this.f38404b = handler;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String a() {
        return this.f38403a;
    }

    public void b() {
        this.f38404b.removeCallbacksAndMessages(null);
    }
}
