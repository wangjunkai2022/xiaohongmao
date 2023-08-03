package com.giphy.sdk.analytics.batching;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.models.enums.ActionType;
import com.giphy.sdk.analytics.models.enums.EventType;
import io.sentry.protocol.y;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PingbackWrapperRecycler.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ|\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0013R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00130\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0019\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/giphy/sdk/analytics/batching/d;", "", "", "userId", "loggedInUserId", "randomId", "analyticsResponsePayload", "referrer", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "eventType", "mediaId", m.b.f86919c, "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "actionType", "sessionId", "layoutType", "", "position", "placement", "Lcom/giphy/sdk/analytics/batching/d$a;", "b", "eventWrapper", "", "c", "Ljava/util/LinkedList;", "a", "Ljava/util/LinkedList;", "()Ljava/util/LinkedList;", "eventWrappers", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class d {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<a> f16881a = new LinkedList<>();

    /* compiled from: PingbackWrapperRecycler.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b!\n\u0002\u0010\t\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bB\u0010CJ|\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b!\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\"\u0010\u001aR$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0016\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b\u001e\u0010'\"\u0004\b(\u0010)R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b*\u0010\u0016\u001a\u0004\b%\u0010\u0018\"\u0004\b+\u0010\u001aR$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u0016\u001a\u0004\b-\u0010\u0018\"\u0004\b.\u0010\u001aR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010/\u001a\u0004\b\u0015\u00100\"\u0004\b1\u00102R$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0016\u001a\u0004\b3\u0010\u0018\"\u0004\b4\u0010\u001aR\"\u0010;\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0016\u001a\u0004\b!\u0010\u0018\"\u0004\b<\u0010\u001aR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010=\u001a\u0004\b,\u0010>\"\u0004\b?\u0010@R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0016\u001a\u0004\b*\u0010\u0018\"\u0004\bA\u0010\u001a¨\u0006D"}, d2 = {"Lcom/giphy/sdk/analytics/batching/d$a;", "", "", "userId", "loggedInUserId", "randomId", "analyticsResponsePayload", "referrer", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "eventType", "mediaId", m.b.f86919c, "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "actionType", "sessionId", "layoutType", "", "position", "placement", "", "C", "a", "Ljava/lang/String;", "n", "()Ljava/lang/String;", "B", "(Ljava/lang/String;)V", "b", "e", "s", "c", ContextChain.TAG_INFRA, "w", "d", "p", "j", y.b.f83919g, "f", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "()Lcom/giphy/sdk/analytics/models/enums/EventType;", "q", "(Lcom/giphy/sdk/analytics/models/enums/EventType;)V", "g", "t", "h", "l", "z", "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "()Lcom/giphy/sdk/analytics/models/enums/ActionType;", "o", "(Lcom/giphy/sdk/analytics/models/enums/ActionType;)V", "k", y.b.f83920h, "", "J", "m", "()J", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(J)V", "ts", "r", "I", "()I", "v", "(I)V", "u", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f16882a;

        /* renamed from: b  reason: collision with root package name */
        public String f16883b;
        @h

        /* renamed from: c  reason: collision with root package name */
        private String f16884c;

        /* renamed from: d  reason: collision with root package name */
        public String f16885d;
        @h

        /* renamed from: e  reason: collision with root package name */
        private String f16886e;
        @h

        /* renamed from: f  reason: collision with root package name */
        private EventType f16887f;

        /* renamed from: g  reason: collision with root package name */
        public String f16888g;
        @h

        /* renamed from: h  reason: collision with root package name */
        private String f16889h;

        /* renamed from: i  reason: collision with root package name */
        public ActionType f16890i;
        @h

        /* renamed from: j  reason: collision with root package name */
        private String f16891j;

        /* renamed from: k  reason: collision with root package name */
        private long f16892k;
        @h

        /* renamed from: l  reason: collision with root package name */
        private String f16893l;

        /* renamed from: m  reason: collision with root package name */
        private int f16894m;
        @h

        /* renamed from: n  reason: collision with root package name */
        private String f16895n;

        public final void A(long j4) {
            this.f16892k = j4;
        }

        public final void B(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16882a = str;
        }

        public final void C(@g String userId, @g String loggedInUserId, @h String str, @g String analyticsResponsePayload, @h String str2, @h EventType eventType, @g String mediaId, @h String str3, @g ActionType actionType, @h String str4, @h String str5, int i4, @h String str6) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(loggedInUserId, "loggedInUserId");
            Intrinsics.checkNotNullParameter(analyticsResponsePayload, "analyticsResponsePayload");
            Intrinsics.checkNotNullParameter(mediaId, "mediaId");
            Intrinsics.checkNotNullParameter(actionType, "actionType");
            this.f16882a = userId;
            this.f16883b = loggedInUserId;
            this.f16884c = str;
            this.f16885d = analyticsResponsePayload;
            this.f16886e = str2;
            this.f16887f = eventType;
            this.f16888g = mediaId;
            this.f16889h = str3;
            this.f16890i = actionType;
            this.f16891j = str4;
            this.f16892k = System.currentTimeMillis();
            this.f16893l = str5;
            this.f16894m = i4;
            this.f16895n = str6;
        }

        @g
        public final ActionType a() {
            ActionType actionType = this.f16890i;
            if (actionType == null) {
                Intrinsics.throwUninitializedPropertyAccessException("actionType");
            }
            return actionType;
        }

        @g
        public final String b() {
            String str = this.f16885d;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("analyticsResponsePayload");
            }
            return str;
        }

        @h
        public final EventType c() {
            return this.f16887f;
        }

        @h
        public final String d() {
            return this.f16893l;
        }

        @g
        public final String e() {
            String str = this.f16883b;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loggedInUserId");
            }
            return str;
        }

        @g
        public final String f() {
            String str = this.f16888g;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaId");
            }
            return str;
        }

        @h
        public final String g() {
            return this.f16895n;
        }

        public final int h() {
            return this.f16894m;
        }

        @h
        public final String i() {
            return this.f16884c;
        }

        @h
        public final String j() {
            return this.f16886e;
        }

        @h
        public final String k() {
            return this.f16891j;
        }

        @h
        public final String l() {
            return this.f16889h;
        }

        public final long m() {
            return this.f16892k;
        }

        @g
        public final String n() {
            String str = this.f16882a;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("userId");
            }
            return str;
        }

        public final void o(@g ActionType actionType) {
            Intrinsics.checkNotNullParameter(actionType, "<set-?>");
            this.f16890i = actionType;
        }

        public final void p(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16885d = str;
        }

        public final void q(@h EventType eventType) {
            this.f16887f = eventType;
        }

        public final void r(@h String str) {
            this.f16893l = str;
        }

        public final void s(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16883b = str;
        }

        public final void t(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16888g = str;
        }

        public final void u(@h String str) {
            this.f16895n = str;
        }

        public final void v(int i4) {
            this.f16894m = i4;
        }

        public final void w(@h String str) {
            this.f16884c = str;
        }

        public final void x(@h String str) {
            this.f16886e = str;
        }

        public final void y(@h String str) {
            this.f16891j = str;
        }

        public final void z(@h String str) {
            this.f16889h = str;
        }
    }

    @g
    public final LinkedList<a> a() {
        return this.f16881a;
    }

    @g
    public final a b(@g String userId, @g String loggedInUserId, @h String str, @g String analyticsResponsePayload, @h String str2, @h EventType eventType, @g String mediaId, @h String str3, @g ActionType actionType, @h String str4, @h String str5, int i4, @h String str6) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(loggedInUserId, "loggedInUserId");
        Intrinsics.checkNotNullParameter(analyticsResponsePayload, "analyticsResponsePayload");
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        Intrinsics.checkNotNullParameter(actionType, "actionType");
        a pollFirst = this.f16881a.pollFirst();
        if (pollFirst == null) {
            pollFirst = new a();
        }
        a aVar = pollFirst;
        aVar.C(userId, loggedInUserId, str, analyticsResponsePayload, str2, eventType, mediaId, str3, actionType, str4, str5, i4, str6);
        return aVar;
    }

    public final void c(@g a eventWrapper) {
        Intrinsics.checkNotNullParameter(eventWrapper, "eventWrapper");
        this.f16881a.add(eventWrapper);
    }
}
