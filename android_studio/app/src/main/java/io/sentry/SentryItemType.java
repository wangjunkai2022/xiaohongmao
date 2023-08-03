package io.sentry;

import java.io.IOException;
import java.util.Locale;
import m8.a;

@a.c
/* loaded from: classes4.dex */
public enum SentryItemType implements m1 {
    Session(io.sentry.cache.d.f83059h),
    Event("event"),
    UserFeedback("user_report"),
    Attachment("attachment"),
    Transaction("transaction"),
    Profile(com.google.android.gms.common.n.f29237a),
    ClientReport("client_report"),
    ReplayEvent("replay_event"),
    ReplayRecording("replay_recording"),
    Unknown("__unknown__");
    
    private final String itemType;

    /* loaded from: classes4.dex */
    static final class a implements c1<SentryItemType> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public SentryItemType a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            return SentryItemType.valueOfLabel(i1Var.M().toLowerCase(Locale.ROOT));
        }
    }

    SentryItemType(String str) {
        this.itemType = str;
    }

    public static SentryItemType resolve(Object obj) {
        if (obj instanceof h4) {
            return Event;
        }
        if (obj instanceof io.sentry.protocol.u) {
            return Transaction;
        }
        if (obj instanceof Session) {
            return Session;
        }
        if (obj instanceof io.sentry.clientreport.b) {
            return ClientReport;
        }
        return Attachment;
    }

    @m8.g
    public static SentryItemType valueOfLabel(String str) {
        SentryItemType[] values;
        for (SentryItemType sentryItemType : values()) {
            if (sentryItemType.itemType.equals(str)) {
                return sentryItemType;
            }
        }
        return Unknown;
    }

    public String getItemType() {
        return this.itemType;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.l0(this.itemType);
    }
}
